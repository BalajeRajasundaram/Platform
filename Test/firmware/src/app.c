#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "config/default/peripheral/tc/plib_tc_common.h"
#include "Segment.h"
#include "Keypad.h"
#include "app.h"
#include "string.h"
#include "nvm_app.h"

extern const char default_pwd[];
unsigned long millis ();
unsigned long elapsed_ms(unsigned long prev_millis, unsigned long now);
void run_sm();
void prog_sm();

struct parameters nvm_data;
/**Extern from Segment.c
 Extern from Keypad.c*/
extern uint8_t numDigits;
bool decimal_pt;
uint8_t parent = RUN;
uint8_t state = MANUFACT_PAGE;
uint8_t substate = MANUFACT_PAGE_SHOW;
char ip_string[NUM_ALPHA_NUMERIC_DIGITS + 1] = {'-','-','-','-','-','.'}; 
uint8_t edit_position = 0;
uint8_t max_digits_enter = 0;
unsigned long prev_millis;
unsigned long now;
char prev_ip_string[NUM_ALPHA_NUMERIC_DIGITS+1];
bool state_transition= true;

struct sys_event
{
    USR_EVENT   ev;
    uint8_t     nxt_state;
    uint8_t     nxt_substate;
    void  (*custom_handler) (void);
};

struct display_mgr{
    uint8_t     state;
    uint8_t     substate;
    uint16_t    timeout;
    bool        is_const_text2Show;
    const char        *text; //including decimal point
    bool        is_integer2show;
    uint16_t         *int_show;  //Pointer to the runtime integer to show
    bool        allow_edit;
    uint8_t     num_edit_digits;
    char        *ip_data;
    const struct sys_event        *ev1;
    const struct sys_event        *ev2;
    const struct sys_event        *ev3;
    const struct sys_event        *ev4;
    const struct sys_event        *ev5;    
};

const struct sys_event manufacture_page_show = {
    .ev = TIMEOUT,
    .nxt_substate = RUN_MODE_PARAM_SHOW,
    .nxt_state = RUN_MODE_PARAM_STATE,
};

const struct sys_event run_mode_param_show = {
    .ev = PROGRAM_MODE_ENTER,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_EDIT_PAGE,
};

const struct sys_event pwd_edit_shift = {
    .ev = SHIFT_KEY_PRESSED,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_BLINK_START_PAGE,
};

const struct sys_event pwd_blink_shift = {
    .ev = SHIFT_KEY_PRESSED,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_BLINK_START_PAGE,
    .custom_handler = update_edit_position,
};

const struct sys_event pwd_blink_increment = {
    .ev = INCREMENT_KEY_PRESSED,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_BLINK_START_PAGE,
    .custom_handler = update_ip_string_position,
};

const struct sys_event pwd_blink_timeout = {
    .ev = TIMEOUT,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_BLINK_START_PAGE,
    .custom_handler = __blink_handler,
    
};


const struct sys_event pwd_blink_enter = {
    .ev = ENTER_KEY_PRESSED,
    .nxt_state = PWD_VALIDATE_STATE,
    .nxt_substate = PWD_VALIDATE_SUBSTATE,
    .custom_handler = pwd_validate,
};

const struct sys_event pwd_fail_timeout = {
    .ev = TIMEOUT,
    .nxt_state = PWD_ENTER_STATE,
    .nxt_substate = PWD_BLINK_START_PAGE,
    .custom_handler = pwd_fail_handler,
};

const struct sys_event prog_mode_index = {
    .ev = INDEX_KEY_PRESSED,
    .nxt_state = NEW_PWD_ENTER_STATE,
    .nxt_substate = NEW_PWD_FRONT_PAGE,
    .custom_handler = NULL,
};


const struct sys_event new_pw_timeout = {
    .ev = TIMEOUT,
    .nxt_state = NEW_PWD_EDIT_PAGE,
    .nxt_substate = NEW_PWD_VALUE_SHOW,
    .custom_handler = NULL,
};
/***************** New Pwd Events **************************/

const struct sys_event new_pwd_edit_shift = {
    .ev = SHIFT_KEY_PRESSED,
    .nxt_state = NEW_PWD_EDIT_PAGE,
    .nxt_substate = NEW_PWD_EDIT_SUBSTATE,
};

