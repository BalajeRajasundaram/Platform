#include "stdbool.h"
#include "Segment.h"
#include "plib_port.h"
#include <string.h>
#include "stdlib.h"

#include "app.h"

#define BLANK_IDX 36 // Must match with 'digitCodeMap'
#define DASH_IDX 37
#define PERIOD_IDX 38
#define ASTERISK_IDX 39
#define UNDERSCORE_IDX 40


uint8_t digitOnVal,digitOffVal,segmentOnVal,segmentOffVal;
bool resOnSegments, updateWithDelays, leadingZeros;
//uint8_t digitPins[MAXNUMDIGITS]={0,1,2,3,4,5,6,7};
uint8_t digitPins[MAXNUMDIGITS]={0,1,2,3,4,5,6,7};

uint8_t segmentPins[8] = {PORT_PIN_PA00,1,2,3,4,5,6,7}; /*PA00 to PA07*/
uint8_t numDigits;
uint8_t numSegments;
uint8_t prevUpdateIdx; // The previously updated segment or digit
uint8_t digitCodes[MAXNUMDIGITS]; // The active setting of each segment of each digit
uint32_t prevUpdateTime; // The time (millis()) when the display was last updated
uint16_t ledOnTime; // The time (us) to wait with LEDs on
uint16_t waitOffTime; // The time (us) to wait with LEDs off
bool waitOffActive; // Whether  the program is waiting with LEDs off


static const int32_t powersOf10[] = {
  1, // 10^0
  10,
  100,
  1000,
  10000,
  100000,
  1000000,
  10000000,
  100000000,
  1000000000
}; // 10^9

static const int32_t powersOf16[] = {
  0x1, // 16^0
  0x10,
  0x100,
  0x1000,
  0x10000,
  0x100000,
  0x1000000,
  0x10000000
}; // 16^7

// digitCodeMap indicate which segments must be illuminated to display
// each number.
static const uint8_t digitCodeMap[] = {
  // GFEDCBA  Segments      7-segment map:
  0b00111111, // 0   "0"          AAA
  0b00000110, // 1   "1"         F   B
  0b01011011, // 2   "2"         F   B
  0b01001111, // 3   "3"          GGG
  0b01100110, // 4   "4"         E   C
  0b01101101, // 5   "5"         E   C
  0b01111101, // 6   "6"          DDD
  0b00000111, // 7   "7"
  0b01111111, // 8   "8"
  0b01101111, // 9   "9"
  0b01110111, // 65  'A'
  0b01111100, // 66  'b'
  0b00111001, // 67  'C'
  0b01011110, // 68  'd'
  0b01111001, // 69  'E'
  0b01110001, // 70  'F'
  0b00111101, // 71  'G'
  0b01110110, // 72  'H'
  0b00110000, // 73  'I'
  0b00001110, // 74  'J'
  0b01110110, // 75  'K'  Same as 'H'
  0b00111000, // 76  'L'
  0b00000000, // 77  'M'  NO DISPLAY
  0b01010100, // 78  'n'
  0b00111111, // 79  'O'
  0b01110011, // 80  'P'
  0b01100111, // 81  'q'
  0b01010000, // 82  'r'
  0b01101101, // 83  'S'
  0b01111000, // 84  't'
  0b00111110, // 85  'U'
  0b00111110, // 86  'V'  Same as 'U'
  0b00011101, // 87  'W'  nu
  0b01110110, // 88  'X'  Same as 'H'
  0b01101110, // 89  'y'
  0b01011011, // 90  'Z'  Same as '2'
  0b00000000, // 32  ' '  BLANK
  0b01000000, // 45  '-'  DASH
  0b10000000, // 46  '.'  PERIOD
  0b01100011, // 42 '*'  DEGREE ..
  0b00001000, // 95 '_'  UNDERSCORE
};

// Constant pointers to constant data
const uint8_t * const numeralCodes = digitCodeMap;
const uint8_t * const alphaCodes = digitCodeMap + 10;


