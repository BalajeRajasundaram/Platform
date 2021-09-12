/*
 Keypad_Matrix.h
 Author: Nick Gammon
 Date:   20 February 2018
 PERMISSION TO DISTRIBUTE
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 and associated documentation files (the "Software"), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
 subject to the following conditions:
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 LIMITATION OF LIABILITY
 The software is provided "as is", without warranty of any kind, express or implied,
 including but not limited to the warranties of merchantability, fitness for a particular
 purpose and noninfringement. In no event shall the authors or copyright holders be liable
 for any claim, damages or other liability, whether in an action of contract,
 tort or otherwise, arising from, out of or in connection with the software
 or the use or other dealings in the software.
*/

typedef enum {
    PRESSED,
    RELEASED,
}KeyState;

typedef enum{
    INDEX = 0,
    SHIFT = 1,
    INCREMENT=2,
    ENTER=3,
    NUM_KEYS = 4
}KEYS;

typedef void (*keyHandler) (const char which);
typedef int  (*colHandler) (uint8_t);
typedef void (*rowHandler) (uint8_t);

#define makeKeymap(x) ((const char*)x)  // for passing a multi-dimensional array to the constructor
void Keypad_Matrix_construct (void);
void keyFunctionHandler();
void keyDebounceMgr (void);
void keyReleaseHandler (const char key);
void keyPressHandler (const char key);
void setKeyDownHandler    (keyHandler handler);
void setKeyUpHandler      (keyHandler handler);
extern  const char keyMap_[];     // array mapping key numbers to a character (eg. 0,0 is 'A')
extern const uint8_t rowPins_[]; // array of row pin numbers
extern const uint8_t colPins_[]; // array of column pin numbers
extern uint8_t numRows_;
extern uint8_t numCols_;
extern bool enablePullups_;
extern uint8_t totalKeys_;      // numRows_ * numCols_
extern char * lastKeySetting_;  // bitmap of last setting of each key
extern unsigned long * lastKeyTime_;   // when each key was last changed
extern unsigned long debounce_Time_;   // how long to debounce for
// event handlers (callback functions)
extern keyHandler keyDownHandler_;  // handler for keydown event
extern keyHandler keyUpHandler_;    // handler for keyup event
extern rowHandler startRowHandler_; // handler called at the start of each row
extern rowHandler endRowHandler_;   // handler called at the end of each row
extern colHandler readHandler_;     // handler for reading a column

// default handlers for starting and ending a row
void startRow (uint8_t rowPin);
void endRow   (uint8_t rowPin);

// constructor
void Keypad_Matrix (void);
// destructor
void Keypad_Matrix (void);


// public functions
void Keypad_begin ();        // call to initialize (set pullups, allocate memory)
void Keypad_scan ();         // call periodically to scan the keys
bool isKeyDown            (const char which);  // see if a certain key is down


// See: http://c-faq.com/misc/bitsets.html
#define BIT(x)  (1<<x)
#define BITMASK(b) (1 << ((b) % CHAR_BIT))
#define BITSLOT(b) ((b) / CHAR_BIT)
#define BITSET(a, b) ((a)[BITSLOT(b)] |= BITMASK(b))
#define BITCLEAR(a, b) ((a)[BITSLOT(b)] &= ~BITMASK(b))
#define BITTEST(a, b) ((a)[BITSLOT(b)] & BITMASK(b))