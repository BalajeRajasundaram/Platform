#include "definitions.h"
#define MAXNUMDIGITS 8

#define COMMON_CATHODE 0
#define COMMON_ANODE 1
#define N_TRANSISTORS 2
#define P_TRANSISTORS 3
#define NP_COMMON_CATHODE 1
#define NP_COMMON_ANODE 0

#define HIGH    1
#define LOW     0

void refreshDisplay();
void begin(uint8_t hardwareConfig, uint8_t numDigitsIn, const uint8_t digitPinsIn[],\
        const uint8_t segmentPinsIn[], bool resOnSegmentsIn,\
        bool updateWithDelaysIn, bool leadingZerosIn,\
        bool disableDecPoint);
void setBrightness(int16_t brightnessIn); // A number from 0..100

void setNumber(int32_t numToShow, int8_t decPlaces, bool hex);
void setNumberF(float numToShow, int8_t decPlaces, bool hex);

void setSegments(const uint8_t segs[]);
void getSegments(uint8_t segs[]);
void setSegmentsDigit(const uint8_t digitNum, const uint8_t segs);
void setChars(const char str[]);
void blank(void);

void setNewNum(int32_t numToShow, int8_t decPlaces, bool hex);
void findDigits(int32_t numToShow, int8_t decPlaces, bool hex, uint8_t digits[]);
void setDigitCodes(const uint8_t nums[], int8_t decPlaces);
void segmentOn(uint8_t segmentNum);
void segmentOff(uint8_t segmentNum);
void digitOn(uint8_t digitNum);
void digitOff(uint8_t digitNum);

void SevSeg_init();