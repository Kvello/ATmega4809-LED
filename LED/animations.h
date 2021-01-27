/*
 * IncFile1.h
 *
 * Created: 27.02.2020 17:48:52
 *  Author: Trygv
 */ 


#pragma once

#include <util/delay.h>
#include <avr/io.h>
#include <stdlib.h>

#include "LED driver/ws2812b.h"

#define NUMBER_OF_LEDS 10
#define NUMBER_OF_ANIMATIONS 5

void smartLED(uint8_t i, uint8_t r, uint8_t g, uint8_t b);

void animationBlueBlink();
void animationPulsingBlue();
void animationRainbow();
void animationRandomSwitchBetweenThreeColors();
void animationFadeBetweenColors();
void testAnimation();

void setRandomID(uint8_t modulo, uint8_t numberOfAnimations/* = NUMBER_OF_ANIMATIONS*/);

class Led
{
private:
	color ledstrip[NUMBER_OF_LEDS];
public:
	void setColor(uint8_t i, uint8_t r, uint8_t g, uint8_t b);
	void setRelativeColor(uint8_t i, int r, int g, int b);
	void setRandomColor(int i /*= -1*/);
	void fadeAll(uint8_t amount /*= 10*/);
	int getRed(uint8_t i);
	int getGreen(uint8_t i);
	int getBlue(uint8_t i);
	void uppdate(void);
};

/*#ifndef INCFILE1_H_
#define INCFILE1_H_


#endif /* INCFILE1_H_ */