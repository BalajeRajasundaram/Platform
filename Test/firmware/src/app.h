#ifndef __APP__
#define __APP__



typedef enum{
    TIMEOUT,
    PROGRAM_MODE_ENTER,
    ENTER_KEY_PRESSED,
    INDEX_KEY_PRESSED,
    SHIFT_KEY_PRESSED,
    INCREMENT_KEY_PRESSED,
    NO_EVENT,
}USR_EVENT;


typedef enum{
    RUN,
    PROG,
}PARENT;

typedef enum{
    MANUFACT_PAGE,
    RUN_MODE_PARAM_STATE,
    
    /***Prog Mode States*/
    PROG_MODE_FRONT_PAGE,
    PWD_FRONT_PAGE,
    PWD_ENTER_STATE,
    PWD_VALIDATE_STATE,
            
    PWD_FAIL_STATE,
    PROG_MODE_SUCCESS,
            
    NEW_PWD_ENTER_STATE,
    NEW_PWD_EDIT_PAGE,
    NEW_PWD_ENTERED_SUCCESS,
                     
    NEW_SETPT_ENTER_STATE,
    NEW_SETPT_EDIT_PAGE,
    NEW_SETPT_ENTERED_SUCCESS,

    NEW_DSET_ENTER_STATE,
    NEW_DSET_EDIT_PAGE,
    NEW_DSET_ENTERED_SUCCESS,
    
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
            
    GOTO_NEW_PWD_PAGE,
    NEW_PWD_LABEL,//
    NEW_PWD_DATA,//
    NEW_PWD_BLINK_START_PAGE,//
            
            
    PROG_MODE_SS,
    NEW_PWD_FRONT_PAGE,
    NEW_PWD_VALUE_SHOW,
    NEW_PWD_EDIT_SUBSTATE,
            
    NEW_SETPT_FRONT_PAGE,
    NEW_SETPT_VALUE_SHOW,
    NEW_SETPT_EDIT_SUBSTATE,           
            
    NEW_DSET_FRONT_PAGE,
    NEW_DSET_VALUE_SHOW,
    NEW_DSET_EDIT_SUBSTATE,     
    
}SUB_STATE;


void event_receiver (uint8_t event);
void sm();
void update_edit_position(void);
void update_ip_string_position(void);
void set_edit_position(void);
void blink_handler (void);
void __blink_handler();
void pwd_validate(void);
void sm_timer_run (void);
void sm_ev_handler (uint8_t event);
void sm_handler (void);
void copy_string (const char *str);
void pwd_fail_handler(void);
void new_pwd_store(void);
void setpt_store(void);
void dset_store(void);
#endif