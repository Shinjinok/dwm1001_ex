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
	.file	"nrf_fstorage.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/fstorage/nrf_fstorage.c"
	.section	.text.nrf_fstorage_init,"ax",%progbits
	.align	1
	.global	nrf_fstorage_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_init, %function
nrf_fstorage_init:
.LFB12:
	.loc 1 61 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 62 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L2
	.loc 1 62 24 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L3
.L2:
	.loc 1 64 16
	movs	r3, #14
	b	.L4
.L3:
	.loc 1 67 17
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 69 17
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 69 25
	ldr	r3, [r3]
	.loc 1 69 17
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #12]
	blx	r3
.LVL0:
	mov	r3, r0
.L4:
	.loc 1 70 1
	mov	r0, r3
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE12:
	.size	nrf_fstorage_init, .-nrf_fstorage_init
	.section	.text.nrf_fstorage_uninit,"ax",%progbits
	.align	1
	.global	nrf_fstorage_uninit
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_uninit, %function
nrf_fstorage_uninit:
.LFB13:
	.loc 1 75 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 78 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L6
	.loc 1 80 16
	movs	r3, #14
	b	.L7
.L6:
	.loc 1 83 13
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 83 8
	cmp	r3, #0
	bne	.L8
	.loc 1 85 16
	movs	r3, #8
	b	.L7
