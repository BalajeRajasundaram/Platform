/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */
#ifndef ATMEL_START_PINS_H_INCLUDED
#define ATMEL_START_PINS_H_INCLUDED

#include <hal_gpio.h>

// SAMD20 has 8 pin functions

#define GPIO_PIN_FUNCTION_A 0
#define GPIO_PIN_FUNCTION_B 1
#define GPIO_PIN_FUNCTION_C 2
#define GPIO_PIN_FUNCTION_D 3
#define GPIO_PIN_FUNCTION_E 4
#define GPIO_PIN_FUNCTION_F 5
#define GPIO_PIN_FUNCTION_G 6
#define GPIO_PIN_FUNCTION_H 7

#define D0 GPIO(GPIO_PORTA, 0)
#define D1 GPIO(GPIO_PORTA, 1)
#define D2 GPIO(GPIO_PORTA, 2)
#define D3 GPIO(GPIO_PORTA, 3)
#define D4 GPIO(GPIO_PORTA, 4)
#define D5 GPIO(GPIO_PORTA, 5)
#define D6 GPIO(GPIO_PORTA, 6)
#define D7 GPIO(GPIO_PORTA, 7)
#define ESP_UART_TX GPIO(GPIO_PORTA, 8)
#define ESP_UART_RX GPIO(GPIO_PORTA, 9)
#define SW0 GPIO(GPIO_PORTA, 10)
#define SW1 GPIO(GPIO_PORTA, 11)
#define SW2 GPIO(GPIO_PORTA, 14)
#define SW3 GPIO(GPIO_PORTA, 15)
#define RELAY0 GPIO(GPIO_PORTA, 16)
#define RELAY1 GPIO(GPIO_PORTA, 17)
#define RELAY2 GPIO(GPIO_PORTA, 18)
#define RTC_SDA GPIO(GPIO_PORTA, 22)
#define RTC_SCL GPIO(GPIO_PORTA, 23)
#define PWR_INP GPIO(GPIO_PORTA, 24)
#define C0 GPIO(GPIO_PORTA, 25)
#define C1 GPIO(GPIO_PORTA, 27)
#define C2 GPIO(GPIO_PORTA, 28)
#define ESP_EN GPIO(GPIO_PORTA, 30)
#define LED_CTRL GPIO(GPIO_PORTA, 31)

#endif // ATMEL_START_PINS_H_INCLUDED