const struct sys_event new_pw_index = {
    .ev = INDEX_KEY_PRESSED,
    .nxt_state = NEW_SETPT_ENTER_STATE,
    .nxt_substate = NEW_SETPT_FRONT_PAGE,
    .custom_handler = NULL,
};

const struct sys_event new_pw_enter = {
    .ev = ENTER_KEY_PRESSED,
    .nxt_state = NEW_PWD_EDIT_PAGE,
    .nxt_substate = NEW_PWD_ENTERED_SUCCESS,
    .custom_handler = new_pwd_store,
};
/***************** SetPt Events **************************/
const struct sys_event setpt_index = {
    .ev = INDEX_KEY_PRESSED,
    .nxt_state = NEW_DSET_ENTER_STATE,
    .nxt_substate = NEW_DSET_FRONT_PAGE,
    .custom_handler = NULL,
};

const struct sys_event setpt_timeout = {
    .ev = TIMEOUT,
    .nxt_state = NEW_SETPT_EDIT_PAGE,
    .nxt_substate = NEW_SETPT_VALUE_SHOW,
    .custom_handler = NULL,
};

const struct sys_event setpt_enter = {
    .ev = ENTER_KEY_PRESSED,
    .nxt_state = NEW_SETPT_EDIT_PAGE,
    .nxt_substate = NEW_SETPT_ENTERED_SUCCESS,
    .custom_handler = setpt_store,
};

const struct sys_event setpt_edit_shift = {
    .ev = SHIFT_KEY_PRESSED,
    .nxt_state = NEW_SETPT_EDIT_PAGE,
    .nxt_substate = NEW_SETPT_EDIT_SUBSTATE,
};

/********************** DSET Events ************************************************/

const struct sys_event dset_index = {
    .ev = INDEX_KEY_PRESSED,
    .nxt_state = NEW_PWD_ENTER_STATE,
    .nxt_substate = NEW_PWD_FRONT_PAGE,
    .custom_handler = NULL,
};

const struct sys_event dset_timeout = {
    .ev = TIMEOUT,
    .nxt_state = NEW_DSET_EDIT_PAGE,
    .nxt_substate = NEW_DSET_VALUE_SHOW,
    .custom_handler = NULL,
};

const struct sys_event dset_enter = {
    .ev = ENTER_KEY_PRESSED,
    .nxt_state = NEW_DSET_EDIT_PAGE,
    .nxt_substate = NEW_DSET_ENTERED_SUCCESS,
    .custom_handler = dset_store,
};

const struct sys_event dset_edit_shift = {
    .ev = SHIFT_KEY_PRESSED,
    .nxt_state = NEW_DSET_EDIT_PAGE,
    .nxt_substate = NEW_DSET_EDIT_SUBSTATE,
};

/**********************************************************************/



const struct sys_event exit_prog_mode = {
    .ev = PROGRAM_MODE_ENTER,
    .nxt_state = MANUFACT_PAGE,
    .nxt_substate = MANUFACT_PAGE_SHOW,
};

