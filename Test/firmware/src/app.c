#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "config/default/peripheral/tc/plib_tc_common.h"
#include "Segment.h"
#include "Keypad.h"
#include "app.h"
#include "string.h"

extern const char default_pwd[];
unsigned long millis ();
unsigned long elapsed_ms(unsigned long prev_millis, unsigned long now);
void run_sm();
void prog_sm();

/**Extern from Segment.c
 Extern from Keypad.c*/
extern uint8_t numDigits;

typedef enum{
    RUN,
    PROG,
}PARENT;

typedef enum{
    MANUFACT_PAGE,
    RUN_MODE_PARAM_PAGE,
    
    /***Prog Mode States*/
    PROG_MODE_FRONT_PAGE,
    PWD_FRONT_PAGE,
    PWD_ENTER_PAGE,
    PWD_VALIDATE_STATE,
            
    PWD_FAIL_STATE,
    
}STATE;

typedef enum{
    
    MANUFACT_PAGE_SHOW,
    MANUFACT_PAGE_WAIT,
    GOTO_RUN_MODE_PARAM_PAGE,
    RUN_MODE_PARAM_SHOW,
            
    /**Prog Mode Sub states**/
    PROG_MODE_SHOW,
    PROG_MODE_FRONT_WAIT,
    GOTO_PWD_FRONT_PAGE,
            
    PWD_FRONT_PAGE_SHOW,
    PWD_FRONT_PAGE_WAIT,
    GOTO_PWD_ENTER_PAGE,
            
    PWD_ENTER_PAGE_SHOW,
    PWD_EDIT_PAGE,
    PWD_BLINK_START_PAGE,
    PWD_BLINK_WAIT_PAGE,
    GOTO_PWD_VALIDATE_PAGE,            
            
    PWD_VALIDATE_SUBSTATE,
    PWD_FAIL_SUBSTATE,
    
    
}SUB_STATE;



uint8_t parent = RUN;
uint8_t state = MANUFACT_PAGE;
uint8_t substate = MANUFACT_PAGE_SHOW;
char ip_string[5] = {'-','-','-','-','-'}; 
uint8_t edit_position = 0;
uint8_t max_digits_enter = 0;
unsigned long prev_millis;
unsigned long now;

void event_receiver (uint8_t event)
{
    switch (event){
        case PROGRAM_MODE_ENTER:
            if(parent == RUN)
            {
                if(state == MANUFACT_PAGE ||
                        state == RUN_MODE_PARAM_PAGE)
                {
                    parent = PROG;
                    state = PROG_MODE_FRONT_PAGE;
                    substate = PROG_MODE_SHOW;
                }
            }
            else {
                    parent = RUN;
                    state = MANUFACT_PAGE;
                    substate = MANUFACT_PAGE_SHOW;                
            }
            break;
        case ENTER_KEY_PRESSED:
            if(state == PWD_ENTER_PAGE){
                state = PWD_VALIDATE_STATE;
                substate = PWD_VALIDATE_SUBSTATE;
            }
            break;
        case SHIFT_KEY_PRESSED:
            update_edit_position();
            if(state == PWD_ENTER_PAGE){
                 substate = PWD_ENTER_PAGE_SHOW;
            }
            break;
        case INCREMENT_KEY_PRESSED:
            update_ip_string_position();
            if(state == PWD_ENTER_PAGE){
                substate = PWD_ENTER_PAGE_SHOW;
            }
            break; 
    }
}

void sm()
{
    switch(parent)
    {
        case PROG:
            prog_sm();
            break;
        case RUN:
            run_sm();
            break;
    }
}

void run_sm()
{
    switch(state)
    {
        case MANUFACT_PAGE:
            if(substate == MANUFACT_PAGE_SHOW){
                setChars("POn-E");
                substate = MANUFACT_PAGE_WAIT;
                prev_millis = millis();
            }
            else if(MANUFACT_PAGE_WAIT == substate)
            {
                if(elapsed_ms(prev_millis, millis()) > 3000)
                    substate = GOTO_RUN_MODE_PARAM_PAGE;
            }
            else if(GOTO_RUN_MODE_PARAM_PAGE == substate){
                state = RUN_MODE_PARAM_PAGE;
                substate = RUN_MODE_PARAM_SHOW;
            }
            break;
        case RUN_MODE_PARAM_PAGE:
            if(substate == RUN_MODE_PARAM_SHOW) {
                setChars("  rUn");
                substate = MANUFACT_PAGE_WAIT;
            }
            break;
            
    }
}

