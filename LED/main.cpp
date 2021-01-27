/*
 * LED.cpp
 *
 * Created: 23.02.2020 15:54:12
 * Author : Trygv
 */ 
#define F_CPU 20000000

#include <util/delay.h>
#include <avr/io.h>
#include <stdlib.h>


#include "LED driver/ws2812b.h"
#include "animations.h"


Led ledstripe;
int id{5};
int index{0};
uint8_t intensity{100};
//_______

int main(void)
{
	CCP = CCP_IOREG_gc;
	CLKCTRL.MCLKCTRLB = 0;
	
	while(true) {
		switch (id)
		{
		case 0:
			testAnimation();
			break;
		case 1:
			animationBlueBlink();
			break;
		case 2:
			animationPulsingBlue();
			break;
		case 3:
			animationRainbow();
			break;
		case 4:
			animationRandomSwitchBetweenThreeColors();
			break;
		case 5:
			animationFadeBetweenColors();
			break;
			
		}
		index++;
		//update_led_strip(leds, NUMBER_OF_LEDS); //not needed with the class Led
		ledstripe.uppdate();
		_delay_ms(10);
		//setRandomID(40);
	}
}