const char page1[6]= "POn-E";
const char page2[7]="E.----";
const char page3[6]="  Err";
const char page4[6]=" PROG";
const char page5[6]="NEWPW";
const char page6[6]="    E";
const char page7[6]="SEtPt";
const char page8[6]=" dSEt";
const struct display_mgr sm_mgr[] = 
{   /*State,          Sub-State        IsTextShow Text IsTimeout, Timeout, TimeoutSt, TimeoutSS**/
    {
        .state              = MANUFACT_PAGE,
        .substate           = MANUFACT_PAGE_SHOW,
        .is_const_text2Show = true,
        .text               = page1,
        .timeout            = 2000,
        .ev1                = &manufacture_page_show,
        .ev2                = NULL,
        .ev3                = NULL,
        .is_integer2show    = false,
        .allow_edit         = false
                
    },
    {
        .state              = RUN_MODE_PARAM_STATE,
        .substate           = RUN_MODE_PARAM_SHOW,
        .is_const_text2Show = false,
        .is_integer2show    = true,
        .int_show           = &nvm_data.ovendelayMins,
        .ev1                = &run_mode_param_show,
        .ev2                = NULL,
        .ev3                = NULL,                
    },
    {
        .state              = PWD_ENTER_STATE,
        .substate           = PWD_EDIT_PAGE,
        .is_const_text2Show = true,
        .text               = page2,
        .is_integer2show    = false,
        .ev1                = &pwd_edit_shift,
        .ev2                = &exit_prog_mode,
        .ev3                = NULL,
    },
    {
        .state              = PWD_ENTER_STATE,
        .substate           = PWD_BLINK_START_PAGE,
        .timeout            = 200,
        .allow_edit         = true,
        .num_edit_digits    = 4,       
        .ev1                = &pwd_blink_timeout,
        .ev2                = &pwd_blink_shift,
        .ev3                = &pwd_blink_increment,
        .ev4                = &pwd_blink_enter,
        .ev5                = &exit_prog_mode,                
    },
    {
        .state              = PWD_FAIL_STATE,
        .substate           = PWD_FAIL_SUBSTATE,
        .is_const_text2Show = true,
        .text               = page3,
        .timeout            = 2000,       
        .ev1                = &pwd_fail_timeout,
        .ev2                = &exit_prog_mode,
    },    
    
    {
        .state              = PROG_MODE_SUCCESS,
        .substate           = PROG_MODE_SS,
        .is_const_text2Show = true,
        .text               = page4,   
        .ev1                = &prog_mode_index,
        .ev2                = &exit_prog_mode,
    },  
    /*******************************************************************
                    NEW Password Show & EDIT page
     *******************************************************************/
    {
        .state              = NEW_PWD_ENTER_STATE,
        .substate           = NEW_PWD_FRONT_PAGE,
        .is_const_text2Show = true,
        .text               = page5,
        .timeout            = 2000,       
        .ev1                = &new_pw_timeout,    
        .ev2                = &exit_prog_mode,
        .ev3                = &new_pw_index
    }, 
    {
        .state              = NEW_PWD_EDIT_PAGE,
        .substate           = NEW_PWD_VALUE_SHOW,
        .is_const_text2Show = true,
        .text               = &nvm_data.pwd[0],       
        .ev1                = &new_pwd_edit_shift,
        .ev2                = &exit_prog_mode,
        .ev3                = &new_pw_index
    },
    {
        .state              = NEW_PWD_EDIT_PAGE,
        .substate           = NEW_PWD_EDIT_SUBSTATE,
        .is_const_text2Show = true,
        .text               = &nvm_data.pwd[0],
        .timeout            = 200,
        .allow_edit         = true,
        .num_edit_digits    = 4,       
        .ev1                = &pwd_blink_timeout,
        .ev2                = &pwd_blink_shift,
        .ev3                = &pwd_blink_increment,
        .ev4                = &new_pw_enter, 
        .ev5                = &exit_prog_mode,
    }, 
    
    
    /*******************************************************************
                    NEW SETPT Show & EDIT page
     *******************************************************************/
    {
        .state              = NEW_SETPT_ENTER_STATE,
        .substate           = NEW_SETPT_FRONT_PAGE,
        .is_const_text2Show = true,
        .text               = page7,
        .timeout            = 1000,       
        .ev1                = &setpt_timeout,    
        .ev2                = &exit_prog_mode,
        .ev3                = &setpt_index
    }, 
    {
        .state              = NEW_SETPT_EDIT_PAGE,
        .substate           = NEW_SETPT_VALUE_SHOW,
        .is_integer2show    = true,
        .int_show           = &nvm_data.ovendelayMins,       
        .ev1                = &setpt_edit_shift,
        .ev2                = &exit_prog_mode,
        .ev3                = &setpt_index
    },
    {
        .state              = NEW_SETPT_EDIT_PAGE,
        .substate           = NEW_SETPT_EDIT_SUBSTATE,
        .timeout            = 200,
        .allow_edit         = true,
        .num_edit_digits    = 3,       
        .ev1                = &pwd_blink_timeout,
        .ev2                = &pwd_blink_shift,
        .ev3                = &pwd_blink_increment,
        .ev4                = &setpt_enter, 
        .ev5                = &exit_prog_mode,
    },
    
    /*******************************************************************
                    NEW DSET Show & EDIT page
     *******************************************************************/
    {
        .state              = NEW_DSET_ENTER_STATE,
        .substate           = NEW_DSET_FRONT_PAGE,
        .is_const_text2Show = true,
        .text               = page8,
        .timeout            = 1000,       
        .ev1                = &dset_timeout,    
        .ev2                = &exit_prog_mode,
        .ev3                = &dset_index
    }, 
    {
        .state              = NEW_DSET_EDIT_PAGE,
        .substate           = NEW_DSET_VALUE_SHOW,
        .is_integer2show    = true,
        .int_show           = &nvm_data.buzzerdelaySecs,       
        .ev1                = &dset_edit_shift,
        .ev2                = &exit_prog_mode,
        .ev3                = &dset_index
    },
    {
        .state              = NEW_DSET_EDIT_PAGE,
        .substate           = NEW_DSET_EDIT_SUBSTATE,
        .timeout            = 200,
        .allow_edit         = true,
        .num_edit_digits    = 3,       
        .ev1                = &pwd_blink_timeout,
        .ev2                = &pwd_blink_shift,
        .ev3                = &pwd_blink_increment,
        .ev4                = &dset_enter, 
        .ev5                = &exit_prog_mode,
    },    
};


