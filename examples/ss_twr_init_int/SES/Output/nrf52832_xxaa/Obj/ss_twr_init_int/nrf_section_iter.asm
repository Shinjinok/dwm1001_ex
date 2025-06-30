	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"nrf_section_iter.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/experimental_section_vars/nrf_section_iter.c"
	.section	.text.nrf_section_iter_init,"ax",%progbits
	.align	1
	.global	nrf_section_iter_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_section_iter_init, %function
nrf_section_iter_init:
.LFB164:
	.loc 1 79 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 83 19
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 1 86 28
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 86 44
	ldr	r2, [r3]
	.loc 1 86 20
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 87 15
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 87 33
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 87 49
	ldr	r3, [r3, #4]
	.loc 1 87 8
	cmp	r2, r3
	bne	.L3
	.loc 1 89 24
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #4]
.L3:
	.loc 1 95 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE164:
	.size	nrf_section_iter_init, .-nrf_section_iter_init
	.section	.text.nrf_section_iter_next,"ax",%progbits
	.align	1
	.global	nrf_section_iter_next
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_section_iter_next, %function
nrf_section_iter_next:
.LFB165:
	.loc 1 98 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 102 15
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 102 8
	cmp	r3, #0
	beq	.L7
	.loc 1 107 46
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 107 31
	mov	r2, r3
	.loc 1 107 64
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 107 71
	ldr	r3, [r3, #8]
	.loc 1 107 56
	add	r3, r3, r2
	.loc 1 107 22
	mov	r2, r3
	.loc 1 107 20
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 110 15
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 110 33
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 110 49
	ldr	r3, [r3, #4]
	.loc 1 110 8
	cmp	r2, r3
	bne	.L4
	.loc 1 112 24
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L4
.L7:
	.loc 1 104 9
	nop
.L4:
	.loc 1 123 1
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE165:
	.size	nrf_section_iter_next, .-nrf_section_iter_next
	.text
.Letext0:
	.file 2 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stdint.h"
	.file 3 "/opt/SEGGER/segger_embedded_studio_8.22a/include/string.h"
	.file 4 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/experimental_section_vars/nrf_section_iter.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x196
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x111
	.byte	0x29
	.4byte	0x4e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.2byte	0x113
	.byte	0x29
	.4byte	0x69
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2e
	.byte	0x1d
	.4byte	0x33
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0xc3
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3f
	.byte	0xc
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x40
	.byte	0xc
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x41
	.byte	0x3
	.4byte	0x9f
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x45
	.byte	0x9
	.4byte	0xf5
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x48
	.byte	0x1d
	.4byte	0xc5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x52
	.byte	0x1d
	.4byte	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x53
	.byte	0x3
	.4byte	0xd1
	.uleb128 0x9
	.4byte	0xf5
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x57
	.byte	0x9
	.4byte	0x12a
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x59
	.byte	0x1f
	.4byte	0x12a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x62
	.byte	0x1f
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x101
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x63
	.byte	0x3
	.4byte	0x106
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x61
	.byte	0x31
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x130
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4e
	.byte	0x31
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4e
	.byte	0x53
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x42
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x19a
	.4byte	0x13c
	.ascii	"nrf_section_iter_next\000"
	.4byte	0x168
	.ascii	"nrf_section_iter_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x135
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x19a
	.4byte	0x25
	.ascii	"int\000"
	.4byte	0x2c
	.ascii	"char\000"
	.4byte	0x33
	.ascii	"unsigned int\000"
	.4byte	0x3a
	.ascii	"signed char\000"
	.4byte	0x4e
	.ascii	"unsigned char\000"
	.4byte	0x41
	.ascii	"uint8_t\000"
	.4byte	0x55
	.ascii	"short int\000"
	.4byte	0x69
	.ascii	"short unsigned int\000"
	.4byte	0x5c
	.ascii	"uint16_t\000"
	.4byte	0x70
	.ascii	"long int\000"
	.4byte	0x77
	.ascii	"long unsigned int\000"
	.4byte	0x7e
	.ascii	"long long int\000"
	.4byte	0x85
	.ascii	"long long unsigned int\000"
	.4byte	0x8c
	.ascii	"size_t\000"
	.4byte	0x98
	.ascii	"double\000"
	.4byte	0xc5
	.ascii	"nrf_section_t\000"
	.4byte	0xf5
	.ascii	"nrf_section_set_t\000"
	.4byte	0x130
	.ascii	"nrf_section_iter_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF10:
	.ascii	"long long int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"size_t\000"
.LASF16:
	.ascii	"nrf_section_t\000"
.LASF18:
	.ascii	"item_size\000"
.LASF25:
	.ascii	"/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/componen"
	.ascii	"ts/libraries/experimental_section_vars/nrf_section_"
	.ascii	"iter.c\000"
.LASF27:
	.ascii	"nrf_section_iter_next\000"
.LASF21:
	.ascii	"p_item\000"
.LASF19:
	.ascii	"nrf_section_set_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF22:
	.ascii	"nrf_section_iter_t\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF23:
	.ascii	"p_iter\000"
.LASF15:
	.ascii	"p_end\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"char\000"
.LASF8:
	.ascii	"long int\000"
.LASF28:
	.ascii	"nrf_section_iter_init\000"
.LASF26:
	.ascii	"/home/sjo/dwm1001-examples/examples/ss_twr_init_int"
	.ascii	"/SES\000"
.LASF13:
	.ascii	"double\000"
.LASF14:
	.ascii	"p_start\000"
.LASF17:
	.ascii	"section\000"
.LASF2:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"GNU C99 13.3.1 20240614 -fmessage-length=0 -std=gnu"
	.ascii	"99 -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard"
	.ascii	" -mabi=aapcs -mfpu=fpv4-sp-d16 -mthumb -munaligned-"
	.ascii	"access -mtp=soft -mfp16-format=ieee -gdwarf-4 -g2 -"
	.ascii	"gpubnames -fomit-frame-pointer -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF20:
	.ascii	"p_set\000"
.LASF4:
	.ascii	"short int\000"
.LASF1:
	.ascii	"unsigned int\000"
	.ident	"GCC: (based on arm-13.3.Rel1 source release) 13.3.1 20240614"
