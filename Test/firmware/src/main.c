/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "config/default/peripheral/tc/plib_tc_common.h"
#include "Segment.h"
#include "Keypad.h"
#include "app.h"

const char default_pwd[] = "1234";


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// Timer Handlers
// *****************************************************************************
volatile unsigned long millicounter = 0;
uintptr_t context;
volatile uint8_t task_20ms = 0;
volatile uint8_t task_5ms = 0;
volatile uint8_t task_1ms = 0;

void timer_1ms_cb (TC_TIMER_STATUS status, uintptr_t context)
{
    (void)status;
    (void)context;
    millicounter++;
    task_1ms = 1;
    if (millicounter%5 == 0)
        task_5ms = 1;
    if(millicounter%20 == 0)
        task_20ms = 1;
}

unsigned long millis ()
{
    return millicounter;
}

unsigned long elapsed_ms(unsigned long prev_millis, unsigned long now)
{   
    if(prev_millis > now)
        return (0xFFFFFFFF - prev_millis) + now;
    else
        return (now - prev_millis);
}

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    SevSeg_init();

    Keypad_Matrix_construct();
    
    TC0_TimerCallbackRegister(timer_1ms_cb,context);
    TC0_TimerStart();
    
    while ( true )
    {
        refreshDisplay();
        if(task_1ms){
            task_1ms = 0;
            sm_timer_run();
        }
        if (task_5ms != 0){
            task_5ms = 0;
            Keypad_scan ();
        }
        if(task_20ms != 0){
            task_20ms = 0;
            keyDebounceMgr();
        }
        
        sm_handler();
        
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}


/******************** NVM Application*************/
//Page Erasure
//The granularity of an erase is per row, while the granularity of
//a write is per page. Thus, if the user application is modifying
//only one page of a row, the remaining pages in the row must be
//buffered and the row erased, as an erase is mandatory before
//writing to a page.





/*******************************************************************************
 End of File
*/