void PinWrite(PORT_PIN pin, uint8_t val)
{
    if(val)
        PORT_PinSet(pin);
    else
        PORT_PinClear(pin);
}

void segmentWrite(PORT_PIN pin, uint8_t val)
{
    PinWrite(pin, val);
}

void DigitWrite(uint8_t digit, uint8_t val)
{
    if(val != digitOnVal){
            PinWrite(PORT_PIN_PA25, digitOffVal);
            PinWrite(PORT_PIN_PA27, digitOffVal);
            PinWrite(PORT_PIN_PA28, digitOffVal);
        return;
    }
    
    switch(digit){
        case 0:
            PinWrite(PORT_PIN_PA25, digitOffVal);
            PinWrite(PORT_PIN_PA27, digitOffVal);
            PinWrite(PORT_PIN_PA28, digitOffVal);
            break;
        case 1:
            PinWrite(PORT_PIN_PA25, digitOnVal);
            PinWrite(PORT_PIN_PA27, digitOffVal);
            PinWrite(PORT_PIN_PA28, digitOffVal);
            break;
        case 2:
            PinWrite(PORT_PIN_PA25, digitOffVal);
            PinWrite(PORT_PIN_PA27, digitOnVal);
            PinWrite(PORT_PIN_PA28, digitOffVal); 
            break;
        case 3:
            PinWrite(PORT_PIN_PA25, digitOnVal);
            PinWrite(PORT_PIN_PA27, digitOnVal);
            PinWrite(PORT_PIN_PA28, digitOffVal);
            break;
        case 4:
            PinWrite(PORT_PIN_PA25, digitOffVal);
            PinWrite(PORT_PIN_PA27, digitOffVal);
            PinWrite(PORT_PIN_PA28, digitOnVal); 
            break;
    }
}

// SevSeg Constructor
/******************************************************************************/
void SevSeg_init() {
  // Initial value
  ledOnTime = 200; // Corresponds to a brightness of 100
  waitOffTime = 0;
  waitOffActive = false;
  numDigits = 5;
  prevUpdateIdx = 0;
  prevUpdateTime = 0;
  resOnSegments = 1;
  updateWithDelays = 1;
  begin(2, numDigits, digitPins, segmentPins, resOnSegments,
          updateWithDelays, leadingZeros, false);
}


// begin
/******************************************************************************/
// Saves the input pin numbers to the class and sets up the pins to be used.
// If you use current-limiting resistors on your segment pins instead of the
// digit pins, then set resOnSegments as true.
// Set updateWithDelays to true if you want to use the 'pre-2017' update method
// In that case, the processor is occupied with delay functions while refreshing
// leadingZerosIn indicates whether leading zeros should be displayed
// disableDecPoint is true when the decimal point segment is not connected, in
// which case there are only 7 segments.
void begin(uint8_t hardwareConfig, uint8_t numDigitsIn, const uint8_t digitPinsIn[],
                   const uint8_t segmentPinsIn[], bool resOnSegmentsIn,
                   bool updateWithDelaysIn, bool leadingZerosIn, bool disableDecPoint) {

  resOnSegments = resOnSegmentsIn;
  updateWithDelays = updateWithDelaysIn;
  leadingZeros = leadingZerosIn;

  numDigits = numDigitsIn;
  numSegments = disableDecPoint ? 7 : 8; // Ternary 'if' statement
  //Limit the max number of digits to prevent overflowing
  if (numDigits > MAXNUMDIGITS) numDigits = MAXNUMDIGITS;

  switch (hardwareConfig) {

    case 0: // Common cathode
      digitOnVal = LOW;
      segmentOnVal = HIGH;
      break;

    case 1: // Common anode
      digitOnVal = HIGH;
      segmentOnVal = LOW;
      break;

    case 2: // With active-high, low-side switches (most commonly N-type FETs)
      digitOnVal = HIGH;
      segmentOnVal = HIGH;
      break;

    case 3: // With active low, high side switches (most commonly P-type FETs)
      digitOnVal = LOW;
      segmentOnVal = LOW;
      break;
  }

  // define the Off-Values depending on the On-Values
  if (digitOnVal == HIGH){
    digitOffVal = LOW;
  } else {
    digitOffVal = HIGH;
  }
  // define the Off-Values depending on the On-Values
  if (segmentOnVal == HIGH){
    segmentOffVal = LOW;
  } else {
    segmentOffVal = HIGH;
  }

  // Save the input pin numbers to library variables
  for (uint8_t segmentNum = 0 ; segmentNum < numSegments ; segmentNum++) {
    segmentPins[segmentNum] = segmentPinsIn[segmentNum];
  }

  for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {
    digitPins[digitNum] = digitPinsIn[digitNum];
    //PORT_PinOutputEnable(digitPins[digitNum]);
  }

  // Set the pins as outputs, and turn them off

    DigitWrite(0, digitOffVal);

    for (uint8_t segmentNum = 0 ; segmentNum < numSegments ; segmentNum++) {
        PORT_PinOutputEnable(segmentPins[segmentNum]);
       //PORT_PinPeripheralFunctionConfig(segmentPins[segmentNum],PERIPHERAL_FUNCTION_A);
      segmentWrite(segmentPins[segmentNum], segmentOffVal);
    }

    blank(); // Initialise the display
}