uint16_t timer_counter;
uint16_t timer_backup;
bool timer_running = false;

void sm_timer_start (uint16_t timeout) {
    timer_backup = timeout;
    timer_counter = timeout;
    timer_running = true;
}

void sm_timer_stop (void) {
    timer_running = false;
}

void sm_timer_run (void) {
    if(timer_running) {
        timer_counter--;
        if(!timer_counter)
        {
            timer_running = false;        
            sm_ev_handler (TIMEOUT);
        }
    }
}

void __blink_handler(){
    sm_timer_start (timer_backup);
    blink_handler();
}
void new_pwd_store(void)
{
    memcpy(&nvm_data.pwd[0], &ip_string[NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter],4);
    program_nvm_parameters(&nvm_data);
}

void setpt_store(void)
{
    nvm_data.ovendelayMins = atoi(&ip_string[NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter]);
    program_nvm_parameters(&nvm_data);
}

void dset_store(void)
{
    nvm_data.buzzerdelaySecs = atoi(&ip_string[NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter]);
    program_nvm_parameters(&nvm_data);
}

void pwd_validate(void)
{
//    char set_pwd[NUM_ALPHA_NUMERIC_DIGITS] = "     ";

    //if(nvm_data.u16pwd != 0xFFFF)
    //    itoa(nvm_data.u16pwd,set_pwd,10);

    if((0 == memcmp(default_pwd,
                    &ip_string[NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter],
                    max_digits_enter)) ||
       (0 == memcmp(nvm_data.pwd,
                    &ip_string[NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter],
                    max_digits_enter))) {
        state = PROG_MODE_SUCCESS;
        substate = PROG_MODE_SS;
    }
    else{
        state = PWD_FAIL_STATE;
        substate = PWD_FAIL_SUBSTATE;
        memcpy(prev_ip_string,ip_string,6);
    }
    state_transition = true;
}

void pwd_fail_handler(void)
{
    copy_string(prev_ip_string);
    setChars(ip_string);
    state = PWD_ENTER_STATE;
    substate = PWD_BLINK_START_PAGE; 
    state_transition = true;
}




void custom_event_handler_mgr (struct sys_event *sys_ev, uint8_t event)
{
    if(event == sys_ev->ev) {
        if(sys_ev->custom_handler!= NULL) {
            sys_ev->custom_handler();
            //state_transition = true;
        }
        else{
            state = sys_ev->nxt_state;
            substate = sys_ev->nxt_substate;
            state_transition = true;
        }
    }
}

