#include "definitions.h"
#include <limits.h>         // for CHAR_BIT
#include <Keypad.h>  // for class definition, etc.
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include "plib_port.h"
#include "Segment.h"
#include "app.h"


extern unsigned long millis ();
unsigned long elapsed_ms(unsigned long prev_millis,unsigned long now);

#define LOW     0
#define HIGH    1

const char keyMap_[] = {INDEX,INCREMENT,SHIFT,ENTER};     // array mapping key numbers to a character (eg. 0,0 is 'A')
const uint8_t rowPins_[] = {PORT_PIN_PA10,PORT_PIN_PA11}; // array of row pin numbers
const uint8_t colPins_[]= {PORT_PIN_PA14,PORT_PIN_PA15};; // array of column pin numbers
uint8_t numRows_ = 2;
uint8_t numCols_ =2;
bool enablePullups_ = true;
uint8_t totalKeys_ = 4;      // numRows_ * numCols_
char * lastKeySetting_;  // bitmap of last setting of each key
unsigned long * lastKeyTime_;   // when each key was last changed
unsigned long debounce_Time_;   // how long to debounce for
// event handlers (callback functions)
keyHandler keyDownHandler_;  // handler for keydown event
keyHandler keyUpHandler_;    // handler for keyup event
rowHandler startRowHandler_; // handler called at the start of each row
rowHandler endRowHandler_;   // handler called at the end of each row
colHandler readHandler_;     // handler for reading a column
extern void PinWrite(PORT_PIN pin, uint8_t val);

  
void setKeyDownHandler    (keyHandler handler)  {
    keyDownHandler_   = handler; 
}  // handle key down

void setKeyUpHandler      (keyHandler handler)  {
    keyUpHandler_     = handler;
}  // handle key up

void setRowHandlers       (rowHandler start, rowHandler end)
{
    startRowHandler_  = start;
    endRowHandler_    = end;
}  // row handlers

void setColumnReadHandler (colHandler handler)
{
    readHandler_      = handler; 
}  // read a column

void setDebounceTime      (const unsigned long debounce_Time) 
{
    debounce_Time_ = debounce_Time; 
}

int readPin (uint8_t pin){
    return PORT_PinRead(pin);
}
// constructor
bool debounce_restart;
void Keypad_Matrix_construct (void)
{
    totalKeys_          = numRows_ * numCols_;
    lastKeySetting_     = NULL;
    lastKeyTime_        = NULL;
    debounce_Time_      = 20;  // milliseconds
    debounce_restart    = false;
    // no handlers yet
    keyDownHandler_     = NULL;
    keyUpHandler_       = NULL;
    startRowHandler_    = startRow;
    endRowHandler_      = endRow;
    // default to doing a digitalRead
    readHandler_        = readPin;
    
    setKeyDownHandler(keyPressHandler);
    setKeyUpHandler(keyReleaseHandler);
    Keypad_begin ();
} // end of Keypad_Matrix

void Keypad_Matrix_destruct ()
{
    if (lastKeySetting_)
        free (lastKeySetting_);
    if (lastKeyTime_)
        free (lastKeyTime_);
} // end ~Keypad_Matrix

void Keypad_begin ()
{
    // if begin() already called, don't allocate memory again
    if (lastKeySetting_ != NULL)
        return;

    // allocate one bit per key, rounded up to next byte
    lastKeySetting_ = (char *) calloc ((totalKeys_ + CHAR_BIT - 1) / CHAR_BIT, 1);
    
    // allocate an unsigned long for the time the key last changed, for each key
    if (lastKeySetting_ != NULL)
        lastKeyTime_  = (unsigned long *) calloc (totalKeys_, sizeof (unsigned long));

    // give up if we couldn't allocate memory for both arrays
    if (lastKeyTime_ == NULL)
    {
        if (lastKeySetting_)
            free (lastKeySetting_);
        return;
    }
} // end of begin

