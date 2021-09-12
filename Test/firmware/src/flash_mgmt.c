static uint32_t row_pos_counter = 0; 	/* Counts the bit to be programmed from 0 to 2048. */
static uint8_t page_buffer[NVMCTRL_FLASH_PAGESIZE] __attribute__((aligned(4)));
extern uint32_t timer_count;

#define FLASH_ROW_ADDR				0x10001000u
#define FLASH_ROW_ADDR_MASK			0xFFC0u
#define FLASH_PAGE_COUNT_MASK		0x3Fu
#define FLASH_BIT_POS_MASK			0x07u
#define FLASH_ROW_SIZE_IN_BITS		(NVMCTRL_FLASH_ROWSIZE * 8u)

void flash_save_timer (uint32_t time)
{
	if (time > timer_count)
	{
		return;
	}
	if (1u == time)
	{
		if (false != row_pos_counter)
		{
			/* New Start. leave one bit. */
			row_pos_counter ++;
		}
		if ((FLASH_ROW_SIZE_IN_BITS - row_pos_counter) < timer_count)
		{
			/* There are no sufficient bits to count this timer_count. Hence erase.*/
			row_pos_counter = 0u;
			while(NVMCTRL_IsBusy());
			NVMCTRL_RowErase((uint32_t)FLASH_ROW_ADDR);
			while(NVMCTRL_IsBusy());
		}
	}
	if (false == (row_pos_counter & FLASH_PAGE_COUNT_MASK))
	{
		/* New page started. copy the page.*/
		memcpy(page_buffer, (FLASH_ROW_ADDR + (row_pos_counter + ROW_ADDR_MASK)), NVMCTRL_FLASH_PAGESIZE);
	}
	uint32_t byte_idx = ((row_pos_counter) & FLASH_PAGE_COUNT_MASK >> 3u);
	uint32_t bit_idx = ((row_pos_counter) & FLASH_BIT_POS_MASK);
	page_buffer[byte_idx] &= (uint8_t) (~(0x01u << bit_idx));
	/* programm the page at index row_pos_counter >> 6u.*/
	while(NVMCTRL_IsBusy());
	NVMCTRL_PageWrite(page_buffer, (uint32_t)(FLASH_ROW_ADDR + (row_pos_counter + ROW_ADDR_MASK)));
	while(NVMCTRL_IsBusy());

}

uint32_t flash_read_time_from_flash(void)
{
	uint8_t * pFlash_row = (uint8_t *)FLASH_ROW_ADDR;
	uint32_t count;
	uint32_t timer = 0;
	uint8_t saved_data = 0xFFu;
	
	for (count = 0; count < NVMCTRL_FLASH_ROWSIZE; count ++)
	{
		uint8_t data = pFlash_row[count];
		uint8_t i, j;
		if (false = data)
		{
			timer += 8u;
		}
		else
		{
			if (false == (data & (data - 1)))
			{
				/* Only one bit is set ana hence this is not last one.*/
				saved_data = data;
				timer = 0;
			}
			else
			{
				/* This should be end of the timer count stored.*/
				for (i = 0; i < 8; i ++)
				{
					if (false == (data & (0x01 << i)))
					{
						timer ++;
					}
					else
					{
						break;
					}
				}
				for (j= i + 1; j < 8; j ++)
				{
					if (false == (data & (0x01 << j)))
					{
						timer = 0;
					}
				}
			}
		}
		for (i = 8; i > 0; i--)
		{
			if (saved_data & (0x01 << (i - 1)))
			{
				break;
			}
			else
			{
				timer ++;
			}
		}
	}
	return timer;
}