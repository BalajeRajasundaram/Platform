/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>
#include <hpl_gclk_base.h>
#include <hpl_pm_base.h>

struct timer_descriptor TIMER_0;

struct flash_descriptor FLASH_0;

void FLASH_0_CLOCK_init(void)
{

	_pm_enable_bus_clock(PM_BUS_APBB, NVMCTRL);
}

void FLASH_0_init(void)
{
	FLASH_0_CLOCK_init();
	flash_init(&FLASH_0, NVMCTRL);
}

/**
 * \brief Timer initialization function
 *
 * Enables Timer peripheral, clocks and initializes Timer driver
 */
static void TIMER_0_init(void)
{
	_pm_enable_bus_clock(PM_BUS_APBC, TC0);
	_gclk_enable_channel(TC0_GCLK_ID, CONF_GCLK_TC0_SRC);

	timer_init(&TIMER_0, TC0, _tc_get_timer());
}

void system_init(void)
{
	init_mcu();

	// GPIO on PA00

	gpio_set_pin_level(D0,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D0, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D0, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA01

	gpio_set_pin_level(D1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA02

	gpio_set_pin_level(D2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA03

	gpio_set_pin_level(D3,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D3, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D3, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA04

	gpio_set_pin_level(D4,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D4, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D4, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA05

	gpio_set_pin_level(D5,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D5, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D5, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA06

	gpio_set_pin_level(D6,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D6, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D6, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA07

	gpio_set_pin_level(D7,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(D7, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(D7, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA08

	gpio_set_pin_function(ESP_UART_TX, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA09

	gpio_set_pin_function(ESP_UART_RX, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA10

	// Set pin direction to input
	gpio_set_pin_direction(SW0, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(SW0,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(SW0, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA11

	// Set pin direction to input
	gpio_set_pin_direction(SW1, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(SW1,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(SW1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA14

	// Set pin direction to input
	gpio_set_pin_direction(SW2, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(SW2,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(SW2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA15

	// Set pin direction to input
	gpio_set_pin_direction(SW3, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(SW3,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(SW3, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA16

	gpio_set_pin_level(RELAY0,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(RELAY0, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(RELAY0, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA17

	gpio_set_pin_level(RELAY1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(RELAY1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(RELAY1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA18

	gpio_set_pin_level(RELAY2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(RELAY2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(RELAY2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA22

	gpio_set_pin_pull_mode(RTC_SDA,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(RTC_SDA, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA23

	gpio_set_pin_pull_mode(RTC_SCL,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(RTC_SCL, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA24

	// Set pin direction to input
	gpio_set_pin_direction(PWR_INP, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(PWR_INP,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PWR_INP, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA25

	gpio_set_pin_level(C0,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(C0, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(C0, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA27

	gpio_set_pin_level(C1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(C1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(C1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA28

	gpio_set_pin_level(C2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(C2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(C2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA30

	gpio_set_pin_level(ESP_EN,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(ESP_EN, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(ESP_EN, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA31

	gpio_set_pin_level(LED_CTRL,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(LED_CTRL, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(LED_CTRL, GPIO_PIN_FUNCTION_OFF);

	FLASH_0_init();

	TIMER_0_init();
}
