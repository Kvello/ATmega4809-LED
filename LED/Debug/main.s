	.file	"main.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB10:
	.file 1 ".././main.cpp"
	.loc 1 21 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 22 0
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 23 0
	sts 97,__zero_reg__
.LVL0:
	ldi r30,lo8(leds)
	ldi r31,hi8(leds)
	ldi r18,lo8(leds+90)
	ldi r19,hi8(leds+90)
.LBB8:
	.loc 1 27 0
	ldi r24,lo8(50)
.LVL1:
.L2:
	.loc 1 27 0 is_stmt 0 discriminator 2
	st Z,r24
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	adiw r30,3
	.loc 1 25 0 is_stmt 1 discriminator 2
	cp r30,r18
	cpc r31,r19
	brne .L2
.LBE8:
	.loc 1 30 0
	ldi r22,lo8(30)
	ldi r23,0
	ldi r24,lo8(leds)
	ldi r25,hi8(leds)
	call update_led_strip
.LVL2:
.LBB9:
	.loc 1 33 0
	mov __tmp_reg__,r31
	ldi r31,lo8(30)
	mov r14,r31
	mov r31,__tmp_reg__
	mov r15,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(-56)
	mov r13,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(50)
	mov r10,r31
	mov r31,__tmp_reg__
	ldi r28,lo8(leds+91)
	ldi r29,hi8(leds+91)
	.loc 1 51 0
	ldi r16,lo8(10)
	ldi r17,0
	.loc 1 33 0
	mov r11,r14
	mov r12,r15
	.loc 1 53 0
	mov __tmp_reg__,r31
	ldi r31,lo8(100)
	mov r9,r31
	mov r31,__tmp_reg__
.L5:
	.loc 1 33 0
	call rand
.LVL3:
	mov r22,r14
	mov r23,r15
	call __divmodhi4
	movw r30,r24
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
	movw r30,r24
	subi r30,lo8(-(leds))
	sbci r31,hi8(-(leds))
	st Z,__zero_reg__
	std Z+1,r13
	std Z+2,r10
.LVL4:
	ldi r30,lo8(leds+1)
	ldi r31,hi8(leds+1)
.LVL5:
.L4:
	movw r26,r30
.LBB10:
.LBB11:
	.loc 1 36 0
	ld r24,Z
.LVL6:
	.loc 1 38 0
	cpi r24,lo8(11)
	brlo .L7
	.loc 1 40 0
	subi r24,lo8(-(-10))
.LVL7:
	rjmp .L3
.L7:
	.loc 1 44 0
	ldi r24,0
.LVL8:
.L3:
	.loc 1 46 0 discriminator 2
	st X,r24
	adiw r30,3
.LBE11:
	.loc 1 34 0 discriminator 2
	cp r30,r28
	cpc r31,r29
	brne .L4
.LBE10:
	.loc 1 48 0
	mov r22,r11
	mov r23,r12
	ldi r24,lo8(leds)
	ldi r25,hi8(leds)
.LVL9:
	call update_led_strip