void Keypad_scan ()
{
    uint8_t keyNumber = 0;          // current key number
    unsigned long now = millis ();  // for debouncing
    char keyChanged [(totalKeys_ + CHAR_BIT - 1) / CHAR_BIT];  // remember which ones changed
    memset (keyChanged, 0, sizeof (keyChanged));    // nothing yet
    bool changed = false;                           // did anything change? Not yet.

    // if begin has not been called then memory hasn't been allocated for the arrays
    if (lastKeySetting_   == NULL ||
        startRowHandler_  == NULL ||  // we need these handlers
        endRowHandler_    == NULL ||
        readHandler_      == NULL)
        return;
  // check each row
    for (uint8_t row = 0; row < numRows_; row++)
    {
        // handle start of a row
        // default: set that row to OUTPUT and LOW
        startRowHandler_ (rowPins_ [row]);

        // check each column to see if the switch has driven that column LOW
        for (uint8_t col = 0; col < numCols_; col++)
        {
            bool keyState = readHandler_ (colPins_ [col]) == LOW; // true means pressed
          // debounce - ignore if not enough time has elapsed since last change
            if (elapsed_ms(lastKeyTime_[keyNumber],now) >= debounce_Time_)
            {
                if (keyState != (BITTEST (lastKeySetting_, keyNumber) != 0)) // changed?
                {
                    lastKeyTime_ [keyNumber] = now;  // remember time it changed
                    changed = true;                  // remember something changed
                    BITSET (keyChanged, keyNumber);  // remember this key changed

                    // remember new state
                    if (keyState)
                        BITSET   (lastKeySetting_, keyNumber);
                    else
                        BITCLEAR (lastKeySetting_, keyNumber);
                }  // if key state has changed
            }  // debounce time up
            
            if (keyState == (BITTEST (lastKeySetting_, keyNumber) != 0)) // changed?
            {
                lastKeyTime_ [keyNumber] = now;  // remember time it changed                  
            }
            else
            {
                
            }
            
            keyNumber++;
        } // end of for each column

        // handle end of a row
        // default: put row back to high-impedance (input)
        endRowHandler_ (rowPins_ [row]);
    }  // end of for each row

  // If anything changed call the handlers.
  // We do this now in case the keys aren't polled very frequently. We have now
  // detected all the changes (first) before calling any handlers, in case the
  // handler wants to know of combinations like Ctrl+Z.
    if (changed)
    {
        // do key-ups first to make sure that combinations handled by external code are correct
        for (uint8_t i = 0; i < totalKeys_; i++)
        {
            if (BITTEST (keyChanged, i) != 0)  // did this one change?
            {
                if (BITTEST (lastKeySetting_, i) == 0)  // is now up
                    if (keyUpHandler_)
                        keyUpHandler_ (keyMap_ [i]);
            }  // end of this key changed
        }  // end of for each key

        // now do key-downs
        for (uint8_t i = 0; i < totalKeys_; i++)
        {
            if (BITTEST (keyChanged, i) != 0)  // did this one change?
            {
                if (BITTEST (lastKeySetting_, i) != 0)  // is now down
                    if (keyDownHandler_)
                        keyDownHandler_ (keyMap_ [i]);
            }  // end of this key changed
        }  // end of for each key
    }  // end of something changed

} // end of scan

bool isKeyDown (const char which)
{
    // if begin has not been called then memory hasn't been allocated for the arrays
    if (lastKeySetting_ == NULL)
        return false;

    // locate the desired key by a linear scan
    //  - this is a bit inefficient, but for a 16-key keypad it will be pretty fast
    for (uint8_t i = 0; i < totalKeys_; i++)
    {
        if (keyMap_ [i] == which)
            return BITTEST (lastKeySetting_, i) != 0;  // true if down
    }
    return false;   // that key isn't known
}     // end of isKeyDown

// default handler for starting a row
void startRow (uint8_t rowPin)
{
    // set that row to OUTPUT and LOW
    PORT_PinOutputEnable(rowPin);
    PinWrite(rowPin, LOW);

}   // end of startRow

// default handler for ending a row
void endRow (uint8_t rowPin)
{
    // put row back to high-impedance (input)
    PORT_PinInputEnable(rowPin);
} // end of startRow

