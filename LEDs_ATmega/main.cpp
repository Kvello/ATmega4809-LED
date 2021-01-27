/*
 * LEDs_ATmega.cpp
 *
 * Created: 27.01.2021 17:59:20
 * Author : marku
 */ 

#define F_CPU 20000000

#include "LED-driver/ws2812b.h"
#include <avr/io.h>
#include <stdlib.h>
#include <util/delay.h>

#define NUMBER_OF_LEDS 10

int main(void)
{
	CCP = CCP_IOREG_gc;
	CLKCTRL.MCLKCTRLB = 0;
	
	color LEDstrip[NUMBER_OF_LEDS];
	/* Replace with your application code */

	while (1)
	{
		for (int i=0; i<NUMBER_OF_LEDS;i++){
			LEDstrip[i]=(color) {255,0,0};
		}
		update_led_strip(LEDstrip,NUMBER_OF_LEDS);
	}
}