void delayMicroseconds(uint16_t dTime)
{
//    volatile uint16_t temp = 0xFFFF;
//    for(;dTime > 0; dTime--)
//    {
//        for(;temp>0;temp--);
//        for(;temp>0;temp--);
//        for(;temp>0;temp--);
//    }
}
// refreshDisplay
/******************************************************************************/
// Turns on the segments specified in 'digitCodes[]'
// There are 4 versions of this function, with the choice depending on the
// location of the current-limiting resistors, and whether or not you wish to
// use 'update delays' (the standard method until 2017).
// For resistors on *digits* we will cycle through all 8 segments (7 + period),
//    turning on the *digits* as appropriate for a given segment, before moving on
//    to the next segment.
// For resistors on *segments* we will cycle through all __ # of digits,
//    turning on the *segments* as appropriate for a given digit, before moving on
//    to the next digit.
// If using update delays, refreshDisplay has a delay between each digit/segment
//    as it cycles through. It exits with all LEDs off.
// If not using updateDelays, refreshDisplay exits with a single digit/segment
//    on. It will move to the next digit/segment after being called again (if
//    enough time has passed).

void refreshDisplay() {

  if (!updateWithDelays) {
    uint32_t us = 1000; //workaround for compilation //micros();

    // Exit if it's not time for the next display change
    if (waitOffActive) {
      if ((us - prevUpdateTime) < waitOffTime) return;
    }
    else {
      if ((us - prevUpdateTime) < ledOnTime) return;
    }
    prevUpdateTime = us;

    if (!resOnSegments) {
      /**********************************************/
      // RESISTORS ON DIGITS, UPDATE WITHOUT DELAYS

      if (waitOffActive) {
        waitOffActive = false;
      }
      else {
        // Turn all lights off for the previous segment
        segmentOff(prevUpdateIdx);

        if (waitOffTime) {
          // Wait a delay with all lights off
          waitOffActive = true;
          return;
        }
      }

      prevUpdateIdx++;
      if (prevUpdateIdx >= numSegments) prevUpdateIdx = 0;

      // Illuminate the required digits for the new segment
      segmentOn(prevUpdateIdx);
    }
    else {
      /**********************************************/
      // RESISTORS ON SEGMENTS, UPDATE WITHOUT DELAYS

      if (waitOffActive) {
        waitOffActive = false;
      }
      else {
        // Turn all lights off for the previous digit
        digitOff(prevUpdateIdx);

        if (waitOffTime) {
          // Wait a delay with all lights off
          waitOffActive = true;
          return;
        }
      }

      prevUpdateIdx++;
      if (prevUpdateIdx >= numDigits) prevUpdateIdx = 0;

      // Illuminate the required segments for the new digit
      digitOn(prevUpdateIdx);
    }
  }

  else {
    if (!resOnSegments) {
      /**********************************************/
      // RESISTORS ON DIGITS, UPDATE WITH DELAYS
      for (uint8_t segmentNum = 0 ; segmentNum < numSegments ; segmentNum++) {

        // Illuminate the required digits for this segment
        segmentOn(segmentNum);

        // Wait with lights on (to increase brightness)
        delayMicroseconds(ledOnTime);

        // Turn all lights off
        segmentOff(segmentNum);

        // Wait with all lights off if required
        if (waitOffTime) delayMicroseconds(waitOffTime);
      }
    }
    else {
      /**********************************************/
      // RESISTORS ON SEGMENTS, UPDATE WITH DELAYS
      for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {

        // Illuminate the required segments for this digit
        digitOn(digitNum);

        // Wait with lights on (to increase brightness)
        delayMicroseconds(ledOnTime);

        // Turn all lights off
        digitOff(digitNum);

        // Wait with all lights off if required
        if (waitOffTime) delayMicroseconds(waitOffTime);
      }
    }
  }
}

