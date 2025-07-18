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
	.file	"sensorsim.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/sensorsim/sensorsim.c"
	.section	.text.sensorsim_init,"ax",%progbits
	.align	1
	.global	sensorsim_init
	.syntax unified
	.thumb
	.thumb_func
	.type	sensorsim_init, %function
sensorsim_init:
.LFB12:
	.loc 1 45 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 46 14
	ldr	r3, [sp]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 1 46 8
	cmp	r3, #0
	beq	.L2
	.loc 1 48 39
	ldr	r3, [sp]
	ldr	r2, [r3, #4]
	.loc 1 48 32
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 49 32
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 56 1
	b	.L4
.L2:
	.loc 1 53 39
	ldr	r3, [sp]
	ldr	r2, [r3]
	.loc 1 53 32
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 54 32
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
.L4:
	.loc 1 56 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE12:
	.size	sensorsim_init, .-sensorsim_init
	.section	.text.sensorsim_measure,"ax",%progbits
	.align	1
	.global	sensorsim_measure
	.syntax unified
	.thumb
	.thumb_func
	.type	sensorsim_measure, %function
sensorsim_measure:
.LFB13:
	.loc 1 61 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 62 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 62 8
	cmp	r3, #0
	beq	.L6
	.loc 1 64 9
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	sensorsim_increment
	b	.L7
.L6:
	.loc 1 68 9
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	sensorsim_decrement
.L7:
	.loc 1 70 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 71 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE13:
	.size	sensorsim_measure, .-sensorsim_measure
	.section	.text.sensorsim_increment,"ax",%progbits
	.align	1
	.global	sensorsim_increment
	.syntax unified
	.thumb
	.thumb_func
	.type	sensorsim_increment, %function
sensorsim_increment:
.LFB14:
	.loc 1 75 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 76 14
	ldr	r3, [sp]
	ldr	r2, [r3, #4]
	.loc 1 76 29
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 76 20
	subs	r2, r2, r3
	.loc 1 76 50
	ldr	r3, [sp]
	ldr	r3, [r3, #8]
	.loc 1 76 8
	cmp	r2, r3
	bls	.L10
	.loc 1 78 16
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 78 38
	ldr	r3, [sp]
	ldr	r3, [r3, #8]
	.loc 1 78 30
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 85 1
	b	.L12
.L10:
	.loc 1 82 39
	ldr	r3, [sp]
	ldr	r2, [r3, #4]
	.loc 1 82 32
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 83 32
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
.L12:
	.loc 1 85 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE14:
	.size	sensorsim_increment, .-sensorsim_increment
	.section	.text.sensorsim_decrement,"ax",%progbits
	.align	1
	.global	sensorsim_decrement
	.syntax unified
	.thumb
	.thumb_func
	.type	sensorsim_decrement, %function
sensorsim_decrement:
.LFB15:
	.loc 1 90 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 91 16
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 91 37
	ldr	r3, [sp]
	ldr	r3, [r3]
	.loc 1 91 30
	subs	r2, r2, r3
	.loc 1 91 50
	ldr	r3, [sp]
	ldr	r3, [r3, #8]
	.loc 1 91 8
	cmp	r2, r3
	bls	.L14
	.loc 1 93 16
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 93 38
	ldr	r3, [sp]
	ldr	r3, [r3, #8]
	.loc 1 93 30
	subs	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 100 1
	b	.L16
.L14:
	.loc 1 97 39
	ldr	r3, [sp]
	ldr	r2, [r3]
	.loc 1 97 32
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 98 32
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
.L16:
	.loc 1 100 1
	nop
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE15:
	.size	sensorsim_decrement, .-sensorsim_decrement
	.text
.Letext0:
	.file 2 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/sensorsim/sensorsim.h"
	.file 3 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF959
	.byte	0xc
	.4byte	.LASF960
	.4byte	.LASF961
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF937
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF938
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF939
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF940
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF941
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF942
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF943
	.uleb128 0x4
	.4byte	.LASF950
	.byte	0x3
	.2byte	0x115
	.byte	0x29
	.4byte	0x6e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF944
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF945
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF946
	.uleb128 0x5
	.byte	0x10
	.byte	0x2
	.byte	0x3d
	.byte	0x9
	.4byte	0xc1
	.uleb128 0x6
	.ascii	"min\000"
	.byte	0x2
	.byte	0x3f
	.byte	0xe
	.4byte	0x61
	.byte	0
	.uleb128 0x6
	.ascii	"max\000"
	.byte	0x2
	.byte	0x40
	.byte	0xe
	.4byte	0x61
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF947
	.byte	0x2
	.byte	0x41
	.byte	0xe
	.4byte	0x61
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF948
	.byte	0x2
	.byte	0x42
	.byte	0xe
	.4byte	0xc1
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF949
	.uleb128 0x8
	.4byte	.LASF951
	.byte	0x2
	.byte	0x43
	.byte	0x3
	.4byte	0x83
	.uleb128 0x9
	.4byte	0xc8
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0x46
	.byte	0x9
	.4byte	0xfd
	.uleb128 0x7
	.4byte	.LASF952
	.byte	0x2
	.byte	0x48
	.byte	0xe
	.4byte	0x61
	.byte	0
	.uleb128 0x7
	.4byte	.LASF953
	.byte	0x2
	.byte	0x49
	.byte	0xe
	.4byte	0xc1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF954
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.4byte	0xd9
	.uleb128 0xa
	.4byte	.LASF957
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e
	.uleb128 0xb
	.4byte	.LASF955
	.byte	0x1
	.byte	0x58
	.byte	0x32
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xb
	.4byte	.LASF956
	.byte	0x1
	.byte	0x59
	.byte	0x32
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xfd
	.uleb128 0xc
	.byte	0x4
	.4byte	0xd4
	.uleb128 0xa
	.4byte	.LASF958
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f
	.uleb128 0xb
	.4byte	.LASF955
	.byte	0x1
	.byte	0x49
	.byte	0x32
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xb
	.4byte	.LASF956
	.byte	0x1
	.byte	0x4a
	.byte	0x32
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF962
	.byte	0x1
	.byte	0x3b
	.byte	0xa
	.4byte	0x61
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8
	.uleb128 0xb
	.4byte	.LASF955
	.byte	0x1
	.byte	0x3b
	.byte	0x34
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF956
	.byte	0x1
	.byte	0x3c
	.byte	0x34
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF963
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF955
	.byte	0x1
	.byte	0x2b
	.byte	0x2d
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xb
	.4byte	.LASF956
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.4byte	0x144
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
	.uleb128 0x2119
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.4byte	0x67
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ea
	.4byte	0x109
	.ascii	"sensorsim_decrement\000"
	.4byte	0x14a
	.ascii	"sensorsim_increment\000"
	.4byte	0x17f
	.ascii	"sensorsim_measure\000"
	.4byte	0x1b8
	.ascii	"sensorsim_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x108
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ea
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x30
	.ascii	"char\000"
	.4byte	0x37
	.ascii	"unsigned int\000"
	.4byte	0x3e
	.ascii	"signed char\000"
	.4byte	0x45
	.ascii	"unsigned char\000"
	.4byte	0x4c
	.ascii	"short int\000"
	.4byte	0x53
	.ascii	"short unsigned int\000"
	.4byte	0x5a
	.ascii	"long int\000"
	.4byte	0x6e
	.ascii	"long unsigned int\000"
	.4byte	0x61
	.ascii	"uint32_t\000"
	.4byte	0x75
	.ascii	"long long int\000"
	.4byte	0x7c
	.ascii	"long long unsigned int\000"
	.4byte	0xc1
	.ascii	"_Bool\000"
	.4byte	0xc8
	.ascii	"sensorsim_cfg_t\000"
	.4byte	0xfd
	.ascii	"sensorsim_state_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF494
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF495
	.file 4 "/opt/SEGGER/segger_embedded_studio_8.22a/include/__SEGGER_RTL.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF496
	.file 5 "/opt/SEGGER/segger_embedded_studio_8.22a/include/__SEGGER_RTL_ConfDefaults.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 6 "/opt/SEGGER/segger_embedded_studio_8.22a/include/__SEGGER_RTL_Conf.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF509
	.file 7 "/opt/SEGGER/segger_embedded_studio_8.22a/include/__SEGGER_RTL_Arm_Conf.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 8 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.e94a7c3ae6569ce23b727efb51c4e131,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x6
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x6
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0
	.4byte	.LASF417
	.byte	0x6
	.uleb128 0
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x6
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x6
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x6
	.uleb128 0
	.4byte	.LASF449
	.byte	0x6
	.uleb128 0
	.4byte	.LASF450
	.byte	0x6
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x6
	.uleb128 0
	.4byte	.LASF453
	.byte	0x6
	.uleb128 0
	.4byte	.LASF454
	.byte	0x6
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x6
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x6
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF465
	.byte	0x6
	.uleb128 0
	.4byte	.LASF466
	.byte	0x6
	.uleb128 0
	.4byte	.LASF467
	.byte	0x6
	.uleb128 0
	.4byte	.LASF468
	.byte	0x6
	.uleb128 0
	.4byte	.LASF469
	.byte	0x6
	.uleb128 0
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0
	.4byte	.LASF493
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_ConfDefaults.h.11.37ef32ceb52ba65a5b7e8947ee56f76c,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF508
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_Arm_Conf.h.11.119f7d8d15650ebcfed41ee2b04350b9,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x19e
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x1ac
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x1b5
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x1be
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x1c6
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x219
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x24b
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x251
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x257
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x263
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x26f
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x27b
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x281
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x287
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x293
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x29a
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x29f
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x2a7
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x2aa
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x2ad
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x2b9
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x2bf
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x2cb
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x2d2
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x2e1
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x2e3
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x2e7
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x2e8
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x2e9
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x3af
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x3be
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x3bf
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x3c0
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x3c1
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x3c2
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x3c5
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x3c6
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x3c7
	.4byte	.LASF604
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL_ConfDefaults.h.76.eb7c3ddd521f4509fb12d41d3632bcb3,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x1cb
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x1df
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x1e2
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x1e6
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x1ff
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x215
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x21f
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x225
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x228
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x22f
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x235
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x25a
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x26a
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x26d
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x27a
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x27d
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x284
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x28a
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x2a9
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x2c3
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x2c6
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x2fb
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x301
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x307
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x30c
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x318
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x327
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x333
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x33a
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x341
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x348
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x34f
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x356
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x35d
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x364
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x36b
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x372
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x376
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x37d
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x38b
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x395
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x399
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x3a0
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x3a7
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x3b8
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x3bc
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x3ca
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x3d1
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x3db
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x3df
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x3e6
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x3ed
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x3f4
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x3fe
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x406
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x40a
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x40e
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x412
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x416
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x41a
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x41e
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x424
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x425
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x426
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x42b
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x42f
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x437
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x43d
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x443
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x449
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x44f
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x455
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x46f
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x475
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x478
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x47e
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x48e
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x492
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x496
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x49a
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x49e
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x4a2
	.4byte	.LASF786
	.byte	0x6
	.uleb128 0x4a6
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x4a7
	.4byte	.LASF782
	.byte	0x6
	.uleb128 0x4a8
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x4a9
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x4ad
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x4b1
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x4b5
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x4b9
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x4c1
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x4c5
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x4cd
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x4d1
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x4d5
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x4d9
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x4e3
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x5c5
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x5cd
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x5d5
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x5dd
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x5e2
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x5e3
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x60e
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x612
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x625
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x637
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x63b
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x63f
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x643
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x650
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x651
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x659
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x65d
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x661
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x664
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x667
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x66a
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x66d
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x685
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x689
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x68d
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x691
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x695
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x6a5
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x6aa
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x6b1
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x6b2
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x6bd
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x6c1
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x6c5
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x6c9
	.4byte	.LASF834
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__SEGGER_RTL.h.26.a755737626f240864510e752e317885e,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF837
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.36.60e89caba1970f50f7020addcee1c0e2,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF931
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.11.63829d96d260d9a3af29b7ad3c6c191c,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF936
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF183:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF596:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGABRT __aeabi_SIGABRT\000"
.LASF186:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF370:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF566:
	.ascii	"__SEGGER_RTL_CORE_HAS_BFC_BFI_BFX 1\000"
.LASF505:
	.ascii	"__SEGGER_RTL_STDC_VERSION_CPP11 201103L\000"
.LASF900:
	.ascii	"UINT_FAST32_WIDTH __SEGGER_RTL_UINT_FAST32_WIDTH\000"
.LASF849:
	.ascii	"INT64_WIDTH __SEGGER_RTL_INT64_WIDTH\000"
.LASF390:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF382:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF761:
	.ascii	"__SEGGER_RTL_PTRDIFF_WIDTH __PTRDIFF_WIDTH__\000"
.LASF926:
	.ascii	"UINTMAX_C(x) __SEGGER_RTL_UINTMAX_C(x)\000"
.LASF924:
	.ascii	"UINT64_C(x) __SEGGER_RTL_UINT64_C(x)\000"
.LASF589:
	.ascii	"__SEGGER_RTL_BYTE_PATTERN(X) __SEGGER_RTL_BYTE_PATT"
	.ascii	"ERN_func(X)\000"
.LASF243:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF655:
	.ascii	"__SEGGER_RTL_UINT_FAST16_T __UINT_FAST16_TYPE__\000"
.LASF334:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF354:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF326:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF800:
	.ascii	"__SEGGER_RTL_BitcastToU32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U32_inline(X)\000"
.LASF304:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF733:
	.ascii	"__SEGGER_RTL_UINT16_WIDTH 16\000"
.LASF881:
	.ascii	"UINT_LEAST64_MAX __SEGGER_RTL_UINT_LEAST64_MAX\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF502:
	.ascii	"__SEGGER_RTL_STDC_VERSION_C11 201112L\000"
.LASF351:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF236:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF838:
	.ascii	"INT8_MIN __SEGGER_RTL_INT8_MIN\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF327:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF490:
	.ascii	"NRF_SD_BLE_API_VERSION 5\000"
.LASF792:
	.ascii	"__SEGGER_RTL_STDOUT_BUFFER_LEN 64\000"
.LASF695:
	.ascii	"__SEGGER_RTL_INT_FAST8_MIN (-__SEGGER_RTL_INT_FAST8"
	.ascii	"_MAX - 1)\000"
.LASF751:
	.ascii	"__SEGGER_RTL_INT_FAST128_WIDTH __SEGGER_RTL_INT128_"
	.ascii	"WIDTH\000"
.LASF640:
	.ascii	"__SEGGER_RTL_I64_C(X) __SEGGER_RTL_INT64_C(X)\000"
.LASF636:
	.ascii	"__SEGGER_RTL_U32 __SEGGER_RTL_UINT32_T\000"
.LASF939:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF830:
	.ascii	"__SEGGER_RTL_SUBNORMALS_FLUSH_TO_ZERO 1\000"
.LASF717:
	.ascii	"__SEGGER_RTL_INTPTR_MIN (-__SEGGER_RTL_INTPTR_MAX -"
	.ascii	" 1)\000"
.LASF274:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF340:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF310:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF262:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF419:
	.ascii	"__ARM_FEATURE_BTI_DEFAULT\000"
.LASF494:
	.ascii	"SENSORSIM_H__ \000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF462:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF217:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF159:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF43:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF431:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF905:
	.ascii	"PTRDIFF_WIDTH __SEGGER_RTL_PTRDIFF_WIDTH\000"
.LASF309:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF680:
	.ascii	"__SEGGER_RTL_INT64_MIN (-__SEGGER_RTL_INT64_MAX - 1"
	.ascii	")\000"
.LASF219:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF591:
	.ascii	"__SEGGER_RTL_FILL_TAIL(N,W,C) __SEGGER_RTL_FILL_TAI"
	.ascii	"L_func(N, W, C)\000"
.LASF583:
	.ascii	"__SEGGER_RTL_ATOMIC_IS_LOCK_FREE(S,P) __SEGGER_RTL_"
	.ascii	"atomic_is_lock_free(S, P)\000"
.LASF182:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF760:
	.ascii	"__SEGGER_RTL_UINTMAX_WIDTH __INTMAX_WIDTH__\000"
.LASF180:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF702:
	.ascii	"__SEGGER_RTL_UINT_FAST32_MAX __UINT_FAST32_MAX__\000"
.LASF496:
	.ascii	"__SEGGER_RTL_H \000"
.LASF844:
	.ascii	"INT32_MIN __SEGGER_RTL_INT32_MIN\000"
.LASF672:
	.ascii	"__SEGGER_RTL_UINT8_MAX __UINT8_MAX__\000"
.LASF383:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF696:
	.ascii	"__SEGGER_RTL_UINT_FAST8_MAX __UINT_FAST8_MAX__\000"
.LASF616:
	.ascii	"__SEGGER_RTL_INCLUDE_SEGGER_API 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF297:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF42:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF572:
	.ascii	"__SEGGER_RTL_FLOAT64_C_COMPLEX double _Complex\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF37:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF837:
	.ascii	"__SEGGER_RTL_FILE_IMPL_DEFINED \000"
.LASF804:
	.ascii	"__SEGGER_RTL_SMULL_X(X,Y) __SEGGER_RTL_SMULL_X_func"
	.ascii	"((X), (Y))\000"
.LASF922:
	.ascii	"UINT16_C(x) __SEGGER_RTL_UINT16_C(x)\000"
.LASF218:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF880:
	.ascii	"UINT_LEAST32_WIDTH __SEGGER_RTL_UINT_LEAST32_WIDTH\000"
.LASF766:
	.ascii	"__CONCAT1(X,S) __CONCAT(X, S)\000"
.LASF270:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF228:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF711:
	.ascii	"__SEGGER_RTL_WINT_MIN __WINT_MIN__\000"
.LASF669:
	.ascii	"__SEGGER_RTL_SIG_ATOMIC_T __SIG_ATOMIC_TYPE__\000"
.LASF489:
	.ascii	"NRF52_PAN_74 1\000"
.LASF763:
	.ascii	"__SEGGER_RTL_WCHAR_WIDTH __WCHAR_WIDTH__\000"
.LASF215:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF713:
	.ascii	"__SEGGER_RTL_WCHAR_MIN __WCHAR_MIN__\000"
.LASF839:
	.ascii	"INT8_MAX __SEGGER_RTL_INT8_MAX\000"
.LASF896:
	.ascii	"UINT_FAST8_WIDTH __SEGGER_RTL_UINT_FAST8_WIDTH\000"
.LASF690:
	.ascii	"__SEGGER_RTL_UINT_LEAST32_MAX __UINT_LEAST32_MAX__\000"
.LASF734:
	.ascii	"__SEGGER_RTL_UINT32_WIDTH 32\000"
.LASF735:
	.ascii	"__SEGGER_RTL_UINT64_WIDTH 64\000"
.LASF699:
	.ascii	"__SEGGER_RTL_UINT_FAST16_MAX __UINT_FAST16_MAX__\000"
.LASF210:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF367:
	.ascii	"__DA_IBIT__ 32\000"
.LASF287:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF607:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_COMPACT 2\000"
.LASF233:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF32:
	.ascii	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\"\000"
.LASF818:
	.ascii	"__SEGGER_RTL_U64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF726:
	.ascii	"__SEGGER_RTL_LDBL_MIN __LDBL_MIN__\000"
.LASF526:
	.ascii	"__SEGGER_RTL_FLOAT16 _Float16\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF663:
	.ascii	"__SEGGER_RTL_WINT_T __WINT_TYPE__\000"
.LASF237:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF632:
	.ascii	"__SEGGER_RTL_INT32_T __INT32_TYPE__\000"
.LASF551:
	.ascii	"__SEGGER_RTL_PUBLIC_API __attribute__((__weak__))\000"
.LASF232:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF729:
	.ascii	"__SEGGER_RTL_INT32_WIDTH 32\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF256:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF542:
	.ascii	"__SEGGER_RTL_UMULL(lo,hi,x0,x1) do { __asm__( \"umu"
	.ascii	"ll %0, %1, %2, %3\" : \"=r\"(lo), \"=r\"(hi) : \"r\""
	.ascii	"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); } while "
	.ascii	"(0)\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF720:
	.ascii	"__SEGGER_RTL_SIG_ATOMIC_MIN 0\000"
.LASF479:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF323:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF694:
	.ascii	"__SEGGER_RTL_INT_FAST8_MAX __INT_FAST8_MAX__\000"
.LASF642:
	.ascii	"__SEGGER_RTL_U64 __SEGGER_RTL_UINT64_T\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF963:
	.ascii	"sensorsim_init\000"
.LASF443:
	.ascii	"__VFP_FP__ 1\000"
.LASF509:
	.ascii	"__SEGGER_RTL_CONF_H \000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF209:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF647:
	.ascii	"__SEGGER_RTL_UINT_LEAST16_T __UINT_LEAST16_TYPE__\000"
.LASF527:
	.ascii	"__SEGGER_RTL_MAX_ALIGN 8\000"
.LASF716:
	.ascii	"__SEGGER_RTL_INTPTR_MAX __INTPTR_MAX__\000"
.LASF418:
	.ascii	"__ARM_FEATURE_BTI\000"
.LASF279:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF613:
	.ascii	"__WIDTH_DOUBLE 2\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF259:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF163:
	.ascii	"__FLT_IS_IEC_60559__ 1\000"
.LASF206:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF524:
	.ascii	"__SEGGER_RTL_TYPESET 32\000"
.LASF318:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF943:
	.ascii	"long int\000"
.LASF593:
	.ascii	"__SEGGER_RTL_WR_WORD(A,W) __SEGGER_RTL_WR_WORD_func"
	.ascii	"(A, W)\000"
.LASF255:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF252:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF260:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF709:
	.ascii	"__SEGGER_RTL_SIZE_MAX __SIZE_MAX__\000"
.LASF59:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF629:
	.ascii	"__SEGGER_RTL_I16 __SEGGER_RTL_INT16_T\000"
.LASF374:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF634:
	.ascii	"__SEGGER_RTL_I32_C(X) __SEGGER_RTL_INT32_C(X)\000"
.LASF894:
	.ascii	"INT_FAST64_WIDTH __SEGGER_RTL_INT_FAST64_WIDTH\000"
.LASF235:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF51:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF346:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF954:
	.ascii	"sensorsim_state_t\000"
.LASF453:
	.ascii	"__ARM_NEON__\000"
.LASF595:
	.ascii	"__SEGGER_RTL_SIGNAL_MAX 6\000"
.LASF715:
	.ascii	"__SEGGER_RTL_PTRDIFF_MIN (-__SEGGER_RTL_PTRDIFF_MAX"
	.ascii	" - 1)\000"
.LASF456:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF300:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF739:
	.ascii	"__SEGGER_RTL_INT_LEAST32_WIDTH __INT_LEAST32_WIDTH_"
	.ascii	"_\000"
.LASF868:
	.ascii	"INT_LEAST16_WIDTH __SEGGER_RTL_INT_LEAST16_WIDTH\000"
.LASF33:
	.ascii	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\"\000"
.LASF645:
	.ascii	"__SEGGER_RTL_UINT_LEAST8_T __UINT_LEAST8_TYPE__\000"
.LASF777:
	.ascii	"__SEGGER_RTL_UINTMAX_C(X) __UINTMAX_C(X)\000"
.LASF41:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF578:
	.ascii	"__SEGGER_RTL_P2I(X) ((unsigned)(X))\000"
.LASF450:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF692:
	.ascii	"__SEGGER_RTL_INT_LEAST64_MIN (-__SEGGER_RTL_INT_LEA"
	.ascii	"ST64_MAX - 1)\000"
.LASF582:
	.ascii	"__SEGGER_RTL_UNALIGNED_ATTR __attribute__((__aligne"
	.ascii	"d__(1)))\000"
.LASF179:
	.ascii	"__DBL_IS_IEC_60559__ 1\000"
.LASF49:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF590:
	.ascii	"__SEGGER_RTL_FILL_HEAD(A,W,C) __SEGGER_RTL_FILL_HEA"
	.ascii	"D_func(A, W, C)\000"
.LASF600:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGSEGV __aeabi_SIGSEGV\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF543:
	.ascii	"__SEGGER_RTL_UMULL_X(x,y) ((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(x) * (__SEGGER_RTL_U32)(y))\000"
.LASF921:
	.ascii	"UINT8_C(x) __SEGGER_RTL_UINT8_C(x)\000"
.LASF790:
	.ascii	"__SEGGER_RTL_MAX_HEAP_SIZE (8*1024*1024u)\000"
.LASF730:
	.ascii	"__SEGGER_RTL_INT64_WIDTH 64\000"
.LASF528:
	.ascii	"__SEGGER_RTL_FP_ABI 2\000"
.LASF904:
	.ascii	"PTRDIFF_MAX __SEGGER_RTL_PTRDIFF_MAX\000"
.LASF698:
	.ascii	"__SEGGER_RTL_INT_FAST16_MIN (-__SEGGER_RTL_INT_FAST"
	.ascii	"16_MAX - 1)\000"
.LASF376:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF639:
	.ascii	"__SEGGER_RTL_I64 __SEGGER_RTL_INT64_T\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF558:
	.ascii	"__SEGGER_RTL_CORE_HAS_REV 1\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF961:
	.ascii	"/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/examples"
	.ascii	"/ble_peripheral/ble_app_hrs/pca10040/s132/ses\000"
.LASF452:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF191:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF380:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF550:
	.ascii	"__SEGGER_RTL_REQUEST_INLINE __inline__\000"
.LASF448:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF336:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF617:
	.ascii	"__SEGGER_RTL_INCLUDE_C_API 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF897:
	.ascii	"UINT_FAST16_MAX __SEGGER_RTL_UINT_FAST16_MAX\000"
.LASF829:
	.ascii	"__SEGGER_RTL_SUBNORMALS_READ_AS_ZERO 1\000"
.LASF353:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF744:
	.ascii	"__SEGGER_RTL_UINT_LEAST32_WIDTH __INT_LEAST32_WIDTH"
	.ascii	"__\000"
.LASF931:
	.ascii	"SIG_ATOMIC_MAX __SEGGER_RTL_SIG_ATOMIC_MAX\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF241:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF866:
	.ascii	"INT_LEAST16_MIN __SEGGER_RTL_INT_LEAST16_MIN\000"
.LASF798:
	.ascii	"__SEGGER_RTL_ATOMIC_SYNCHRONIZE() __SEGGER_RTL_X_at"
	.ascii	"omic_synchronize()\000"
.LASF65:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF940:
	.ascii	"unsigned char\000"
.LASF657:
	.ascii	"__SEGGER_RTL_UINT_FAST32_T __UINT_FAST32_TYPE__\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF303:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF530:
	.ascii	"__SEGGER_RTL_FLT_SELECT(HEX,DEC) HEX\000"
.LASF275:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF701:
	.ascii	"__SEGGER_RTL_INT_FAST32_MIN (-__SEGGER_RTL_INT_FAST"
	.ascii	"32_MAX - 1)\000"
.LASF874:
	.ascii	"INT_LEAST64_WIDTH __SEGGER_RTL_INT_LEAST64_WIDTH\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF261:
	.ascii	"__FLT32X_IS_IEC_60559__ 1\000"
.LASF864:
	.ascii	"INT_LEAST8_MAX __SEGGER_RTL_INT_LEAST8_MAX\000"
.LASF873:
	.ascii	"INT_LEAST64_MAX __SEGGER_RTL_INT_LEAST64_MAX\000"
.LASF563:
	.ascii	"__SEGGER_RTL_CORE_HAS_CBZ_CBNZ 1\000"
.LASF540:
	.ascii	"__SEGGER_RTL_SMLAL(lo,hi,x0,x1) do { __asm__( \"sml"
	.ascii	"al %0, %1, %2, %3\" : \"+r\"(lo), \"+r\"(hi) : \"r\""
	.ascii	"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); } while "
	.ascii	"(0)\000"
.LASF507:
	.ascii	"__SEGGER_RTL_STDC_VERSION_CPP17 201703L\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF644:
	.ascii	"__SEGGER_RTL_INT_LEAST8_T __INT_LEAST8_TYPE__\000"
.LASF779:
	.ascii	"__SEGGER_RTL_ATOMIC_U16 __SEGGER_RTL_U16\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF758:
	.ascii	"__SEGGER_RTL_UINTPTR_WIDTH __INTPTR_WIDTH__\000"
.LASF506:
	.ascii	"__SEGGER_RTL_STDC_VERSION_CPP14 201402L\000"
.LASF175:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF673:
	.ascii	"__SEGGER_RTL_INT16_MAX __INT16_MAX__\000"
.LASF212:
	.ascii	"__FLT16_IS_IEC_60559__ 1\000"
.LASF438:
	.ascii	"__thumb2__ 1\000"
.LASF337:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF615:
	.ascii	"__SEGGER_RTL_FORCE_SOFT_FLOAT 0\000"
.LASF515:
	.ascii	"__SEGGER_RTL_UNREACHABLE() __builtin_unreachable()\000"
.LASF721:
	.ascii	"__SEGGER_RTL_FLT_MAX __FLT_MAX__\000"
.LASF949:
	.ascii	"_Bool\000"
.LASF776:
	.ascii	"__SEGGER_RTL_INTMAX_C(X) __INTMAX_C(X)\000"
.LASF774:
	.ascii	"__SEGGER_RTL_INT64_C(X) __INT64_C(X)\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF848:
	.ascii	"INT64_MAX __SEGGER_RTL_INT64_MAX\000"
.LASF401:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF677:
	.ascii	"__SEGGER_RTL_INT32_MIN (-__SEGGER_RTL_INT32_MAX - 1"
	.ascii	")\000"
.LASF937:
	.ascii	"char\000"
.LASF373:
	.ascii	"__USA_IBIT__ 16\000"
.LASF384:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF532:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLRM 0\000"
.LASF867:
	.ascii	"INT_LEAST16_MAX __SEGGER_RTL_INT_LEAST16_MAX\000"
.LASF932:
	.ascii	"__SEGGER_RTL_STDBOOL_H \000"
.LASF646:
	.ascii	"__SEGGER_RTL_INT_LEAST16_T __INT_LEAST16_TYPE__\000"
.LASF710:
	.ascii	"__SEGGER_RTL_WINT_MAX __WINT_MAX__\000"
.LASF495:
	.ascii	"__SEGGER_RTL_STDINT_H \000"
.LASF66:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF784:
	.ascii	"__SEGGER_RTL_FORMAT_WCHAR 1\000"
.LASF650:
	.ascii	"__SEGGER_RTL_INT_LEAST64_T __INT_LEAST64_TYPE__\000"
.LASF538:
	.ascii	"__SEGGER_RTL_SMULL_HI(x0,x1) ({ long __trash, __hi;"
	.ascii	" __asm__( \"smull %0, %1, %2, %3\" : \"=r\"(__trash"
	.ascii	"), \"=r\"(__hi) : \"r\"((unsigned)(x0)), \"r\"((uns"
	.ascii	"igned)(x1)) ); __hi; })\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF362:
	.ascii	"__HA_FBIT__ 7\000"
.LASF674:
	.ascii	"__SEGGER_RTL_INT16_MIN (-__SEGGER_RTL_INT16_MAX - 1"
	.ascii	")\000"
.LASF514:
	.ascii	"__SEGGER_RTL_NO_BUILTIN __attribute__((optimize(\"-"
	.ascii	"fno-tree-loop-distribute-patterns\")))\000"
.LASF229:
	.ascii	"__FLT32_IS_IEC_60559__ 1\000"
.LASF748:
	.ascii	"__SEGGER_RTL_INT_FAST16_WIDTH __INT_FAST16_WIDTH__\000"
.LASF257:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF202:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF771:
	.ascii	"__SEGGER_RTL_UINT16_C(X) __UINT16_C(X)\000"
.LASF268:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF959:
	.ascii	"GNU C99 13.3.1 20240614 -fmessage-length=0 -std=gnu"
	.ascii	"99 -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard"
	.ascii	" -mabi=aapcs -mfpu=fpv4-sp-d16 -mthumb -munaligned-"
	.ascii	"access -mtp=soft -mfp16-format=ieee -gdwarf-4 -g3 -"
	.ascii	"gpubnames -fomit-frame-pointer -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF269:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF454:
	.ascii	"__ARM_NEON\000"
.LASF796:
	.ascii	"__SEGGER_RTL_ATOMIC_LOCK() __SEGGER_RTL_X_atomic_lo"
	.ascii	"ck()\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF723:
	.ascii	"__SEGGER_RTL_DBL_MAX __DBL_MAX__\000"
.LASF184:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF610:
	.ascii	"__WIDTH_LONG_LONG 2\000"
.LASF176:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF769:
	.ascii	"__SEGGER_RTL_UINT8_C(X) __UINT8_C(X)\000"
.LASF916:
	.ascii	"WINT_WIDTH __SEGGER_RTL_WINT_WIDTH\000"
.LASF737:
	.ascii	"__SEGGER_RTL_INT_LEAST8_WIDTH __INT_LEAST8_WIDTH__\000"
.LASF366:
	.ascii	"__DA_FBIT__ 31\000"
.LASF825:
	.ascii	"__SEGGER_RTL_HUGE_VALF __builtin_huge_valf()\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1018\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF834:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIVM_X 0\000"
.LASF512:
	.ascii	"__SEGGER_RTL_ISA_T32 1\000"
.LASF819:
	.ascii	"__SEGGER_RTL_U64_MK(H,L) (((__SEGGER_RTL_U64)(__SEG"
	.ascii	"GER_RTL_U32)(H) << 32) + (__SEGGER_RTL_U32)(L))\000"
.LASF815:
	.ascii	"__SEGGER_RTL_SCALED_INTEGER 0\000"
.LASF854:
	.ascii	"UINT32_MAX __SEGGER_RTL_UINT32_MAX\000"
.LASF795:
	.ascii	"__SEGGER_RTL_NAN_FORMAT __SEGGER_RTL_NAN_FORMAT_IEE"
	.ascii	"E\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF756:
	.ascii	"__SEGGER_RTL_UINT_FAST128_WIDTH __SEGGER_RTL_UINT12"
	.ascii	"8_WIDTH\000"
.LASF239:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF238:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF203:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF700:
	.ascii	"__SEGGER_RTL_INT_FAST32_MAX __INT_FAST32_MAX__\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF574:
	.ascii	"__SEGGER_RTL_PREFER_BRANCH_FREE_CODE 1\000"
.LASF846:
	.ascii	"INT32_WIDTH __SEGGER_RTL_INT32_WIDTH\000"
.LASF608:
	.ascii	"__WIDTH_INT 0\000"
.LASF321:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF468:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF47:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF823:
	.ascii	"__SEGGER_RTL_NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF780:
	.ascii	"__SEGGER_RTL_ATOMIC_U64 __SEGGER_RTL_U64\000"
.LASF391:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF878:
	.ascii	"UINT_LEAST16_WIDTH __SEGGER_RTL_UINT_LEAST16_WIDTH\000"
.LASF587:
	.ascii	"__SEGGER_RTL_DIFF_INDEX(X,Y) __SEGGER_RTL_DIFF_INDE"
	.ascii	"X_func(X, Y)\000"
.LASF307:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF395:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF678:
	.ascii	"__SEGGER_RTL_UINT32_MAX __UINT32_MAX__\000"
.LASF322:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF497:
	.ascii	"__SEGGER_RTL_LIBC_CONF_DEFAULTS_H \000"
.LASF555:
	.ascii	"__SEGGER_RTL_CLZ_U32(X) __SEGGER_RTL_CLZ_U32_safe_i"
	.ascii	"nline(X)\000"
.LASF869:
	.ascii	"INT_LEAST32_MIN __SEGGER_RTL_INT_LEAST32_MIN\000"
.LASF725:
	.ascii	"__SEGGER_RTL_LDBL_MAX __LDBL_MAX__\000"
.LASF227:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF601:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGTERM __aeabi_SIGTERM\000"
.LASF194:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF368:
	.ascii	"__TA_FBIT__ 63\000"
.LASF962:
	.ascii	"sensorsim_measure\000"
.LASF564:
	.ascii	"__SEGGER_RTL_CORE_HAS_TBB_TBH 1\000"
.LASF461:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF812:
	.ascii	"__SEGGER_RTL_SPECIALIZE_COMPARES 1\000"
.LASF933:
	.ascii	"bool _Bool\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF187:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF802:
	.ascii	"__SEGGER_RTL_BitcastToU64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"U64_inline(X)\000"
.LASF319:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF772:
	.ascii	"__SEGGER_RTL_INT32_C(X) __INT32_C(X)\000"
.LASF488:
	.ascii	"NRF52832_XXAA 1\000"
.LASF534:
	.ascii	"__SEGGER_RTL_CORE_HAS_LSLL_LSRL_ASRL 0\000"
.LASF162:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF189:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF749:
	.ascii	"__SEGGER_RTL_INT_FAST32_WIDTH __INT_FAST32_WIDTH__\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF807:
	.ascii	"__SEGGER_RTL_DIVMOD_U64(Q,R,N,D) do { Q = (N) / (D)"
	.ascii	"; R = (N) - (Q)*(D); } while (0)\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF451:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF350:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF174:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF606:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_FAST 1\000"
.LASF271:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF347:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF628:
	.ascii	"__SEGGER_RTL_INT16_T __INT16_TYPE__\000"
.LASF267:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF335:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF835:
	.ascii	"__SEGGER_RTL_VERSION 42805\000"
.LASF951:
	.ascii	"sensorsim_cfg_t\000"
.LASF901:
	.ascii	"UINT_FAST64_MAX __SEGGER_RTL_UINT_FAST64_MAX\000"
.LASF272:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF379:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF738:
	.ascii	"__SEGGER_RTL_INT_LEAST16_WIDTH __INT_LEAST16_WIDTH_"
	.ascii	"_\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF785:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION 1\000"
.LASF652:
	.ascii	"__SEGGER_RTL_INT_FAST8_T __INT_FAST8_TYPE__\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF653:
	.ascii	"__SEGGER_RTL_UINT_FAST8_T __UINT_FAST8_TYPE__\000"
.LASF398:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF406:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF425:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF661:
	.ascii	"__SEGGER_RTL_UINTMAX_T __UINTMAX_TYPE__\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF415:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF487:
	.ascii	"NRF52 1\000"
.LASF858:
	.ascii	"INTMAX_MIN __SEGGER_RTL_INTMAX_MIN\000"
.LASF683:
	.ascii	"__SEGGER_RTL_INT_LEAST8_MIN (-__SEGGER_RTL_INT_LEAS"
	.ascii	"T8_MAX - 1)\000"
.LASF429:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF250:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF728:
	.ascii	"__SEGGER_RTL_INT16_WIDTH 16\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF783:
	.ascii	"__SEGGER_RTL_FORMAT_FLOAT_WIDTH __WIDTH_DOUBLE\000"
.LASF898:
	.ascii	"UINT_FAST16_WIDTH __SEGGER_RTL_UINT_FAST16_WIDTH\000"
.LASF284:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF923:
	.ascii	"UINT32_C(x) __SEGGER_RTL_UINT32_C(x)\000"
.LASF474:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF160:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF693:
	.ascii	"__SEGGER_RTL_UINT_LEAST64_MAX __UINT_LEAST64_MAX__\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF400:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF413:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF264:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF944:
	.ascii	"long unsigned int\000"
.LASF365:
	.ascii	"__SA_IBIT__ 16\000"
.LASF396:
	.ascii	"__GCC_DESTRUCTIVE_SIZE 64\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF421:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF251:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF893:
	.ascii	"INT_FAST64_MAX __SEGGER_RTL_INT_FAST64_MAX\000"
.LASF884:
	.ascii	"INT_FAST8_MAX __SEGGER_RTL_INT_FAST8_MAX\000"
.LASF622:
	.ascii	"__SEGGER_RTL_SIZEOF_PTR __SIZEOF_POINTER__\000"
.LASF567:
	.ascii	"__SEGGER_RTL_CORE_HAS_BLX_REG 1\000"
.LASF808:
	.ascii	"__SEGGER_RTL_NO_RETURN \000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF906:
	.ascii	"SIZE_MAX __SEGGER_RTL_SIZE_MAX\000"
.LASF856:
	.ascii	"UINT64_MAX __SEGGER_RTL_UINT64_MAX\000"
.LASF765:
	.ascii	"__CONCAT(X,S) X ## S\000"
.LASF63:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF333:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF276:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF360:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF890:
	.ascii	"INT_FAST32_MAX __SEGGER_RTL_INT_FAST32_MAX\000"
.LASF619:
	.ascii	"__SEGGER_RTL_SELECT_TYPESET(T16,T32,T64) T32\000"
.LASF706:
	.ascii	"__SEGGER_RTL_INTMAX_MAX __INTMAX_MAX__\000"
.LASF767:
	.ascii	"__XINTX_C(X,S) __CONCAT1(X, S)\000"
.LASF472:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF682:
	.ascii	"__SEGGER_RTL_INT_LEAST8_MAX __INT_LEAST8_MAX__\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF753:
	.ascii	"__SEGGER_RTL_UINT_FAST16_WIDTH __INT_FAST16_WIDTH__"
	.ascii	"\000"
.LASF470:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF224:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF722:
	.ascii	"__SEGGER_RTL_FLT_MIN __FLT_MIN__\000"
.LASF213:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF654:
	.ascii	"__SEGGER_RTL_INT_FAST16_T __INT_FAST16_TYPE__\000"
.LASF831:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIV_X 0\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF58:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF409:
	.ascii	"__ARM_FEATURE_AES\000"
.LASF565:
	.ascii	"__SEGGER_RTL_CORE_HAS_UXT_SXT 1\000"
.LASF625:
	.ascii	"__SEGGER_RTL_I8 __SEGGER_RTL_INT8_T\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF810:
	.ascii	"__SEGGER_RTL_USE_PARA(Para) (void)Para\000"
.LASF168:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF258:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF523:
	.ascii	"__SEGGER_RTL_PRI_32_PREFIX \"l\"\000"
.LASF359:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF691:
	.ascii	"__SEGGER_RTL_INT_LEAST64_MAX __INT_LEAST64_MAX__\000"
.LASF559:
	.ascii	"__SEGGER_RTL_CORE_HAS_PKHTB_PKHBT 1\000"
.LASF320:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF887:
	.ascii	"INT_FAST16_MAX __SEGGER_RTL_INT_FAST16_MAX\000"
.LASF665:
	.ascii	"__SEGGER_RTL_SIZEOF_WCHAR_T __SIZEOF_WCHAR_T__\000"
.LASF493:
	.ascii	"SWI_DISABLE0 1\000"
.LASF557:
	.ascii	"__SEGGER_RTL_CORE_HAS_UQADD_UQSUB 1\000"
.LASF298:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF407:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF200:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF249:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF797:
	.ascii	"__SEGGER_RTL_ATOMIC_UNLOCK(X) __SEGGER_RTL_X_atomic"
	.ascii	"_unlock(X)\000"
.LASF656:
	.ascii	"__SEGGER_RTL_INT_FAST32_T __INT_FAST32_TYPE__\000"
.LASF5:
	.ascii	"__GNUC__ 13\000"
.LASF714:
	.ascii	"__SEGGER_RTL_PTRDIFF_MAX __PTRDIFF_MAX__\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF662:
	.ascii	"__SEGGER_RTL_SIZE_T __SIZE_TYPE__\000"
.LASF317:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF594:
	.ascii	"__SEGGER_RTL_WR_PARTIAL_WORD(A,W,N) __SEGGER_RTL_WR"
	.ascii	"_PARTIAL_WORD_func(A, W, N)\000"
.LASF281:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF492:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF192:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF499:
	.ascii	"__SEGGER_RTL_STDC_VERSION_C90 199000L\000"
.LASF571:
	.ascii	"__SEGGER_RTL_FLOAT32_C_COMPLEX float _Complex\000"
.LASF222:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF393:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF329:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF434:
	.ascii	"__ARM_ARCH 7\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF945:
	.ascii	"long long int\000"
.LASF422:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF501:
	.ascii	"__SEGGER_RTL_STDC_VERSION_C99 199901L\000"
.LASF491:
	.ascii	"S132 1\000"
.LASF195:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF958:
	.ascii	"sensorsim_increment\000"
.LASF793:
	.ascii	"__SEGGER_RTL_STATE_THREAD __SEGGER_RTL_THREAD\000"
.LASF712:
	.ascii	"__SEGGER_RTL_WCHAR_MAX __WCHAR_MAX__\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF444:
	.ascii	"__ARM_FP\000"
.LASF697:
	.ascii	"__SEGGER_RTL_INT_FAST16_MAX __INT_FAST16_MAX__\000"
.LASF363:
	.ascii	"__HA_IBIT__ 8\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF394:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF752:
	.ascii	"__SEGGER_RTL_UINT_FAST8_WIDTH __INT_FAST8_WIDTH__\000"
.LASF664:
	.ascii	"__SEGGER_RTL_WCHAR_T __WCHAR_TYPE__\000"
.LASF234:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF568:
	.ascii	"__SEGGER_RTL_CORE_HAS_LONG_SHIFT 1\000"
.LASF778:
	.ascii	"__SEGGER_RTL_ATOMIC_U8 __SEGGER_RTL_U8\000"
.LASF171:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF689:
	.ascii	"__SEGGER_RTL_INT_LEAST32_MIN (-__SEGGER_RTL_INT_LEA"
	.ascii	"ST32_MAX - 1)\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF666:
	.ascii	"__SEGGER_RTL_PTRDIFF_T __PTRDIFF_TYPE__\000"
.LASF803:
	.ascii	"__SEGGER_RTL_BitcastToF64(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F64_inline(X)\000"
.LASF430:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF46:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF190:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF402:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF552:
	.ascii	"__SEGGER_RTL_FLOAT32_ABS(__m) ({ float __d; __asm__"
	.ascii	" __volatile__(\"vabs.f32 %[d], %[m]\" : [d] \"=t\"("
	.ascii	"__d) : [m] \"t\"(__m)); __d; })\000"
.LASF254:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF872:
	.ascii	"INT_LEAST64_MIN __SEGGER_RTL_INT_LEAST64_MIN\000"
.LASF280:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF877:
	.ascii	"UINT_LEAST16_MAX __SEGGER_RTL_UINT_LEAST16_MAX\000"
.LASF201:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF417:
	.ascii	"__ARM_FEATURE_PAUTH\000"
.LASF755:
	.ascii	"__SEGGER_RTL_UINT_FAST64_WIDTH __INT_FAST64_WIDTH__"
	.ascii	"\000"
.LASF263:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF503:
	.ascii	"__SEGGER_RTL_STDC_VERSION_C18 201710L\000"
.LASF892:
	.ascii	"INT_FAST64_MIN __SEGGER_RTL_INT_FAST64_MIN\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF757:
	.ascii	"__SEGGER_RTL_INTPTR_WIDTH __INTPTR_WIDTH__\000"
.LASF455:
	.ascii	"__ARM_NEON_FP\000"
.LASF927:
	.ascii	"WCHAR_MIN __SEGGER_RTL_WCHAR_MIN\000"
.LASF747:
	.ascii	"__SEGGER_RTL_INT_FAST8_WIDTH __INT_FAST8_WIDTH__\000"
.LASF862:
	.ascii	"UINTMAX_WIDTH __SEGGER_RTL_UINTMAX_WIDTH\000"
.LASF908:
	.ascii	"INTPTR_MIN __SEGGER_RTL_INTPTR_MIN\000"
.LASF277:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF358:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF684:
	.ascii	"__SEGGER_RTL_UINT_LEAST8_MAX __UINT_LEAST8_MAX__\000"
.LASF185:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF956:
	.ascii	"p_cfg\000"
.LASF204:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF61:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF253:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF605:
	.ascii	"__SEGGER_RTL_NAN_FORMAT_IEEE 0\000"
.LASF938:
	.ascii	"unsigned int\000"
.LASF576:
	.ascii	"__SEGGER_RTL_X_assert __aeabi_assert\000"
.LASF889:
	.ascii	"INT_FAST32_MIN __SEGGER_RTL_INT_FAST32_MIN\000"
.LASF813:
	.ascii	"__SEGGER_RTL_CLZ_U64(X) __SEGGER_RTL_CLZ_U64_inline"
	.ascii	"(X)\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF244:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF308:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF457:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF743:
	.ascii	"__SEGGER_RTL_UINT_LEAST16_WIDTH __INT_LEAST16_WIDTH"
	.ascii	"__\000"
.LASF913:
	.ascii	"RSIZE_MAX (SIZE_MAX / 2)\000"
.LASF242:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF338:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF39:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF903:
	.ascii	"PTRDIFF_MIN __SEGGER_RTL_PTRDIFF_MIN\000"
.LASF842:
	.ascii	"INT16_MAX __SEGGER_RTL_INT16_MAX\000"
.LASF947:
	.ascii	"incr\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF660:
	.ascii	"__SEGGER_RTL_INTMAX_T __INTMAX_TYPE__\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF423:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF352:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF344:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF199:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF611:
	.ascii	"__WIDTH_NONE 0\000"
.LASF618:
	.ascii	"__SEGGER_RTL_INCLUDE_BENCHMARKING 0\000"
.LASF522:
	.ascii	"__SEGGER_RTL_UNALIGNED_RW_FAULTS 0\000"
.LASF285:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF404:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF286:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF875:
	.ascii	"UINT_LEAST8_MAX __SEGGER_RTL_UINT_LEAST8_MAX\000"
.LASF836:
	.ascii	"__SEGGER_RTL_MAX_CATEGORY 5\000"
.LASF475:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF511:
	.ascii	"__SEGGER_RTL_ISA_T16 0\000"
.LASF794:
	.ascii	"__SEGGER_RTL_LOCALE_THREAD \000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF531:
	.ascii	"__SEGGER_RTL_ATOMIC_U32 unsigned\000"
.LASF173:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF895:
	.ascii	"UINT_FAST8_MAX __SEGGER_RTL_UINT_FAST8_MAX\000"
.LASF782:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH __WIDTH_LONG_LONG\000"
.LASF840:
	.ascii	"INT8_WIDTH __SEGGER_RTL_INT8_WIDTH\000"
.LASF465:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF533:
	.ascii	"__SEGGER_RTL_CORE_HAS_CSINC_CSNEG_CSINV 0\000"
.LASF935:
	.ascii	"false 0\000"
.LASF727:
	.ascii	"__SEGGER_RTL_INT8_WIDTH 8\000"
.LASF920:
	.ascii	"INT64_C(x) __SEGGER_RTL_INT64_C(x)\000"
.LASF649:
	.ascii	"__SEGGER_RTL_UINT_LEAST32_T __UINT_LEAST32_TYPE__\000"
.LASF934:
	.ascii	"true 1\000"
.LASF508:
	.ascii	"__SEGGER_RTL_STDC_VERSION __STDC_VERSION__\000"
.LASF372:
	.ascii	"__USA_FBIT__ 16\000"
.LASF879:
	.ascii	"UINT_LEAST32_MAX __SEGGER_RTL_UINT_LEAST32_MAX\000"
.LASF635:
	.ascii	"__SEGGER_RTL_UINT32_T __UINT32_TYPE__\000"
.LASF248:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF161:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF658:
	.ascii	"__SEGGER_RTL_INT_FAST64_T __INT_FAST64_TYPE__\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF169:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF545:
	.ascii	"__SEGGER_RTL_UNLIKELY(X) __builtin_expect((X), 0)\000"
.LASF586:
	.ascii	"__SEGGER_RTL_ZBYTE_INDEX(X) __SEGGER_RTL_ZBYTE_INDE"
	.ascii	"X_func(X)\000"
.LASF688:
	.ascii	"__SEGGER_RTL_INT_LEAST32_MAX __INT_LEAST32_MAX__\000"
.LASF172:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF428:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF561:
	.ascii	"__SEGGER_RTL_CORE_HAS_MOVW_MOVT 1\000"
.LASF432:
	.ascii	"__arm__ 1\000"
.LASF548:
	.ascii	"__SEGGER_RTL_NEVER_INLINE __attribute__((__noinline"
	.ascii	"__, __noclone__))\000"
.LASF762:
	.ascii	"__SEGGER_RTL_SIZE_WIDTH __SIZE_WIDTH__\000"
.LASF216:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF539:
	.ascii	"__SEGGER_RTL_SMULL(lo,hi,x0,x1) do { __asm__( \"smu"
	.ascii	"ll %0, %1, %2, %3\" : \"=r\"(lo), \"=r\"(hi) : \"r\""
	.ascii	"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); } while "
	.ascii	"(0)\000"
.LASF562:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV 1\000"
.LASF447:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF671:
	.ascii	"__SEGGER_RTL_INT8_MIN (-__SEGGER_RTL_INT8_MAX - 1)\000"
.LASF612:
	.ascii	"__WIDTH_FLOAT 1\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF845:
	.ascii	"INT32_MAX __SEGGER_RTL_INT32_MAX\000"
.LASF637:
	.ascii	"__SEGGER_RTL_U32_C(X) __SEGGER_RTL_UINT32_C(X)\000"
.LASF369:
	.ascii	"__TA_IBIT__ 64\000"
.LASF952:
	.ascii	"current_val\000"
.LASF826:
	.ascii	"__SEGGER_RTL_HUGE_VALL __builtin_huge_vall()\000"
.LASF412:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF604:
	.ascii	"__SEGGER_RTL_SIGNAL_SIG_IGN __aeabi_SIG_IGN\000"
.LASF441:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF764:
	.ascii	"__SEGGER_RTL_WINT_WIDTH __WINT_WIDTH__\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF197:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF912:
	.ascii	"UINTPTR_WIDTH __SEGGER_RTL_UINTPTR_WIDTH\000"
.LASF685:
	.ascii	"__SEGGER_RTL_INT_LEAST16_MAX __INT_LEAST16_MAX__\000"
.LASF822:
	.ascii	"__SEGGER_RTL_INFINITY __builtin_inff()\000"
.LASF278:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF416:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF781:
	.ascii	"__SEGGER_RTL_OPTIMIZE 0\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF283:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF549:
	.ascii	"__SEGGER_RTL_ALWAYS_INLINE __inline__ __attribute__"
	.ascii	"((__always_inline__))\000"
.LASF484:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF266:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF166:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF789:
	.ascii	"__SEGGER_RTL_MINIMAL_LOCALE 0\000"
.LASF928:
	.ascii	"WCHAR_MAX __SEGGER_RTL_WCHAR_MAX\000"
.LASF814:
	.ascii	"__SEGGER_RTL_CLZ_U64_SYNTHESIZED \000"
.LASF630:
	.ascii	"__SEGGER_RTL_UINT16_T __UINT16_TYPE__\000"
.LASF732:
	.ascii	"__SEGGER_RTL_UINT8_WIDTH 8\000"
.LASF510:
	.ascii	"__SEGGER_RTL_ARM_CONF_H \000"
.LASF214:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF953:
	.ascii	"is_increasing\000"
.LASF809:
	.ascii	"__SEGGER_RTL_RODATA_IS_RW 0\000"
.LASF801:
	.ascii	"__SEGGER_RTL_BitcastToF32(X) __SEGGER_RTL_BitcastTo"
	.ascii	"F32_inline(X)\000"
.LASF579:
	.ascii	"__SEGGER_RTL_I2P(X) ((void *)(X))\000"
.LASF708:
	.ascii	"__SEGGER_RTL_UINTMAX_MAX __UINTMAX_MAX__\000"
.LASF746:
	.ascii	"__SEGGER_RTL_UINT_LEAST128_WIDTH __SEGGER_RTL_UINT1"
	.ascii	"28_WIDTH\000"
.LASF631:
	.ascii	"__SEGGER_RTL_U16 __SEGGER_RTL_UINT16_T\000"
.LASF193:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF399:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF302:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF385:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF529:
	.ascii	"__SEGGER_RTL_FP_HW 1\000"
.LASF580:
	.ascii	"__SEGGER_RTL_ALIGN_PTR(X) (void *)(X)\000"
.LASF314:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF315:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF408:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF53:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF855:
	.ascii	"UINT32_WIDTH __SEGGER_RTL_UINT32_WIDTH\000"
.LASF882:
	.ascii	"UINT_LEAST64_WIDTH __SEGGER_RTL_UINT_LEAST64_WIDTH\000"
.LASF440:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF273:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF245:
	.ascii	"__FLT64_IS_IEC_60559__ 1\000"
.LASF786:
	.ascii	"__SEGGER_RTL_FORMAT_CHAR_CLASS 1\000"
.LASF863:
	.ascii	"INT_LEAST8_MIN __SEGGER_RTL_INT_LEAST8_MIN\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF577:
	.ascii	"__SEGGER_RTL_X_errno_addr __aeabi_errno_addr\000"
.LASF852:
	.ascii	"UINT16_MAX __SEGGER_RTL_UINT16_MAX\000"
.LASF500:
	.ascii	"__SEGGER_RTL_STDC_VERSION_C94 199409L\000"
.LASF754:
	.ascii	"__SEGGER_RTL_UINT_FAST32_WIDTH __INT_FAST32_WIDTH__"
	.ascii	"\000"
.LASF946:
	.ascii	"long long unsigned int\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF328:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF535:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLA 1\000"
.LASF196:
	.ascii	"__LDBL_IS_IEC_60559__ 1\000"
.LASF676:
	.ascii	"__SEGGER_RTL_INT32_MAX __INT32_MAX__\000"
.LASF341:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF435:
	.ascii	"__APCS_32__ 1\000"
.LASF724:
	.ascii	"__SEGGER_RTL_DBL_MIN __DBL_MIN__\000"
.LASF585:
	.ascii	"__SEGGER_RTL_ZBYTE_CHECK(X) __SEGGER_RTL_ZBYTE_CHEC"
	.ascii	"K_func(X)\000"
.LASF348:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF355:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF483:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF740:
	.ascii	"__SEGGER_RTL_INT_LEAST64_WIDTH __INT_LEAST64_WIDTH_"
	.ascii	"_\000"
.LASF929:
	.ascii	"WCHAR_WIDTH __SEGGER_RTL_WCHAR_WIDTH\000"
.LASF556:
	.ascii	"__SEGGER_RTL_CORE_HAS_ISA_SIMD32 1\000"
.LASF290:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF482:
	.ascii	"BOARD_PCA10040 1\000"
.LASF56:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF325:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF40:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF648:
	.ascii	"__SEGGER_RTL_INT_LEAST32_T __INT_LEAST32_TYPE__\000"
.LASF247:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF8:
	.ascii	"__VERSION__ \"13.3.1 20240614\"\000"
.LASF876:
	.ascii	"UINT_LEAST8_WIDTH __SEGGER_RTL_UINT_LEAST8_WIDTH\000"
.LASF156:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF841:
	.ascii	"INT16_MIN __SEGGER_RTL_INT16_MIN\000"
.LASF205:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF791:
	.ascii	"__SEGGER_RTL_ATEXIT_COUNT 1\000"
.LASF883:
	.ascii	"INT_FAST8_MIN __SEGGER_RTL_INT_FAST8_MIN\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF626:
	.ascii	"__SEGGER_RTL_UINT8_T __UINT8_TYPE__\000"
.LASF330:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF623:
	.ascii	"__SEGGER_RTL_SIZEOF_LDOUBLE 8\000"
.LASF289:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF569:
	.ascii	"__SEGGER_RTL_FAST_CODE_SECTION(X) __attribute__((__"
	.ascii	"section__(\".fast.\" X)))\000"
.LASF486:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF349:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF471:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF597:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGFPE __aeabi_SIGFPE\000"
.LASF832:
	.ascii	"__SEGGER_RTL_CORE_HAS_IDIV_X 0\000"
.LASF643:
	.ascii	"__SEGGER_RTL_U64_C(X) __SEGGER_RTL_UINT64_C(X)\000"
.LASF480:
	.ascii	"DEBUG_NRF 1\000"
.LASF537:
	.ascii	"__SEGGER_RTL_CORE_HAS_EXT_MUL 1\000"
.LASF638:
	.ascii	"__SEGGER_RTL_INT64_T __INT64_TYPE__\000"
.LASF361:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF364:
	.ascii	"__SA_FBIT__ 15\000"
.LASF296:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF570:
	.ascii	"__SEGGER_RTL_USE_FPU_FOR_IDIV 0\000"
.LASF745:
	.ascii	"__SEGGER_RTL_UINT_LEAST64_WIDTH __INT_LEAST64_WIDTH"
	.ascii	"__\000"
.LASF670:
	.ascii	"__SEGGER_RTL_INT8_MAX __INT8_MAX__\000"
.LASF459:
	.ascii	"__ARM_EABI__ 1\000"
.LASF811:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIZE 0\000"
.LASF609:
	.ascii	"__WIDTH_LONG 1\000"
.LASF473:
	.ascii	"__ELF__ 1\000"
.LASF439:
	.ascii	"__THUMBEL__ 1\000"
.LASF405:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF498:
	.ascii	"__SEGGER_RTL_BOOL _Bool\000"
.LASF343:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF641:
	.ascii	"__SEGGER_RTL_UINT64_T __UINT64_TYPE__\000"
.LASF853:
	.ascii	"UINT16_WIDTH __SEGGER_RTL_UINT16_WIDTH\000"
.LASF899:
	.ascii	"UINT_FAST32_MAX __SEGGER_RTL_UINT_FAST32_MAX\000"
.LASF827:
	.ascii	"__SEGGER_RTL_HIDE(X) __c_ ##X\000"
.LASF541:
	.ascii	"__SEGGER_RTL_UMULL_HI(x0,x1) ({ unsigned long __tra"
	.ascii	"sh, __hi; __asm__( \"umull %0, %1, %2, %3\" : \"=r\""
	.ascii	"(__trash), \"=r\"(__hi) : \"r\"((unsigned)(x0)), \""
	.ascii	"r\"((unsigned)(x1)) ); __hi; })\000"
.LASF332:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF741:
	.ascii	"__SEGGER_RTL_INT_LEAST128_WIDTH __SEGGER_RTL_INT128"
	.ascii	"_WIDTH\000"
.LASF871:
	.ascii	"INT_LEAST32_WIDTH __SEGGER_RTL_INT_LEAST32_WIDTH\000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF775:
	.ascii	"__SEGGER_RTL_UINT64_C(X) __UINT64_C(X)\000"
.LASF357:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF599:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGINT __aeabi_SIGINT\000"
.LASF57:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF392:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF651:
	.ascii	"__SEGGER_RTL_UINT_LEAST64_T __UINT_LEAST64_TYPE__\000"
.LASF485:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF544:
	.ascii	"__SEGGER_RTL_UMLAL(lo,hi,x0,x1) do { __asm__(\"umla"
	.ascii	"l %0, %1, %2, %3\" : \"+r\"(lo), \"+r\"(hi) : \"r\""
	.ascii	"((unsigned)(x0)), \"r\"((unsigned)(x1)) ); } while "
	.ascii	"(0)\000"
.LASF449:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF311:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF178:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF787:
	.ascii	"__SEGGER_RTL_FORMAT_INT_WIDTH\000"
.LASF295:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF902:
	.ascii	"UINT_FAST64_WIDTH __SEGGER_RTL_UINT_FAST64_WIDTH\000"
.LASF598:
	.ascii	"__SEGGER_RTL_SIGNAL_SIGILL __aeabi_SIGILL\000"
.LASF806:
	.ascii	"__SEGGER_RTL_DIVMOD_U32(Q,R,N,D) do { Q = (N) / (D)"
	.ascii	"; R = (N) - (Q)*(D); } while (0)\000"
.LASF305:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF67:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF833:
	.ascii	"__SEGGER_RTL_CORE_HAS_UDIVM_X 0\000"
.LASF378:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF165:
	.ascii	"__DBL_DIG__ 15\000"
.LASF291:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF573:
	.ascii	"__SEGGER_RTL_LDOUBLE_C_COMPLEX long double _Complex"
	.ascii	"\000"
.LASF603:
	.ascii	"__SEGGER_RTL_SIGNAL_SIG_ERR __aeabi_SIG_ERR\000"
.LASF420:
	.ascii	"__ARM_FEATURE_PAC_DEFAULT\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF460:
	.ascii	"__FDPIC__\000"
.LASF686:
	.ascii	"__SEGGER_RTL_INT_LEAST16_MIN (-__SEGGER_RTL_INT_LEA"
	.ascii	"ST16_MAX - 1)\000"
.LASF519:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_API 1\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF621:
	.ascii	"__SEGGER_RTL_SIZEOF_LONG __SIZEOF_LONG__\000"
.LASF667:
	.ascii	"__SEGGER_RTL_INTPTR_T __INTPTR_TYPE__\000"
.LASF560:
	.ascii	"__SEGGER_RTL_CORE_HAS_ADDW_SUBW 1\000"
.LASF914:
	.ascii	"WINT_MIN __SEGGER_RTL_WINT_MIN\000"
.LASF731:
	.ascii	"__SEGGER_RTL_INT128_WIDTH 128\000"
.LASF466:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF313:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF816:
	.ascii	"__SEGGER_RTL_FILE_IMPL __SEGGER_RTL_FILE_impl\000"
.LASF805:
	.ascii	"__SEGGER_RTL_SMULL_X_SYNTHESIZED \000"
.LASF941:
	.ascii	"short int\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF375:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF675:
	.ascii	"__SEGGER_RTL_UINT16_MAX __UINT16_MAX__\000"
.LASF381:
	.ascii	"__NO_INLINE__ 1\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF759:
	.ascii	"__SEGGER_RTL_INTMAX_WIDTH __INTMAX_WIDTH__\000"
.LASF464:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF177:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF230:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF910:
	.ascii	"INTPTR_WIDTH __SEGGER_RTL_INTPTR_WIDTH\000"
.LASF707:
	.ascii	"__SEGGER_RTL_INTMAX_MIN (-__SEGGER_RTL_INTMAX_MAX -"
	.ascii	" 1)\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF957:
	.ascii	"sensorsim_decrement\000"
.LASF736:
	.ascii	"__SEGGER_RTL_UINT128_WIDTH 128\000"
.LASF170:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF513:
	.ascii	"__SEGGER_RTL_ISA_ARM 2\000"
.LASF925:
	.ascii	"INTMAX_C(x) __SEGGER_RTL_INTMAX_C(x)\000"
.LASF681:
	.ascii	"__SEGGER_RTL_UINT64_MAX __UINT64_MAX__\000"
.LASF860:
	.ascii	"INTMAX_WIDTH __SEGGER_RTL_INTMAX_WIDTH\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF857:
	.ascii	"UINT64_WIDTH __SEGGER_RTL_UINT64_WIDTH\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF427:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF220:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF581:
	.ascii	"__SEGGER_RTL_ALIGN_REM(X) 0\000"
.LASF750:
	.ascii	"__SEGGER_RTL_INT_FAST64_WIDTH __INT_FAST64_WIDTH__\000"
.LASF342:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF312:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF377:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF517:
	.ascii	"__SEGGER_RTL_INCLUDE_AEABI_API 2\000"
.LASF282:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF301:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF668:
	.ascii	"__SEGGER_RTL_UINTPTR_T __UINTPTR_TYPE__\000"
.LASF403:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF554:
	.ascii	"__SEGGER_RTL_CORE_HAS_CLZ 1\000"
.LASF915:
	.ascii	"WINT_MAX __SEGGER_RTL_WINT_MAX\000"
.LASF411:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF627:
	.ascii	"__SEGGER_RTL_U8 __SEGGER_RTL_UINT8_T\000"
.LASF592:
	.ascii	"__SEGGER_RTL_RD_WORD(A) __SEGGER_RTL_RD_WORD_func(A"
	.ascii	")\000"
.LASF584:
	.ascii	"__SEGGER_RTL_WORD unsigned\000"
.LASF324:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF588:
	.ascii	"__SEGGER_RTL_DIFF_BYTE(X,N) __SEGGER_RTL_DIFF_BYTE_"
	.ascii	"func(X, N)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF225:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF208:
	.ascii	"__FLT16_DENORM_MIN__ 1.1\000"
.LASF339:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF773:
	.ascii	"__SEGGER_RTL_UINT32_C(X) __UINT32_C(X)\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF553:
	.ascii	"__SEGGER_RTL_FLOAT32_SQRT(__m) ({ float __d; __asm_"
	.ascii	"_ __volatile__(\"vsqrt.f32 %[d], %[m]\" : [d] \"=t\""
	.ascii	"(__d) : [m] \"t\"(__m)); __d; })\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF843:
	.ascii	"INT16_WIDTH __SEGGER_RTL_INT16_WIDTH\000"
.LASF463:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF633:
	.ascii	"__SEGGER_RTL_I32 __SEGGER_RTL_INT32_T\000"
.LASF851:
	.ascii	"UINT8_WIDTH __SEGGER_RTL_UINT8_WIDTH\000"
.LASF948:
	.ascii	"start_at_max\000"
.LASF414:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF799:
	.ascii	"__SEGGER_RTL_OFFSETOF(s,m) __builtin_offsetof(s, m)"
	.ascii	"\000"
.LASF847:
	.ascii	"INT64_MIN __SEGGER_RTL_INT64_MIN\000"
.LASF458:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF704:
	.ascii	"__SEGGER_RTL_INT_FAST64_MIN (-__SEGGER_RTL_INT_FAST"
	.ascii	"64_MAX - 1)\000"
.LASF446:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF299:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF659:
	.ascii	"__SEGGER_RTL_UINT_FAST64_T __UINT_FAST64_TYPE__\000"
.LASF397:
	.ascii	"__GCC_CONSTRUCTIVE_SIZE 64\000"
.LASF223:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF293:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF294:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF950:
	.ascii	"uint32_t\000"
.LASF520:
	.ascii	"__SEGGER_RTL_STRING_ASM 1\000"
.LASF198:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF436:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF476:
	.ascii	"__HEAP_SIZE__ 512\000"
.LASF821:
	.ascii	"__SEGGER_RTL_I64_L(X) ((__SEGGER_RTL_U32)(__SEGGER_"
	.ascii	"RTL_U64)(X))\000"
.LASF911:
	.ascii	"UINTPTR_MAX __SEGGER_RTL_UINTPTR_MAX\000"
.LASF445:
	.ascii	"__ARM_FP 4\000"
.LASF477:
	.ascii	"__GNU_LINKER 1\000"
.LASF64:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF521:
	.ascii	"__SEGGER_RTL_BYTE_ORDER (-1)\000"
.LASF371:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF316:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF331:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF820:
	.ascii	"__SEGGER_RTL_I64_H(X) ((__SEGGER_RTL_I32)((__SEGGER"
	.ascii	"_RTL_I64)(X) >> 32))\000"
.LASF181:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF614:
	.ascii	"__SEGGER_RTL_SIDE_BY_SIDE 0\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF231:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF788:
	.ascii	"__SEGGER_RTL_FORMAT_WIDTH_PRECISION\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF705:
	.ascii	"__SEGGER_RTL_UINT_FAST64_MAX __UINT_FAST64_MAX__\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF679:
	.ascii	"__SEGGER_RTL_INT64_MAX __INT64_MAX__\000"
.LASF547:
	.ascii	"__SEGGER_RTL_THREAD __thread\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF919:
	.ascii	"INT32_C(x) (x)\000"
.LASF188:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF942:
	.ascii	"short unsigned int\000"
.LASF292:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF226:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF207:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF437:
	.ascii	"__thumb__ 1\000"
.LASF907:
	.ascii	"SIZE_WIDTH __SEGGER_RTL_SIZE_WIDTH\000"
.LASF850:
	.ascii	"UINT8_MAX __SEGGER_RTL_UINT8_MAX\000"
.LASF824:
	.ascii	"__SEGGER_RTL_HUGE_VAL __builtin_huge_val()\000"
.LASF442:
	.ascii	"__ARMEL__ 1\000"
.LASF861:
	.ascii	"UINTMAX_MAX __SEGGER_RTL_UINTMAX_MAX\000"
.LASF469:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF546:
	.ascii	"__SEGGER_RTL_LIKELY(X) __builtin_expect((X), 1)\000"
.LASF504:
	.ascii	"__SEGGER_RTL_STDC_VERSION_CPP98 199711L\000"
.LASF936:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF575:
	.ascii	"__SEGGER_RTL_VA_LIST __builtin_va_list\000"
.LASF859:
	.ascii	"INTMAX_MAX __SEGGER_RTL_INTMAX_MAX\000"
.LASF742:
	.ascii	"__SEGGER_RTL_UINT_LEAST8_WIDTH __INT_LEAST8_WIDTH__"
	.ascii	"\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF930:
	.ascii	"SIG_ATOMIC_MIN __SEGGER_RTL_SIG_ATOMIC_MIN\000"
.LASF620:
	.ascii	"__SEGGER_RTL_SIZEOF_INT __SIZEOF_INT__\000"
.LASF768:
	.ascii	"__SEGGER_RTL_INT8_C(X) __INT8_C(X)\000"
.LASF433:
	.ascii	"__ARM_ARCH\000"
.LASF221:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF719:
	.ascii	"__SEGGER_RTL_SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__\000"
.LASF885:
	.ascii	"INT_FAST8_WIDTH __SEGGER_RTL_INT_FAST8_WIDTH\000"
.LASF888:
	.ascii	"INT_FAST16_WIDTH __SEGGER_RTL_INT_FAST16_WIDTH\000"
.LASF424:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF828:
	.ascii	"__SEGGER_RTL_RODATA const\000"
.LASF891:
	.ascii	"INT_FAST32_WIDTH __SEGGER_RTL_INT_FAST32_WIDTH\000"
.LASF525:
	.ascii	"__SEGGER_RTL_ADDRSIZE 32\000"
.LASF34:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF356:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF518:
	.ascii	"__SEGGER_RTL_INCLUDE_GNU_FP16_API 1\000"
.LASF703:
	.ascii	"__SEGGER_RTL_INT_FAST64_MAX __INT_FAST64_MAX__\000"
.LASF265:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF246:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF481:
	.ascii	"BLE_STACK_SUPPORT_REQD 1\000"
.LASF917:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF516:
	.ascii	"__SEGGER_RTL_TARGET_ISA __SEGGER_RTL_ISA_T32\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF602:
	.ascii	"__SEGGER_RTL_SIGNAL_SIG_DFL __aeabi_SIG_DFL\000"
.LASF870:
	.ascii	"INT_LEAST32_MAX __SEGGER_RTL_INT_LEAST32_MAX\000"
.LASF211:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SHA2\000"
.LASF909:
	.ascii	"INTPTR_MAX __SEGGER_RTL_INTPTR_MAX\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF345:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF817:
	.ascii	"__SEGGER_RTL_U64_H(X) ((__SEGGER_RTL_U32)((__SEGGER"
	.ascii	"_RTL_U64)(X) >> 32))\000"
.LASF167:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF718:
	.ascii	"__SEGGER_RTL_UINTPTR_MAX __UINTPTR_MAX__\000"
.LASF624:
	.ascii	"__SEGGER_RTL_INT8_T __INT8_TYPE__\000"
.LASF478:
	.ascii	"__SES_VERSION 82201\000"
.LASF306:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF240:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF536:
	.ascii	"__SEGGER_RTL_CORE_HAS_MLS 1\000"
.LASF164:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF288:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF865:
	.ascii	"INT_LEAST8_WIDTH __SEGGER_RTL_INT_LEAST8_WIDTH\000"
.LASF960:
	.ascii	"/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/componen"
	.ascii	"ts/libraries/sensorsim/sensorsim.c\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF54:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF770:
	.ascii	"__SEGGER_RTL_INT16_C(X) __INT16_C(X)\000"
.LASF886:
	.ascii	"INT_FAST16_MIN __SEGGER_RTL_INT_FAST16_MIN\000"
.LASF918:
	.ascii	"INT16_C(x) (x)\000"
.LASF467:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF955:
	.ascii	"p_state\000"
.LASF687:
	.ascii	"__SEGGER_RTL_UINT_LEAST16_MAX __UINT_LEAST16_MAX__\000"
	.ident	"GCC: (based on arm-13.3.Rel1 source release) 13.3.1 20240614"
