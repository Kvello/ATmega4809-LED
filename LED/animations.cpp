/*
 * CPPFile1.cpp
 *
 * Created: 27.02.2020 17:48:06
 *  Author: Trygv
 */
#include "animations.h"

#include <util/delay.h>
#include <avr/io.h>
#include <stdlib.h>

#include "LED driver/ws2812b.h"


//get global variables
extern color leds[NUMBER_OF_LEDS];
extern Led ledstripe;
extern int id;
extern int index;
extern uint8_t intensity;


void smartLED(uint8_t i, uint8_t r, uint8_t g, uint8_t b) {
	r = (intensity*r/100);
	g = (intensity*g/100);
	b = (intensity*b/100);
	leds[i] = (color) {r, g, b};
}

void setRandomID(uint8_t modulo, uint8_t numberOfAnimations = NUMBER_OF_ANIMATIONS) {
	if (rand()%modulo == 1)
	{
		id = rand()%numberOfAnimations;
	}
}

void Led::setColor(uint8_t i, uint8_t r, uint8_t g, uint8_t b) {
	r = (intensity*r/100);
	g = (intensity*g/100);
	b = (intensity*b/100);
	ledstrip[i] = (color) {r, g, b};
}

void Led::setRelativeColor(uint8_t i, int r, int g, int b) {
	r = getRed(i) + (intensity*r/100);
	g = getGreen(i) + (intensity*g/100);
	b = getBlue(i) + (intensity*b/100);
	if (r < 0) {r=0;}
	if (g < 0) {g=0;}
	if (b < 0) {b=0;}
	ledstrip[i] = (color) {r, g, b};
}

void Led::setRandomColor(int i = -1) {
	if (i < 0)
	{
		for(uint8_t j=0; j<NUMBER_OF_LEDS; j++)
		{
			uint8_t r = (intensity*(rand()%256)/100);
			uint8_t g = (intensity*(rand()%256)/100);
			uint8_t b = (intensity*(rand()%256)/100);
			setColor(j,r,g,b);
		}
	} else
	{
		uint8_t r = (intensity*(rand()%256)/100);
		uint8_t g = (intensity*(rand()%256)/100);
		uint8_t b = (intensity*(rand()%256)/100);
		setColor(i,r,b,g);
	}
}

void Led::fadeAll(uint8_t amount = 10) {
	for(uint8_t i=0; i<NUMBER_OF_LEDS; i++)
	{
		if (getRed(i) > 0 || getGreen(i) > 0 || getBlue(i) > 0)
		{
			setRelativeColor(i,amount,amount,amount);
		}
	}
}

int Led::getRed(uint8_t i) {
	return ledstrip[i].red;
}
int Led::getGreen(uint8_t i) {
	return ledstrip[i].green;
}
int Led::getBlue(uint8_t i) {
	return ledstrip[i].blue;
}

void Led::uppdate(void) {
	update_led_strip(ledstrip, NUMBER_OF_LEDS);
}

void testAnimation() {
	ledstripe.setColor(rand() % NUMBER_OF_LEDS,0, 200, 50);
	for (uint8_t i = 0; i < NUMBER_OF_LEDS; i++)
	{
		if (ledstripe.getGreen(i)> 10) {
			ledstripe.setRelativeColor(i,0,-10,0);
		}
		if (ledstripe.getRed(i) > 5) {
			ledstripe.setRelativeColor(i,0,-5,0);
		}
	}
	
	if (rand()%5 == 1) {
		ledstripe.setColor(rand()%NUMBER_OF_LEDS,200,100,100);
	}
	_delay_ms(200);
}


void animationBlueBlink() { //every second led turns on and off, and the other ones are the opposite
	index = index%2;
	for(uint8_t i=0; i<NUMBER_OF_LEDS; i+=2)
	{
		ledstripe.setColor(i, 160*index, 255*index, 128*index);
		ledstripe.setColor(i+1, 160*(1-index), 255*(1-index), 128*(1-index));
	}
	_delay_ms(10000);
}

void animationPulsingBlue() { //animation is pulsing blue
	index = index%NUMBER_OF_LEDS;
	for(uint8_t i=0; i<NUMBER_OF_LEDS; i++)
	{
		uint8_t a = (i+index)%NUMBER_OF_LEDS;
		ledstripe.setColor(i, 0, 0, static_cast<uint8_t>(255.0*a/NUMBER_OF_LEDS));
	}
	_delay_ms(200);
}

void animationRainbow() { //rainbow
	index = index%NUMBER_OF_LEDS;
	for(uint8_t i=0; i<NUMBER_OF_LEDS; i++)
	{
		uint8_t r {(i+index)%NUMBER_OF_LEDS};
		uint8_t g {(i+index+NUMBER_OF_LEDS/3)%NUMBER_OF_LEDS};
		uint8_t b {(i+index+2*NUMBER_OF_LEDS/3)%NUMBER_OF_LEDS};
		ledstripe.setColor(i, (255.0*r/NUMBER_OF_LEDS), (255.0*g/NUMBER_OF_LEDS), (255.0*b/NUMBER_OF_LEDS));
	}
	_delay_ms(3000);
}

void animationRandomSwitchBetweenThreeColors() {
	ledstripe.setColor(rand()%NUMBER_OF_LEDS,0,200,50);
	ledstripe.setColor(rand()%NUMBER_OF_LEDS,50,0,200);
	ledstripe.setColor(rand()%NUMBER_OF_LEDS,200,50,0);
}

void animationFadeBetweenColors() {
	ledstripe.setColor(rand() % NUMBER_OF_LEDS,0, 200, 50);
	for (uint8_t i = 0; i < NUMBER_OF_LEDS; i++)
	{
		if (ledstripe.getGreen(i)> 10) {
			ledstripe.setRelativeColor(i,0,-10,0);
		}
		if (ledstripe.getRed(i) > 5) {
			ledstripe.setRelativeColor(i,0,-5,0);
		}
	}
	
	if (rand()%5 == 1) {
		ledstripe.setColor(rand()%NUMBER_OF_LEDS,200,100,100);
	}
	_delay_ms(200);
}

void blueSignal() {
	index = index%NUMBER_OF_LEDS; //setter hvor mange frames det er i animasjonen
	if(index>0){
		ledstripe.setColor(index,0,255,0);
		ledstripe.setColor(index-1,0,0,0);
	}else{ledstripe.setColor(index,0,0,0);}
	return;
}

/*
Help:
void animationNAME_HERE() {
	index = index%NUMBER_OF_LEDS; //setter hvor mange frames det er i animasjonen
	for(int i=0; i<NUMBER_OF_LEDS; i++) //går gjennom hver lampe i én frame. 
	{
		ledstripe.setColor(i, r, g , b); // setter fargen til hver lampe på plassen i
	}
}
*/