// segmentOn
/******************************************************************************/
// Turns a segment on, as well as all corresponding digit pins
// (according to digitCodes[])
void segmentOn(uint8_t segmentNum) {
  segmentWrite(segmentPins[segmentNum], segmentOnVal);
  for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {
    if (digitCodes[digitNum] & (1 << segmentNum)) { // Check a single bit
      DigitWrite(digitPins[digitNum], digitOnVal);
    }
  }
}

// segmentOff
/******************************************************************************/
// Turns a segment off, as well as all digit pins
void segmentOff(uint8_t segmentNum) {
    DigitWrite(0,digitOffVal);
    segmentWrite(segmentPins[segmentNum], segmentOffVal);
}

// digitOn
/******************************************************************************/
// Turns a digit on, as well as all corresponding segment pins
// (according to digitCodes[])
void digitOn(uint8_t digitNum) {
  DigitWrite(digitPins[digitNum], digitOnVal);
  for (uint8_t segmentNum = 0 ; segmentNum < numSegments ; segmentNum++) {
    if (digitCodes[digitNum] & (1 << segmentNum)) { // Check a single bit
      segmentWrite(segmentPins[segmentNum], segmentOnVal);
    }
  }
}

// digitOff
/******************************************************************************/
// Turns a digit off, as well as all segment pins
void digitOff(uint8_t digitNum) {
  for (uint8_t segmentNum = 0 ; segmentNum < numSegments ; segmentNum++) {
    segmentWrite(segmentPins[segmentNum], segmentOffVal);
  }
  DigitWrite(0,digitOffVal);
  (void)digitNum;
}

// setBrightness
/******************************************************************************/
// Sets ledOnTime according to the brightness given. Standard brightness range
// is 0 to 100. Flickering is more likely at brightness > 100, and < -100.
// A positive brightness introduces a delay while the LEDs are on, and a
// negative brightness introduces a delay while the LEDs are off.
int16_t constrain(int16_t brightness, int16_t lowerlim, int16_t upperlim){
    if (brightness < lowerlim)
            return lowerlim;
    if (brightness > upperlim)
        return upperlim;
    return brightness;
}

void setBrightness(int16_t brightness) {
  brightness = constrain(brightness, -200, 200);
  if (brightness > 0) {
    ledOnTime = 2000; //map(brightness, 0, 100, 1, 2000);
    waitOffTime = 0;
    waitOffActive = false;
  }
  else {
    ledOnTime = 0;
    waitOffTime = 2000;// map(brightness, 0, -100, 1, 2000);
  }
}


// setNumber
/******************************************************************************/
// Receives an integer and passes it to 'setNewNum'.
void setNumber(int32_t numToShow, int8_t decPlaces, bool hex) { //int32_t
  setNewNum(numToShow, decPlaces, hex);
}