//https://github.com/nickgammon/Keypad_Matrix/blob/master/Keypad_Matrix.cpp

/********************************************************************************
 Key Pad Customization for our Application
 *****************************************************************************/

KeyState keySt[NUM_KEYS] = {RELEASED,RELEASED,RELEASED,RELEASED};
const uint8_t keyDebounceBValue = 10; /* Multiples of 20ms */
uint8_t keyOverallDebounce[NUM_KEYS];
uint8_t keyMapAfterDebounce;


// *****************************************************************************
// Key Press Handlers
// *****************************************************************************

void keyPressHandler (const char key){
    switch(key){
        case INDEX:
            keyOverallDebounce[INDEX] = 8;
            keySt[INDEX] = PRESSED;
            break;
        case ENTER:
            keyOverallDebounce[ENTER] = 8;
            keySt[ENTER] = PRESSED;
            break;
        case INCREMENT:
            keyOverallDebounce[INCREMENT] = 8;
            keySt[INCREMENT] = PRESSED;
            if(keySt[SHIFT] == PRESSED && 
                    keyOverallDebounce[SHIFT]!=0){
                keyOverallDebounce[SHIFT] = 250; 
                keyOverallDebounce[INCREMENT] = 250;
            }
            break;
        case SHIFT:
            keyOverallDebounce[SHIFT] = 8;
            keySt[SHIFT] = PRESSED;
            if(keySt[INCREMENT] == PRESSED && 
                    keyOverallDebounce[INCREMENT]!=0){
                keyOverallDebounce[INCREMENT] = 250;
                keyOverallDebounce[SHIFT] = 250;
            }
            break;
    }
}

void keyReleaseHandler (const char key){
    switch(key){
        case INDEX:
            keySt[INDEX] = RELEASED;
            keyOverallDebounce[INDEX] = 8;
            break;
        case ENTER:
            keySt[ENTER] = RELEASED;
            keyOverallDebounce[ENTER] = 8;
            break;
        case INCREMENT:
            keySt[INCREMENT] = RELEASED;
            keyOverallDebounce[INCREMENT] = 8;
            if(keySt[SHIFT] == PRESSED)
                keySt[SHIFT] = RELEASED;
            break;
        case SHIFT:
            keySt[SHIFT] = RELEASED;
            keyOverallDebounce[SHIFT] = 8;
            if(keySt[INCREMENT] == PRESSED)
                keySt[INCREMENT] = RELEASED;
            break;
    }
}

void keyDebounceMgr (void)
{
    uint8_t i;
    for(i=0;i<NUM_KEYS;i++){
        if(keySt[i] == PRESSED){
            if(keyOverallDebounce[i]>0){
                keyOverallDebounce[i]--;
                if(!keyOverallDebounce[i])
                    keyMapAfterDebounce |= BIT(i);
            }
        }
    }
    if(keyMapAfterDebounce)
        keyFunctionHandler();
}

void keyFunctionHandler()
{
    switch(keyMapAfterDebounce)
    {
        case (BIT(SHIFT) | BIT(INCREMENT)):
            keyMapAfterDebounce &= ~(BIT(SHIFT) | BIT(INCREMENT));
            event_receiver (PROGRAM_MODE_ENTER);
            //setChars("POn-E");
            break;
        case BIT(SHIFT):
            keyMapAfterDebounce &= ~BIT(SHIFT);
            event_receiver (SHIFT_KEY_PRESSED);
            //setChars("SHIFt");
            break;
        case BIT(INCREMENT):
            keyMapAfterDebounce &= ~BIT(INCREMENT);
            event_receiver (INCREMENT_KEY_PRESSED);
            //setChars("InCrE");
            break;
        case BIT(ENTER):
            keyMapAfterDebounce &= ~BIT(ENTER);
            event_receiver (ENTER_KEY_PRESSED);
            //setChars("EntEr");
            break;
        case BIT(INDEX):
            keyMapAfterDebounce &= ~BIT(INDEX);
            //setChars("IndEX");
            break;            
        default:
            keyMapAfterDebounce &= ~keyMapAfterDebounce;
            break;
    }
}