void sm_ev_handler (uint8_t event){
    int i =0;

    struct sys_event *sys_ev;
    
    read_nvm_parameters (&nvm_data);
    if(nvm_data.ovendelayMins == 0xFFFF){
        nvm_data.ovendelayMins = 0x0000;
    }
    nvm_data.pwd[4]='\0';
    
    for(;i<sizeof(sm_mgr)/sizeof(struct display_mgr);i++)
    {
        if(state == sm_mgr[i].state &&
                substate == sm_mgr[i].substate ){
            if(sm_mgr[i].ev1 != NULL){
                sys_ev = (struct sys_event *)sm_mgr[i].ev1;
                custom_event_handler_mgr(sys_ev, event);
                
            }
            if(sm_mgr[i].ev2 != NULL){
                sys_ev = (struct sys_event *)sm_mgr[i].ev2;
                custom_event_handler_mgr(sys_ev, event);
                
            }
            if(sm_mgr[i].ev3 != NULL){
                sys_ev = (struct sys_event *)sm_mgr[i].ev3;
                custom_event_handler_mgr(sys_ev, event);
                
            }
            if(sm_mgr[i].ev4 != NULL){
                sys_ev = (struct sys_event *)sm_mgr[i].ev4;
                custom_event_handler_mgr(sys_ev, event);
                
            }
            if(sm_mgr[i].ev5 != NULL){
                sys_ev = (struct sys_event *)sm_mgr[i].ev5;
                custom_event_handler_mgr(sys_ev, event);
                
            }
            break;
        }
    }
}

void copy_string (const char *str){
    uint8_t n = strlen(str);
    memset(ip_string,' ',6);
    if(NULL == strchr (str, '.')){
        memcpy(&ip_string[NUM_ALPHA_NUMERIC_DIGITS -n ],
            str, n); 
        decimal_pt = false;
    }
    else{
        memcpy(&ip_string[NUM_ALPHA_NUMERIC_DIGITS + 1 -n ],
            str, n);
        decimal_pt = true;
    }
}


void sm_handler (void){
    int i;
    
    if(!state_transition)
        return;
    
    state_transition = false;
    
    for(i = 0;i<sizeof(sm_mgr)/sizeof(struct display_mgr);i++)
    {
        if(state == sm_mgr[i].state &&
                substate == sm_mgr[i].substate ){
            decimal_pt = false;
            if(sm_mgr[i].timeout){
                sm_timer_start(sm_mgr[i].timeout);
            }
            if(sm_mgr[i].is_const_text2Show){
                copy_string(sm_mgr[i].text);
                setChars(ip_string);
            }
            if(sm_mgr[i].is_integer2show){
                show_integers(*sm_mgr[i].int_show);
            }
            if(sm_mgr[i].allow_edit){
                max_digits_enter = sm_mgr[i].num_edit_digits;//Pwd is only 4 digits
                set_edit_position();
            }
        }
    }
}