// setNumberF
/******************************************************************************/
// Receives a float, prepares it, and passes it to 'setNewNum'.
void setNumberF(float numToShow, int8_t decPlaces, bool hex) { //float
  int8_t decPlacesPos = constrain(decPlaces, 0, MAXNUMDIGITS);
  if (hex) {
    numToShow = numToShow * powersOf16[decPlacesPos];
  }
  else {
    numToShow = numToShow * powersOf10[decPlacesPos];
  }
  // Modify the number so that it is rounded to an integer correctly
  numToShow += (numToShow >= 0.f) ? 0.5f : -0.5f;
  setNewNum((int32_t)numToShow, (int8_t)decPlaces, hex);
}

// setNewNum
/******************************************************************************/
// Changes the number that will be displayed.
void setNewNum(int32_t numToShow, int8_t decPlaces, bool hex) {
  uint8_t digits[MAXNUMDIGITS];
  findDigits(numToShow, decPlaces, hex, digits);
  setDigitCodes(digits, decPlaces);
}


// setSegments
/******************************************************************************/
// Sets the 'digitCodes' that are required to display the desired segments.
// Using this function, one can display any arbitrary set of segments (like
// letters, symbols or animated cursors). See setDigitCodes() for common
// numeric examples.
//
// Bit-segment mapping:  0bHGFEDCBA
//      Visual mapping:
//                        AAAA          0000
//                       F    B        5    1
//                       F    B        5    1
//                        GGGG          6666
//                       E    C        4    2
//                       E    C        4    2        (Segment H is often called
//                        DDDD  H       3333  7      DP, for Decimal Point)
void setSegments(const uint8_t segs[]) {
  for (uint8_t digit = 0; digit < numDigits; digit++) {
    digitCodes[digit] = segs[digit];
  }
}

// setSegmentsDigit
/******************************************************************************/
// Like setSegments above, but only manipulates the segments for one digit
// digitNum is 0-indexed.
void setSegmentsDigit(const uint8_t digitNum, const uint8_t segs) {
  if (digitNum < numDigits) {
    digitCodes[digitNum] = segs;
  }
}

// getSegments
/******************************************************************************/
// Gets the 'digitCodes' of currently displayed segments.
// Using this function, one can get the current set of segments (placed
// elsewhere) and manipulate them to obtain effects, for example blink of
// only some digits.
// See setSegments() for bit-segment mapping
//
void getSegments(uint8_t segs[]) {
  for (uint8_t digit = 0; digit < numDigits; digit++) {
    segs[digit] = digitCodes[digit];
  }
}


char *strrev(char *str)
{
    if (!str || ! *str)
        return str;

    int i = strlen(str) - 1, j = 0;

    char ch;
    while (i > j)
    {
        ch = str[i];
        str[i] = str[j];
        str[j] = ch;
        i--;
        j++;
    }
    return str;
}
// setChars
/******************************************************************************/
// Displays the string on the display, as best as possible.
// Only alphanumeric characters plus '-' and ' ' are supported
void setChars(const char str[]) {
  //char strTemp[8];
  //char *str;
  
  for (uint8_t digit = 0; digit < numDigits; digit++) {
    digitCodes[digit] = 0;
    //strTemp[digit] = str1[digit];
  }
  //str = strrev((char *)strTemp);
  uint8_t strIdx = 0; // Current position within str[]
  for (uint8_t digitNum = 0; digitNum < numDigits; digitNum++) {
    char ch = str[strIdx];
    if (ch == '\0') break; // NULL string terminator
    if (ch >= '0' && ch <= '9') { // Numerical
      digitCodes[digitNum] = numeralCodes[ch - '0'];
    }
    else if (ch >= 'A' && ch <= 'Z') {
      digitCodes[digitNum] = alphaCodes[ch - 'A'];
    }
    else if (ch >= 'a' && ch <= 'z') {
      digitCodes[digitNum] = alphaCodes[ch - 'a'];
    }
    else if (ch == ' ') {
      digitCodes[digitNum] = digitCodeMap[BLANK_IDX];
    }
    else if (ch == '.') {
      digitCodes[digitNum] = digitCodeMap[PERIOD_IDX];
    }
    else if (ch == '*') {
      digitCodes[digitNum] = digitCodeMap[ASTERISK_IDX];
    }
    else if (ch == '_') {
      digitCodes[digitNum] = digitCodeMap[UNDERSCORE_IDX];
    }
    else {
      // Every unknown character is shown as a dash
      digitCodes[digitNum] = digitCodeMap[DASH_IDX];
    }

    strIdx++;
    // Peek at next character. If it's a period, add it to this digit
    if (str[strIdx] == '.') {
      digitCodes[digitNum] |= digitCodeMap[PERIOD_IDX];
      strIdx++;
    }
  }
}