void prog_sm(void)
{
    switch(state)
    {
        case PROG_MODE_FRONT_PAGE:
            if(substate == PROG_MODE_SHOW){
                setChars(" PrOG");
                substate = PROG_MODE_FRONT_WAIT;
                prev_millis = millis();
            }
            else if(PROG_MODE_FRONT_WAIT == substate){
                if(elapsed_ms(prev_millis, millis()) > 3000)
                    substate = GOTO_PWD_FRONT_PAGE;
            }
            else if(GOTO_PWD_FRONT_PAGE == substate){
                state = PWD_FRONT_PAGE;
                substate = PWD_FRONT_PAGE_SHOW;
            }
            break;
        case PWD_FRONT_PAGE:
            if(substate == PWD_FRONT_PAGE_SHOW){
                setChars("     ");
                setChars("  Prd");
                substate = PWD_FRONT_PAGE_WAIT;
                prev_millis = millis();
            }
            if(substate == PWD_FRONT_PAGE_WAIT){
                if(elapsed_ms(prev_millis, millis()) > 3000)
                    substate = GOTO_PWD_ENTER_PAGE;                
            }
                
            if(substate == GOTO_PWD_ENTER_PAGE){
                state = PWD_ENTER_PAGE;
                substate = PWD_ENTER_PAGE_SHOW; 
                ip_string[0] = ' ';
                ip_string[1] = '-';
                ip_string[2] = '-';
                ip_string[3] = '-';
                ip_string[4] = '-';
                max_digits_enter = 4;//Pwd is only 4 digits
                edit_position = (numDigits - max_digits_enter);
            }
            break;
        case    PWD_ENTER_PAGE:
            if (substate == PWD_ENTER_PAGE_SHOW){ 
                setChars (&ip_string[0]);
                substate = PWD_EDIT_PAGE;
                prev_millis = millis();
            }
            else if(substate == PWD_EDIT_PAGE){
                if(elapsed_ms(prev_millis, millis()) > 1000){
                    substate=PWD_BLINK_START_PAGE;
                    prev_millis = millis();
                }
            }
            else if(substate==PWD_BLINK_START_PAGE){
                char temp[5];
                temp[0] =   ip_string[0];
                temp[1] =   ip_string[1];
                temp[2] =   ip_string[2];
                temp[3] =   ip_string[3];
                temp[4] =   ip_string[4];
                temp[edit_position] = ' ';
                setChars (&temp[0]);
                substate = PWD_BLINK_WAIT_PAGE;

            }
            else if(substate == PWD_BLINK_WAIT_PAGE) {
                if(elapsed_ms(prev_millis, millis()) > 500){
                    substate = PWD_ENTER_PAGE_SHOW;
                }
            }
            
            break;
        case    PWD_VALIDATE_STATE:
            if(substate == PWD_VALIDATE_SUBSTATE) {
                if(0==memcmp(default_pwd,&ip_string[numDigits - max_digits_enter],
                        max_digits_enter)){
                    setChars("PASS");
                }
                else{
                    setChars("  Err");
                    
                    substate = PWD_FAIL_SUBSTATE;
                }
            }
            else if(substate == PWD_FAIL_SUBSTATE) {
                if(elapsed_ms(prev_millis, millis()) > 3000){
                    state = PWD_ENTER_PAGE;
                    substate = PWD_ENTER_PAGE_SHOW;
                }
            }
//            parent = RUN;
//            state = MANUFACT_PAGE;
//            substate = MANUFACT_PAGE_SHOW;
            break; 
    }
}

void update_edit_position(void)
{
    edit_position++;
    
    if(edit_position == (numDigits))
        edit_position= numDigits - max_digits_enter;        
}

void update_ip_string_position(void)
{
    if(ip_string[edit_position] == '-' ||
            ip_string[edit_position] == '9')
        ip_string[edit_position]='0';
    else
        ip_string[edit_position]++;
}