.LVL10:
.LBB12:
.LBB13:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 187 0
	ldi r24,lo8(-15537)
	ldi r25,hi8(-15537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL11:
.LBE13:
.LBE12:
	.loc 1 51 0
	call rand
.LVL12:
	movw r22,r16
	call __divmodhi4
	sbiw r24,5
	brne .L5
	.loc 1 53 0
	call rand
.LVL13:
	mov r22,r14
	mov r23,r15
	call __divmodhi4
	movw r30,r24
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
	movw r30,r24
	subi r30,lo8(-(leds))
	sbci r31,hi8(-(leds))
	st Z,r13
	std Z+1,r9
	std Z+2,r9
	rjmp .L5
.LBE9:
	.cfi_endproc
.LFE10:
	.size	main, .-main
.global	leds
	.section	.bss.leds,"aw",@nobits
	.type	leds, @object
	.size	leds, 90
leds:
	.zero	90
.global	index
	.section	.bss.index,"aw",@nobits
	.type	index, @object
	.size	index, 2
index:
	.zero	2
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.3.300\\include/avr/iom4809.h"
	.file 5 ".././LED driver/ws2812b.h"
	.file 6 ".././animations.h"
	.file 7 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x48c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF57
	.byte	0x4
	.long	.LASF58
	.long	.LASF59
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x82
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x37
	.long	0x82
	.uleb128 0x5
	.long	0x30
	.uleb128 0x6
	.long	.LASF46
	.byte	0x20
	.byte	0x4
	.word	0x245
	.long	0x275
	.uleb128 0x7
	.long	.LASF10
	.byte	0x4
	.word	0x247
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x4
	.word	0x248
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF12
	.byte	0x4
	.word	0x249
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF13
	.byte	0x4
	.word	0x24a
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF14
	.byte	0x4
	.word	0x24b
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.word	0x24c
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.long	.LASF16
	.byte	0x4
	.word	0x24d
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.word	0x24e
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.word	0x24f
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.word	0x250
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.word	0x251
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.word	0x252
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.word	0x253
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.word	0x254
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x7
	.long	.LASF24
	.byte	0x4
	.word	0x255
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.long	.LASF25
	.byte	0x4
	.word	0x256
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x7
	.long	.LASF26
	.byte	0x4
	.word	0x257
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.long	.LASF27
	.byte	0x4
	.word	0x258
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.long	.LASF28
	.byte	0x4
	.word	0x259
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.long	.LASF29
	.byte	0x4
	.word	0x25a
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.word	0x25b
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.long	.LASF31
	.byte	0x4
	.word	0x25c
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.word	0x25d
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.long	.LASF33
	.byte	0x4
	.word	0x25e
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x7
	.long	.LASF34
	.byte	0x4
	.word	0x25f
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.long	.LASF35
	.byte	0x4
	.word	0x260
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x7
	.long	.LASF36
	.byte	0x4
	.word	0x261
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.long	.LASF37
	.byte	0x4
	.word	0x262
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0x7
	.long	.LASF38
	.byte	0x4
	.word	0x263
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.word	0x264
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.word	0x265
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x7
	.long	.LASF41
	.byte	0x4
	.word	0x266
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.word	0x267
	.long	0x87
	.uleb128 0x9
	.long	.LASF60
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.word	0x292
	.long	0x29f
	.uleb128 0xa
	.long	.LASF43
	.byte	0x9d
	.uleb128 0xa
	.long	.LASF44
	.byte	0xd8
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF45
	.uleb128 0xb
	.long	.LASF47
	.byte	0x3
	.byte	0x5
	.byte	0x22
	.long	0x2dd
	.uleb128 0xc
	.string	"red"
	.byte	0x5
	.byte	0x24
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x5
	.byte	0x25
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF49
	.byte	0x5
	.byte	0x26
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x5
	.byte	0x27
	.long	0x2a6
	.uleb128 0xe
	.long	.LASF61
	.byte	0x2
	.byte	0xa6
	.byte	0x3
	.long	0x325
	.uleb128 0xf
	.long	.LASF62
	.byte	0x2
	.byte	0xa6
	.long	0x325
	.uleb128 0x10
	.long	.LASF50
	.byte	0x2
	.byte	0xa8
	.long	0x325
	.uleb128 0x10
	.long	.LASF51
	.byte	0x2
	.byte	0xac
	.long	0x57
	.uleb128 0x11
	.byte	0x1
	.long	.LASF63
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.uleb128 0x12
	.long	0x62
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF52
	.uleb128 0x13
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x14
	.long	0x42
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x430
	.uleb128 0x14
	.long	.LBB8
	.long	.LBE8
	.long	0x365
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x30
	.long	.LLST0
	.byte	0
	.uleb128 0x14
	.long	.LBB10
	.long	.LBE10
	.long	0x399
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x30
	.long	.LLST1
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.byte	0x24
	.long	0x30
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x2e8
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x31
	.long	0x3d2
	.uleb128 0x18
	.long	0x2f4
	.long	.LLST3
	.uleb128 0x16
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x19
	.long	0x2ff
	.long	.LLST4
	.uleb128 0x19
	.long	0x30a
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL2
	.long	0x474
	.long	0x3f8
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	leds
	.uleb128 0x1b
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x1c
	.long	.LVL3
	.long	0x481
	.uleb128 0x1a
	.long	.LVL10
	.long	0x474
	.long	0x41d
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	leds
	.byte	0
	.uleb128 0x1c
	.long	.LVL12
	.long	0x481
	.uleb128 0x1c
	.long	.LVL13
	.long	0x481
	.byte	0
	.uleb128 0x1d
	.long	0x315
	.byte	0
	.long	0x440
	.uleb128 0x12
	.long	0x62
	.byte	0
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x6
	.byte	0x15
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	index
	.uleb128 0x1f
	.long	0x2dd
	.long	0x462
	.uleb128 0x20
	.long	0x29f
	.byte	0x1d
	.byte	0
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x1
	.byte	0x12
	.long	0x452
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	leds
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF55
	.long	.LASF55
	.byte	0x5
	.byte	0x29
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.long	.LASF56
	.long	.LASF56
	.byte	0x7
	.word	0x17f
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL10-1
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48435000
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0xc
	.long	0x30d40
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"CCP_IOREG_gc"
.LASF59:
	.string	"C:\\\\Users\\\\Trygv\\\\Documents\\\\Atmel Studio\\\\7.0\\\\LED\\\\LED\\\\Debug"
.LASF53:
	.string	"index"
.LASF63:
	.string	"__builtin_avr_delay_cycles"
.LASF50:
	.string	"__tmp"
.LASF19:
	.string	"reserved_0x09"
.LASF45:
	.string	"sizetype"
.LASF54:
	.string	"leds"
.LASF14:
	.string	"reserved_0x04"
.LASF15:
	.string	"reserved_0x05"
.LASF16:
	.string	"reserved_0x06"
.LASF17:
	.string	"reserved_0x07"
.LASF18:
	.string	"reserved_0x08"
.LASF64:
	.string	"main"
.LASF20:
	.string	"reserved_0x0A"
.LASF21:
	.string	"reserved_0x0B"
.LASF22:
	.string	"reserved_0x0C"
.LASF23:
	.string	"reserved_0x0D"
.LASF49:
	.string	"blue"
.LASF24:
	.string	"reserved_0x0E"
.LASF25:
	.string	"reserved_0x0F"
.LASF34:
	.string	"OSC32KCTRLA"
.LASF4:
	.string	"uint8_t"
.LASF55:
	.string	"update_led_strip"
.LASF56:
	.string	"rand"
.LASF26:
	.string	"OSC20MCTRLA"
.LASF7:
	.string	"long long int"
.LASF48:
	.string	"green"
.LASF46:
	.string	"CLKCTRL_struct"
.LASF3:
	.string	"long int"
.LASF58:
	.string	".././main.cpp"
.LASF61:
	.string	"_delay_ms"
.LASF29:
	.string	"reserved_0x13"
.LASF30:
	.string	"reserved_0x14"
.LASF31:
	.string	"reserved_0x15"
.LASF32:
	.string	"reserved_0x16"
.LASF33:
	.string	"reserved_0x17"
.LASF35:
	.string	"reserved_0x19"
.LASF60:
	.string	"CCP_enum"
.LASF36:
	.string	"reserved_0x1A"
.LASF37:
	.string	"reserved_0x1B"
.LASF39:
	.string	"reserved_0x1D"
.LASF40:
	.string	"reserved_0x1E"
.LASF41:
	.string	"reserved_0x1F"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"MCLKLOCK"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF47:
	.string	"color"
.LASF42:
	.string	"CLKCTRL_t"
.LASF6:
	.string	"long unsigned int"
.LASF13:
	.string	"MCLKSTATUS"
.LASF52:
	.string	"double"
.LASF62:
	.string	"__ms"
.LASF51:
	.string	"__ticks_dc"
.LASF38:
	.string	"XOSC32KCTRLA"
.LASF9:
	.string	"register8_t"
.LASF57:
	.string	"GNU C++ 5.4.0 -mn-flash=1 -mmcu=avrxmega3 -g2 -O1 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF27:
	.string	"OSC20MCALIBA"
.LASF28:
	.string	"OSC20MCALIBB"
.LASF43:
	.string	"CCP_SPM_gc"
.LASF10:
	.string	"MCLKCTRLA"
.LASF11:
	.string	"MCLKCTRLB"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
