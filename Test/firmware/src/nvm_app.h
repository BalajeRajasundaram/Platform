
#define NUM_ROWS_RESERVED 2
struct parameters {
    uint8_t pwd[2];//4 numbers max
    uint16_t ovendelayMins;
    uint16_t buzzerdelaySecs;
}__attribute__((packed));


struct run_time_storage {
    uint8_t oventimer[64];
}__attribute__((packed));

