#if 0
#include "definitions.h"
#include <limits.h>         // for CHAR_BIT
#include <Keypad.h>  // for class definition, etc.
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include "plib_port.h"
#include "Segment.h"
#include "app.h"
#include "nvm_app.h"

/******************** NVM Application*************/
//Page Erasure
//The granularity of an erase is per row, while the granularity of
//a write is per page. Thus, if the user application is modifying
//only one page of a row, the remaining pages in the row must be
//buffered and the row erased, as an erase is mandatory before
//writing to a page.

// Define a constant array in Flash.
// It must be aligned to row boundary and size has to be in multiple of rows
const uint8_t nvm_user_start_address[NUM_ROWS_RESERVED][NVMCTRL_FLASH_ROWSIZE] __attribute__((aligned(NVMCTRL_FLASH_ROWSIZE),keep,externally_visible,space(prog)))= {0};

void populate_buffer(uint8_t* data)
{
    int i = 0;

    for (i = 0; i < (NVMCTRL_FLASH_PAGESIZE); i++)
    {
        *(data + i) = i;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void program_nvm_parameters ( void )
{
    uint8_t data [NVMCTRL_FLASH_ROWSIZE] = {0};
    struct parameters t;

    while(NVMCTRL_IsBusy());

    /**Backup*/
    NVMCTRL_Read( data, NVMCTRL_FLASH_ROWSIZE, nvm_user_start_address[0]);

    /* Erase the row */
    NVMCTRL_RowErase((uint32_t)nvm_user_start_address[0]);

    while(NVMCTRL_IsBusy());

    /* Program 64 byte page */
    NVMCTRL_PageWrite((uint32_t *)data, (uint32_t)nvm_user_start_address[0]);
    
    while(NVMCTRL_IsBusy());

    /* Verify the programmed content*/
    if (!memcmp(data, (void *)nvm_user_start_address[0], NVMCTRL_FLASH_PAGESIZE))
    {
        return 0xFF;
    }

}

#endif