// blank
/******************************************************************************/
void blank(void) {
  for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {
    digitCodes[digitNum] = digitCodeMap[BLANK_IDX];
  }
  segmentOff(0);
  digitOff(0);
}

// findDigits
/******************************************************************************/
// Decides what each digit will display.
// Enforces the upper and lower limits on the number to be displayed.
// digits[] is an output
void findDigits(int32_t numToShow, int8_t decPlaces, bool hex, uint8_t digits[]) {
  const int32_t * powersOfBase = hex ? powersOf16 : powersOf10;
  const int32_t maxNum = powersOfBase[numDigits] - 1;
  const int32_t minNum = -(powersOfBase[numDigits - 1] - 1);

  // If the number is out of range, just display dashes
  if (numToShow > maxNum || numToShow < minNum) {
    for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {
      digits[digitNum] = DASH_IDX;
    }
  }
  else {
    uint8_t digitNum = 0;

    // Convert all number to positive values
    if (numToShow < 0) {
      digits[0] = DASH_IDX;
      digitNum = 1; // Skip the first iteration
      numToShow = -numToShow;
    }

    // Find all digits for base's representation, starting with the most
    // significant digit
    for ( ; digitNum < numDigits ; digitNum++) {
      int32_t factor = powersOfBase[numDigits - 1 - digitNum];
      digits[digitNum] = numToShow / factor;
      numToShow -= digits[digitNum] * factor;
    }

    // Find unnnecessary leading zeros and set them to BLANK
    if (decPlaces < 0) decPlaces = 0;
    if (!leadingZeros) {
      for (digitNum = 0 ; digitNum < (numDigits - 1 - decPlaces) ; digitNum++) {
        if (digits[digitNum] == 0) {
          digits[digitNum] = BLANK_IDX;
        }
        // Exit once the first non-zero number is encountered
        else if (digits[digitNum] <= 9) {
          break;
        }
      }
    }

  }
}


// setDigitCodes
/******************************************************************************/
// Sets the 'digitCodes' that are required to display the input numbers
void setDigitCodes(const uint8_t digits[], int8_t decPlaces) {

  // Set the digitCode for each digit in the display
  for (uint8_t digitNum = 0 ; digitNum < numDigits ; digitNum++) {
    digitCodes[digitNum] = digitCodeMap[digits[digitNum]];
    // Set the decimal point segment
    if (decPlaces >= 0) {
      if (digitNum == numDigits - 1 - decPlaces) {
        digitCodes[digitNum] |= digitCodeMap[PERIOD_IDX];
      }
    }
  }
}



void show_integers(int i){
    char a[NUM_ALPHA_NUMERIC_DIGITS] = "     ";
    uint8_t idx;
    if(i > 9999){
        idx = 0;
    }
    else if(i > 999){
        idx = 1;
    }
    else if(i > 99){
        idx = 2;
    }
    else if(i > 9){
        idx = 3;
    }
    else {
        idx = 4;
    }        
    itoa(i,&a[idx],10);
    copy_string(a);
    setChars(a);
}


/// END ///