.L8:
	.loc 1 88 15
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 88 23
	ldr	r3, [r3, #4]
	.loc 1 88 15
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	blx	r3
.LVL1:
	str	r0, [sp, #12]
	.loc 1 91 24
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 92 24
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 94 12
	ldr	r3, [sp, #12]
.L7:
	.loc 1 95 1
	mov	r0, r3
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE13:
	.size	nrf_fstorage_uninit, .-nrf_fstorage_uninit
	.section	.text.nrf_fstorage_read,"ax",%progbits
	.align	1
	.global	nrf_fstorage_read
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_read, %function
nrf_fstorage_read:
.LFB14:
	.loc 1 102 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 103 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L10
	.loc 1 103 24 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L11
.L10:
	.loc 1 105 16
	movs	r3, #14
	b	.L12
.L11:
	.loc 1 108 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 108 8
	cmp	r3, #0
	bne	.L13
	.loc 1 110 16
	movs	r3, #8
	b	.L12
.L13:
	.loc 1 113 8
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L14
	.loc 1 115 16
	movs	r3, #9
	b	.L12
.L14:
	.loc 1 119 14
	ldr	r0, [sp, #8]
	bl	addr_is_aligned32
	mov	r3, r0
	.loc 1 119 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 119 8 discriminator 1
	cmp	r3, #0
	bne	.L15
	.loc 1 120 14
	ldr	r2, [sp]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	addr_within_bounds
	mov	r3, r0
	.loc 1 120 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 120 9 discriminator 1
	cmp	r3, #0
	beq	.L16
.L15:
	.loc 1 122 16
	movs	r3, #16
	b	.L12
.L16:
	.loc 1 125 17
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 125 25
	ldr	r4, [r3, #8]
	.loc 1 125 17
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	blx	r4
.LVL2:
	mov	r3, r0
.L12:
	.loc 1 126 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE14:
	.size	nrf_fstorage_read, .-nrf_fstorage_read
	.section	.text.nrf_fstorage_write,"ax",%progbits
	.align	1
	.global	nrf_fstorage_write
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_write, %function
nrf_fstorage_write:
.LFB15:
	.loc 1 134 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 135 8
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L18
	.loc 1 135 24 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L19
.L18:
	.loc 1 137 16
	movs	r3, #14
	b	.L20
.L19:
	.loc 1 140 13
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 1 140 8
	cmp	r3, #0
	bne	.L21
	.loc 1 142 16
	movs	r3, #8
	b	.L20
.L21:
	.loc 1 146 8
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L22
	.loc 1 146 35 discriminator 1
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #4]
	.loc 1 146 49 discriminator 1
	ldr	r2, [r3, #4]
	.loc 1 146 29 discriminator 1
	ldr	r3, [sp, #8]
	udiv	r1, r3, r2
	mul	r2, r1, r2
	subs	r3, r3, r2
	.loc 1 146 20 discriminator 1
	cmp	r3, #0
	beq	.L23
.L22:
	.loc 1 148 16
	movs	r3, #9
	b	.L20
.L23:
	.loc 1 152 14
	ldr	r0, [sp, #16]
	bl	addr_is_aligned32
	mov	r3, r0
	.loc 1 152 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 152 8 discriminator 1
	cmp	r3, #0
	bne	.L24
	.loc 1 153 14
	ldr	r3, [sp, #12]
	mov	r0, r3
	bl	addr_is_aligned32
	mov	r3, r0
	.loc 1 153 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 153 9 discriminator 1
	cmp	r3, #0
	bne	.L24
	.loc 1 154 14
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	addr_within_bounds
	mov	r3, r0
	.loc 1 154 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 154 9 discriminator 1
	cmp	r3, #0
	beq	.L25
.L24:
	.loc 1 156 16
	movs	r3, #16
	b	.L20
.L25:
	.loc 1 159 17
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 1 159 25
	ldr	r4, [r3, #12]
	.loc 1 159 17
	ldr	r3, [sp, #32]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	blx	r4
.LVL3:
	mov	r3, r0
.L20:
	.loc 1 160 1
	mov	r0, r3
	add	sp, sp, #24
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE15:
	.size	nrf_fstorage_write, .-nrf_fstorage_write
	.section	.text.nrf_fstorage_erase,"ax",%progbits
	.align	1
	.global	nrf_fstorage_erase
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_erase, %function
nrf_fstorage_erase:
.LFB16:
	.loc 1 167 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 168 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L27
	.loc 1 170 16
	movs	r3, #14
	b	.L28
.L27:
	.loc 1 173 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 173 8
	cmp	r3, #0
	bne	.L29
	.loc 1 175 16
	movs	r3, #8
	b	.L28
.L29:
	.loc 1 178 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L30
	.loc 1 180 16
	movs	r3, #9
	b	.L28
.L30:
	.loc 1 184 32
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	.loc 1 184 46
	ldr	r3, [r3]
	.loc 1 184 59
	subs	r2, r3, #1
	.loc 1 184 25
	ldr	r3, [sp, #8]
	ands	r3, r3, r2
	.loc 1 184 8
	cmp	r3, #0
	bne	.L31
	.loc 1 185 61
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	.loc 1 185 75
	ldr	r3, [r3]
	.loc 1 185 14
	ldr	r2, [sp, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	addr_within_bounds
	mov	r3, r0
	.loc 1 185 13 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 185 9 discriminator 1
	cmp	r3, #0
	beq	.L32
.L31:
	.loc 1 187 16
	movs	r3, #16
	b	.L28
.L32:
	.loc 1 190 17
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 190 25
	ldr	r4, [r3, #16]
	.loc 1 190 17
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	blx	r4
.LVL4:
	mov	r3, r0
.L28:
	.loc 1 191 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE16:
	.size	nrf_fstorage_erase, .-nrf_fstorage_erase
	.section	.text.nrf_fstorage_rmap,"ax",%progbits
	.align	1
	.global	nrf_fstorage_rmap
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_rmap, %function
nrf_fstorage_rmap:
.LFB17:
	.loc 1 195 1
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
	.loc 1 196 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L34
	.loc 1 198 16
	movs	r3, #0
	b	.L35
.L34:
	.loc 1 201 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 201 25
	ldr	r3, [r3, #20]
	.loc 1 201 17
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	blx	r3
.LVL5:
	mov	r3, r0
.L35:
	.loc 1 202 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE17:
	.size	nrf_fstorage_rmap, .-nrf_fstorage_rmap
	.section	.text.nrf_fstorage_wmap,"ax",%progbits
	.align	1
	.global	nrf_fstorage_wmap
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_wmap, %function
nrf_fstorage_wmap:
.LFB18:
	.loc 1 206 1
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
	.loc 1 207 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L37
	.loc 1 209 16
	movs	r3, #0
	b	.L38
.L37:
	.loc 1 212 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 212 25
	ldr	r3, [r3, #24]
	.loc 1 212 17
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	blx	r3
.LVL6:
	mov	r3, r0
.L38:
	.loc 1 213 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE18:
	.size	nrf_fstorage_wmap, .-nrf_fstorage_wmap
	.section	.text.nrf_fstorage_is_busy,"ax",%progbits
	.align	1
	.global	nrf_fstorage_is_busy
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_fstorage_is_busy, %function
nrf_fstorage_is_busy:
.LFB19:
	.loc 1 217 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 220 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L40
	.loc 1 220 32 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 220 24 discriminator 1
	cmp	r3, #0
	bne	.L41
.L40:
.LBB2:
	.loc 1 222 23
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 222 9
	b	.L42
.L45:
	.loc 1 224 21
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	.loc 1 224 19
	ldr	r3, .L46
	add	r3, r3, r2
	str	r3, [sp, #4]
	.loc 1 225 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 225 16
	cmp	r3, #0
	beq	.L43
	.loc 1 228 25
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 228 32
	ldr	r3, [r3, #28]
	.loc 1 228 21
	ldr	r0, [sp, #4]
	blx	r3
.LVL7:
	mov	r3, r0
	.loc 1 228 20 discriminator 1
	cmp	r3, #0
	beq	.L43
	.loc 1 230 28
	movs	r3, #1
	b	.L44
.L43:
	.loc 1 222 62 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L42:
	.loc 1 222 34 discriminator 1
	ldr	r2, .L46+4
	ldr	r3, .L46
	subs	r3, r2, r3
	ldr	r2, .L46+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #4
	.loc 1 222 32 discriminator 1
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcc	.L45
.LBE2:
	.loc 1 235 16
	movs	r3, #0
	b	.L44
.L41:
	.loc 1 238 16
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 238 23
	ldr	r3, [r3, #28]
	.loc 1 238 12
	ldr	r0, [sp, #4]
	blx	r3
.LVL8:
	mov	r3, r0
.L44:
	.loc 1 239 1
	mov	r0, r3
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L47:
	.align	2
.L46:
	.word	__start_fs_data
	.word	__stop_fs_data
	.word	-858993459
	.cfi_endproc
.LFE19:
	.size	nrf_fstorage_is_busy, .-nrf_fstorage_is_busy
	.section	.text.addr_within_bounds,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	addr_within_bounds, %function
addr_within_bounds:
.LFB20:
	.loc 1 245 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 246 36
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 246 50
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcc	.L49
	.loc 1 247 19
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 1 247 25
	subs	r2, r3, #1
	.loc 1 247 36
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #16]
	.loc 1 246 50 discriminator 1
	cmp	r2, r3
	bhi	.L49
	.loc 1 246 50 is_stmt 0 discriminator 3
	movs	r3, #1
	.loc 1 246 50
	b	.L50
.L49:
	.loc 1 246 50 discriminator 4
	movs	r3, #0
.L50:
	.loc 1 246 50 discriminator 6
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 248 1 is_stmt 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE20:
	.size	addr_within_bounds, .-addr_within_bounds
	.section	.text.addr_is_aligned32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	addr_is_aligned32, %function
addr_is_aligned32:
.LFB21:
	.loc 1 252 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 253 19
	ldr	r3, [sp, #4]
	and	r3, r3, #3
	.loc 1 253 12
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 1 254 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE21:
	.size	addr_is_aligned32, .-addr_is_aligned32
	.text
.Letext0:
	.file 2 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stdint.h"
	.file 3 "../../../nRF5_SDK_14.2.0/components/libraries/util/sdk_errors.h"
	.file 4 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/fstorage/nrf_fstorage.h"
	.file 5 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stddef.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x673
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
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
	.4byte	.LASF7
	.byte	0x2
	.2byte	0x111
	.byte	0x29
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x41
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.2byte	0x115
	.byte	0x29
	.4byte	0x7c
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
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x9d
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x4
	.byte	0x59
	.byte	0x1
	.4byte	0xbe
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x5d
	.byte	0x3
	.4byte	0x9d
	.uleb128 0x9
	.byte	0x14
	.byte	0x4
	.byte	0x61
	.byte	0x9
	.4byte	0x114
	.uleb128 0xa
	.ascii	"id\000"
	.byte	0x4
	.byte	0x63
	.byte	0x1d
	.4byte	0xbe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x64
	.byte	0x1d
	.4byte	0x91
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x65
	.byte	0x1d
	.4byte	0x6f
	.byte	0x8
	.uleb128 0xa
	.ascii	"len\000"
	.byte	0x4
	.byte	0x66
	.byte	0x1d
	.4byte	0x6f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x67
	.byte	0x1d
	.4byte	0x114
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x68
	.byte	0x3
	.4byte	0xca
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6f
	.byte	0x10
	.4byte	0x12e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x134
	.uleb128 0xe
	.4byte	0x13f
	.uleb128 0xf
	.4byte	0x13f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x116
	.uleb128 0x9
	.byte	0xc
	.byte	0x4
	.byte	0x73
	.byte	0x9
	.4byte	0x183
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x75
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x76
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x77
	.byte	0xe
	.4byte	0x188
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x78
	.byte	0xe
	.4byte	0x188
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x145
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x79
	.byte	0x9
	.4byte	0x183
	.uleb128 0x9
	.byte	0x14
	.byte	0x4
	.byte	0x87
	.byte	0x9
	.4byte	0x1e6
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x8a
	.byte	0x27
	.4byte	0x261
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x8d
	.byte	0x1b
	.4byte	0x267
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x93
	.byte	0x20
	.4byte	0x122
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x9b
	.byte	0xe
	.4byte	0x6f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0xa3
	.byte	0xe
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x20
	.byte	0x4
	.byte	0xa8
	.byte	0x10
	.4byte	0x25c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0xab
	.byte	0x12
	.4byte	0x298
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0xad
	.byte	0x12
	.4byte	0x298
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0xaf
	.byte	0x12
	.4byte	0x2c2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0xb1
	.byte	0x12
	.4byte	0x2f2
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0xb3
	.byte	0x12
	.4byte	0x316
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0xb5
	.byte	0x17
	.4byte	0x336
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0xb7
	.byte	0x11
	.4byte	0x356
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0xb9
	.byte	0xc
	.4byte	0x36b
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x1e6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x18f
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x4
	.byte	0xa4
	.byte	0x3
	.4byte	0x19b
	.uleb128 0x5
	.4byte	0x26d
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x292
	.uleb128 0xf
	.4byte	0x292
	.uleb128 0xf
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x26d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xf
	.4byte	0x114
	.uleb128 0xf
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x279
	.uleb128 0xd
	.byte	0x4
	.4byte	0x29e
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x2eb
	.uleb128 0xf
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xf
	.4byte	0x2eb
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xf
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2f1
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c8
	.uleb128 0x11
	.4byte	0x91
	.4byte	0x316
	.uleb128 0xf
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xf
	.4byte	0x6f
	.uleb128 0xf
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2f8
	.uleb128 0x11
	.4byte	0x330
	.4byte	0x330
	.uleb128 0xf
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x31c
	.uleb128 0x11
	.4byte	0x350
	.4byte	0x350
	.uleb128 0xf
	.4byte	0x2bc
	.uleb128 0xf
	.4byte	0x6f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x41
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33c
	.uleb128 0x11
	.4byte	0x188
	.4byte	0x36b
	.uleb128 0xf
	.4byte	0x2bc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x4
	.byte	0xba
	.byte	0x9
	.4byte	0x25c
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x48
	.byte	0x1d
	.4byte	0x33
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF42
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0x292
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0x114
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xfb
	.byte	0xd
	.4byte	0x188
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xfb
	.byte	0x28
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0x188
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41a
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf2
	.byte	0x37
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf3
	.byte	0x37
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.byte	0xf4
	.byte	0x37
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd8
	.byte	0x6
	.4byte	0x188
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45b
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd8
	.byte	0x32
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.byte	0xde
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0xcd
	.byte	0xb
	.4byte	0x350
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xcd
	.byte	0x34
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xcd
	.byte	0x43
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc2
	.byte	0x11
	.4byte	0x330
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cd
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc2
	.byte	0x3a
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc2
	.byte	0x49
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.4byte	0x91
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa3
	.byte	0x36
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa4
	.byte	0x36
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.byte	0xa5
	.byte	0x36
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa6
	.byte	0x36
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.4byte	0x91
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x81
	.byte	0x36
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x1
	.byte	0x82
	.byte	0x36
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0x83
	.byte	0x36
	.4byte	0x2eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.byte	0x84
	.byte	0x36
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x85
	.byte	0x36
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x91
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e1
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.byte	0x35
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.byte	0x63
	.byte	0x35
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x64
	.byte	0x35
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.byte	0x65
	.byte	0x35
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x49
	.byte	0xc
	.4byte	0x91
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x628
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x49
	.byte	0x31
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4a
	.byte	0x31
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.ascii	"rc\000"
	.byte	0x1
	.byte	0x4c
	.byte	0x10
	.4byte	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3a
	.byte	0xc
	.4byte	0x91
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x670
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3a
	.byte	0x33
	.4byte	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3b
	.byte	0x33
	.4byte	0x670
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3c
	.byte	0x33
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x371
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xf2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x677
	.4byte	0x3a8
	.ascii	"addr_is_aligned32\000"
	.4byte	0x3d2
	.ascii	"addr_within_bounds\000"
	.4byte	0x41a
	.ascii	"nrf_fstorage_is_busy\000"
	.4byte	0x45b
	.ascii	"nrf_fstorage_wmap\000"
	.4byte	0x494
	.ascii	"nrf_fstorage_rmap\000"
	.4byte	0x4cd
	.ascii	"nrf_fstorage_erase\000"
	.4byte	0x524
	.ascii	"nrf_fstorage_write\000"
	.4byte	0x58a
	.ascii	"nrf_fstorage_read\000"
	.4byte	0x5e1
	.ascii	"nrf_fstorage_uninit\000"
	.4byte	0x628
	.ascii	"nrf_fstorage_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1b8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x677
	.4byte	0x25
	.ascii	"int\000"
	.4byte	0x2c
	.ascii	"char\000"
	.4byte	0x33
	.ascii	"unsigned int\000"
	.4byte	0x3a
	.ascii	"signed char\000"
	.4byte	0x53
	.ascii	"unsigned char\000"
	.4byte	0x41
	.ascii	"uint8_t\000"
	.4byte	0x5a
	.ascii	"short int\000"
	.4byte	0x61
	.ascii	"short unsigned int\000"
	.4byte	0x68
	.ascii	"long int\000"
	.4byte	0x7c
	.ascii	"long unsigned int\000"
	.4byte	0x6f
	.ascii	"uint32_t\000"
	.4byte	0x83
	.ascii	"long long int\000"
	.4byte	0x8a
	.ascii	"long long unsigned int\000"
	.4byte	0x91
	.ascii	"ret_code_t\000"
	.4byte	0xbe
	.ascii	"nrf_fstorage_evt_id_t\000"
	.4byte	0x116
	.ascii	"nrf_fstorage_evt_t\000"
	.4byte	0x122
	.ascii	"nrf_fstorage_evt_handler_t\000"
	.4byte	0x188
	.ascii	"_Bool\000"
	.4byte	0x18f
	.ascii	"nrf_fstorage_info_t\000"
	.4byte	0x26d
	.ascii	"nrf_fstorage_t\000"
	.4byte	0x1e6
	.ascii	"nrf_fstorage_api_s\000"
	.4byte	0x371
	.ascii	"nrf_fstorage_api_t\000"
	.4byte	0x37d
	.ascii	"size_t\000"
	.4byte	0x389
	.ascii	"double\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"start_addr\000"
.LASF17:
	.ascii	"result\000"
.LASF28:
	.ascii	"p_api\000"
.LASF21:
	.ascii	"nrf_fstorage_evt_handler_t\000"
.LASF36:
	.ascii	"write\000"
.LASF15:
	.ascii	"NRF_FSTORAGE_EVT_ERASE_RESULT\000"
.LASF39:
	.ascii	"nrf_fstorage_t\000"
.LASF63:
	.ascii	"/home/sjo/dwm1001-examples/examples/ss_twr_init_int"
	.ascii	"/SES\000"
.LASF54:
	.ascii	"nrf_fstorage_write\000"
.LASF46:
	.ascii	"addr_within_bounds\000"
.LASF4:
	.ascii	"short int\000"
.LASF41:
	.ascii	"size_t\000"
.LASF16:
	.ascii	"nrf_fstorage_evt_id_t\000"
.LASF13:
	.ascii	"NRF_FSTORAGE_EVT_READ_RESULT\000"
.LASF50:
	.ascii	"nrf_fstorage_rmap\000"
.LASF45:
	.ascii	"addr_is_aligned32\000"
.LASF53:
	.ascii	"p_context\000"
.LASF52:
	.ascii	"page_addr\000"
.LASF7:
	.ascii	"uint8_t\000"
.LASF58:
	.ascii	"p_dest\000"
.LASF29:
	.ascii	"p_flash_info\000"
.LASF56:
	.ascii	"p_src\000"
.LASF30:
	.ascii	"evt_handler\000"
.LASF64:
	.ascii	"nrf_fstorage_api_s\000"
.LASF40:
	.ascii	"nrf_fstorage_api_t\000"
.LASF35:
	.ascii	"read\000"
.LASF22:
	.ascii	"erase_unit\000"
.LASF10:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"program_unit\000"
.LASF6:
	.ascii	"long int\000"
.LASF47:
	.ascii	"p_fs\000"
.LASF62:
	.ascii	"/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/componen"
	.ascii	"ts/libraries/fstorage/nrf_fstorage.c\000"
.LASF14:
	.ascii	"NRF_FSTORAGE_EVT_WRITE_RESULT\000"
.LASF32:
	.ascii	"end_addr\000"
.LASF51:
	.ascii	"nrf_fstorage_erase\000"
.LASF55:
	.ascii	"dest\000"
.LASF49:
	.ascii	"nrf_fstorage_wmap\000"
.LASF24:
	.ascii	"rmap\000"
.LASF57:
	.ascii	"nrf_fstorage_read\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF38:
	.ascii	"is_busy\000"
.LASF34:
	.ascii	"uninit\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"char\000"
.LASF33:
	.ascii	"init\000"
.LASF18:
	.ascii	"addr\000"
.LASF19:
	.ascii	"p_param\000"
.LASF26:
	.ascii	"_Bool\000"
.LASF48:
	.ascii	"nrf_fstorage_is_busy\000"
.LASF25:
	.ascii	"wmap\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF42:
	.ascii	"double\000"
.LASF27:
	.ascii	"nrf_fstorage_info_t\000"
.LASF60:
	.ascii	"nrf_fstorage_init\000"
.LASF61:
	.ascii	"GNU C99 13.3.1 20240614 -fmessage-length=0 -std=gnu"
	.ascii	"99 -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard"
	.ascii	" -mabi=aapcs -mfpu=fpv4-sp-d16 -mthumb -munaligned-"
	.ascii	"access -mtp=soft -mfp16-format=ieee -gdwarf-4 -g2 -"
	.ascii	"gpubnames -fomit-frame-pointer -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF37:
	.ascii	"erase\000"
.LASF59:
	.ascii	"nrf_fstorage_uninit\000"
.LASF43:
	.ascii	"__start_fs_data\000"
.LASF20:
	.ascii	"nrf_fstorage_evt_t\000"
.LASF44:
	.ascii	"__stop_fs_data\000"
.LASF12:
	.ascii	"ret_code_t\000"
	.ident	"GCC: (based on arm-13.3.Rel1 source release) 13.3.1 20240614"
