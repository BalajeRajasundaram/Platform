#ifndef __NVM_APPPPP__
#define __NVM_APPPPP__

#define NUM_ROWS_RESERVED 2
/***********************************************/
struct parameters {
    union {
    char pwd[8];//4 numbers max
    //uint16_t u16pwd;
    };
    uint16_t ovendelayMins;
    uint16_t buzzerdelaySecs;
}__attribute__((packed));

/***********************************************/
void flash_save_timer (uint32_t time);
uint32_t flash_read_time_from_flash(void);
void read_nvm_parameters (struct parameters *t);
uint8_t program_nvm_parameters ( struct parameters *t);

#endif


