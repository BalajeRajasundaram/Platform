#include "driver_init.h"
#include "segment.h"
static uint8_t segment_aray[NO_OF_SEGMENTS] = {0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u};
static uint8_t cur_row_sel = 0u;

static void segment_timer_cb(const struct timer_task *const timer_task)
{
	uint32_t char_selected = cur_row_sel;
	uint32_t char_to_display = segment_aray[char_selected];
	uint32_t io_port;
	
	io_port = hri_port_read_OUT_reg(PORT_IOBUS, GPIO_PORT(D0));
	io_port &= (uint32_t)(~(0x0Fu << GPIO_PIN(D0)));
	io_port |= (uint32_t)(char_to_display << GPIO_PIN(D0));
	io_port &= (uint32_t)(~(0x0Fu << GPIO_PIN(C0)));
	io_port |= (uint32_t)((char_selected  & 0x01u)<< GPIO_PIN(C0));
	io_port |= (uint32_t)((char_selected  & 0x6u)<< (GPIO_PIN(C1) - 1u));
	hri_port_write_OUT_reg(PORT_IOBUS, GPIO_PORT(D0), io_port);
	//cur_row_sel = ((char_selected ++) & 0x07u);
	char_selected ++;
	if (NO_OF_SEGMENTS <= char_selected)
	{
		char_selected = 0u;
	}
	cur_row_sel = char_selected;
}
const struct timer_task segment_task = 
{	.interval = 2,
	.mode = TIMER_TASK_REPEAT,
	.cb = segment_timer_cb
	};

void segment_init (void)
{
	timer_add_task(&TIMER_0, &segment_task);
	timer_start(&TIMER_0);
}