#if 0
void event_receiver (uint8_t event)
{
    switch (event){
        case PROGRAM_MODE_ENTER:
            if (parent == RUN)
            {
                if (state == MANUFACT_PAGE ||
                        state == RUN_MODE_PARAM_STATE)
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
            if(state == PWD_ENTER_STATE){
                state = PWD_VALIDATE_STATE;
                substate = PWD_VALIDATE_SUBSTATE;
            }
            break;
        case SHIFT_KEY_PRESSED:
            update_edit_position();
            if(state == PWD_ENTER_STATE && 
                    substate == PWD_BLINK_START_PAGE){
                 substate = PWD_ENTER_PAGE_SHOW;
            }
            break;
        case INCREMENT_KEY_PRESSED:
            update_ip_string_position();
            if(state == PWD_ENTER_STATE){
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
                state = RUN_MODE_PARAM_STATE;
                substate = RUN_MODE_PARAM_SHOW;
            }
            break;
        case RUN_MODE_PARAM_STATE:
            if(substate == RUN_MODE_PARAM_SHOW) {
                struct parameters t;
                read_nvm_parameters (&t);
                if(t.ovendelayMins == 0xFFFF){
                    t.ovendelayMins = 0x00;
                }
                show_integers(t.ovendelayMins);
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
                state = PWD_ENTER_STATE;
                substate = PWD_ENTER_PAGE_SHOW; 
                ip_string[0] = ' ';
                ip_string[1] = '-';
                ip_string[2] = '-';
                ip_string[3] = '-';
                ip_string[4] = '-';
                max_digits_enter = 4;//Pwd is only 4 digits
                edit_position = (NUM_ALPHA_NUMERIC_DIGITS - max_digits_enter);
            }
            break;
        case    PWD_ENTER_STATE:
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
                struct parameters t;
                char set_pwd[NUM_ALPHA_NUMERIC_DIGITS] = "     ";
                
                read_nvm_parameters (&t);
                
//                if(t.u16pwd != 0xFFFF)
        //            itoa(t.u16pwd,set_pwd,10);
                
                if((0 == memcmp(default_pwd,
                                &ip_string[NUM_ALPHA_NUMERIC_DIGITS - max_digits_enter],
                                max_digits_enter)) ||
                   (0 == memcmp(set_pwd,
                                &ip_string[NUM_ALPHA_NUMERIC_DIGITS - max_digits_enter],
                                max_digits_enter))) {
                    setChars(" PASS");
                    state = PROG_MODE_SUCCESS;
                    substate = GOTO_NEW_PWD_PAGE;
                }
                else {
                    setChars("  Err"); //indefinite..
                    //press shift
                    //retain what he entered
                    substate = PWD_FAIL_SUBSTATE;
                }
            }
            else if(substate == PWD_FAIL_SUBSTATE) {
                if(elapsed_ms(prev_millis, millis()) > 3000){
                    state = PWD_ENTER_STATE;
                    substate = PWD_ENTER_PAGE_SHOW;
                }
            }
            break; 
        case PROG_MODE_SUCCESS:
            //show prog mode page indefinte..
            //only index key should work
            //go to new pwd page 
            //EDIT new PWD by blinking 4 digits
            //Enter key press show 'E'
            if (substate == GOTO_NEW_PWD_PAGE) {
                setChars("nEWPW");
                substate = NEW_PWD_LABEL;
                prev_millis = millis();
            }
            else if(NEW_PWD_LABEL == substate){
                if(elapsed_ms(prev_millis, millis()) > 3000)
                    substate = NEW_PWD_DATA;
            }
            else if (substate == NEW_PWD_DATA) {
                struct parameters t;
                char set_pwd[NUM_ALPHA_NUMERIC_DIGITS+1] = "E.0000";//accomodate '.'
                
                read_nvm_parameters (&t);

//                if(t.u16pwd != 0xFFFF)
    //                itoa(t.u16pwd,&set_pwd[2],10);  //only 4 digits pwd so start from idx 2
                
                memcpy(&ip_string[0],&set_pwd[0],4);
                setChars(set_pwd);
                substate = NEW_PWD_EDIT_PAGE;
                max_digits_enter = 4;//Pwd is only 4 digits
                edit_position = (NUM_ALPHA_NUMERIC_DIGITS - max_digits_enter);
            }
            else if(substate == NEW_PWD_EDIT_PAGE){
                if(elapsed_ms(prev_millis, millis()) > 1000){
                    substate=NEW_PWD_BLINK_START_PAGE;
                    prev_millis = millis();
                }
            }
            else if(substate==NEW_PWD_BLINK_START_PAGE){
                char temp[5];
                temp[0] =   ip_string[0];
                temp[1] =   ip_string[1];
                temp[2] =   ip_string[2];
                temp[3] =   ip_string[3];
                temp[4] =   ip_string[4];
                temp[5] =   ip_string[5];
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
            
    }
}
#endif

void set_edit_position(void){
    edit_position= NUM_ALPHA_NUMERIC_DIGITS + decimal_pt - max_digits_enter;  
}
uint16_t blink_counter = 0;
void blink_handler (void)
{
    char temp[NUM_ALPHA_NUMERIC_DIGITS + 1];
    blink_counter++;
    memcpy(temp,ip_string,6);
    if(blink_counter & 1)
        temp[edit_position] = ' ';
    setChars(temp);
}

void update_edit_position(void)
{
    edit_position++;
    
    if(edit_position == (NUM_ALPHA_NUMERIC_DIGITS + decimal_pt))
              set_edit_position();
}

void update_ip_string_position(void)
{
    if(ip_string[edit_position] < '0' ||
            ip_string[edit_position] > '9')
        ip_string[edit_position]='0';
    else
        ip_string[edit_position]++;
    
    setChars(ip_string);
}

