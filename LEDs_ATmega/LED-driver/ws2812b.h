#ifndef WS2812B_H
#define WS2812B_H

#ifdef __cplusplus
extern "C" {
	#endif

//the must correspond to the frequency of the chip
//------------------------------------
#ifndef F_CPU
#define F_CPU 20000000
#endif
//------------------------------------

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#if ( __AVR_ARCH__ >= 100 )
//if the processor is XMEGA or megaAVR 0-series 
//------------------------------------
//#define LED_PORT	PORTA
#define LED_PORT	PORTF
//#define LED_PIN		9
#define LED_PIN			4
//------------------------------------
#else
//if on older Atmel AVR chips
//------------------------------------
//#define LED_STRIP_PORT PORTB
//#define LED_STRIP_DDR  DDRB
//#define LED_STRIP_PIN  3 //testpin
#define LED_STRIP_PORT	PORTF
#define LED_STRIP_DDR	DDRF
#define	LED_STRIP_PIN	4 
//#define LED_STRIP_PIN  8 //faktisk pin
//------------------------------------
#endif

typedef struct color
{
  uint8_t red;
  uint8_t green;
  uint8_t blue;
} color;

void __attribute__((noinline)) update_led_strip(color* colors, uint16_t number_of_leds);

#ifdef __cplusplus
}
#endif

#endif