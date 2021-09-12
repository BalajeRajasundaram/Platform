
typedef enum{
    PROGRAM_MODE_ENTER,
    ENTER_KEY_PRESSED,
    INDEX_KEY_PRESSED,
    SHIFT_KEY_PRESSED,
    INCREMENT_KEY_PRESSED,
}EVENT;

void event_receiver (uint8_t event);
void sm();
void update_edit_position(void);
void update_ip_string_position(void);