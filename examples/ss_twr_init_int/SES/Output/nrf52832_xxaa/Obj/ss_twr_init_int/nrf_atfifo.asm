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
	.file	"nrf_atfifo.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo.c"
	.section	.text.nrf_atfifo_wspace_req,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_wspace_req, %function
nrf_atfifo_wspace_req:
.LFB163:
	.file 2 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h"
	.loc 2 353 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 359 5
	ldr	r3, [sp, #4]
	.syntax unified
@ 359 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h" 1
	1:                                                             
   ldrex r1, [r3, #4]              
   uxth r2, r1                               
                                                               
   ldrh  r0, [r3, #14]             
   add   r2, r0                                  
   ldrh  r0, [r3, #12]              
   cmp   r2, r0                                  
   it    hs                                                    
   subhs r2, r2, r0                     
                                                               
   ldrh  r0, [r3, #8]               
   cmp   r2, r0                                  
   ittt  eq                                                    
   clrexeq                                                     
   moveq r3, #0                                  
   beq.n 2f                                                    
                                                               
   pkhbt r2, r2, r1                 
                                                               
   strex r0, r2, [r3, #4]     
   cmp   r0, #0                                           
   bne.n 1b                                                    
                                                               
   mov r3, #1                                     
2:                                                             

@ 0 "" 2
	.thumb
	.syntax unified
	strb	r3, [sp, #15]
	str	r0, [sp, #20]
	str	r1, [sp, #8]
	str	r2, [sp, #16]
	.loc 2 403 21
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 2 406 12
	ldrb	r3, [sp, #15]
	uxtb	r3, r3
	.loc 2 407 1
	mov	r0, r3
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE163:
	.size	nrf_atfifo_wspace_req, .-nrf_atfifo_wspace_req
	.section	.text.nrf_atfifo_wspace_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_wspace_close, %function
nrf_atfifo_wspace_close:
.LFB164:
	.loc 2 411 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 2 415 5
	ldr	r1, [sp, #4]
	.syntax unified
@ 415 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h" 1
	1:                                                         
   ldrex r3, [r1, #4]          
   pkhbt r3,r3, r3, lsl #16     
                                                           
   strex r2, r3, [r1, #4] 
   cmp   r2, #0                                       
   bne.n 1b                                                

@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 2 435 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE164:
	.size	nrf_atfifo_wspace_close, .-nrf_atfifo_wspace_close
	.section	.text.nrf_atfifo_rspace_req,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_rspace_req, %function
nrf_atfifo_rspace_req:
.LFB165:
	.loc 2 439 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 445 5
	ldr	r3, [sp, #4]
	.syntax unified
@ 445 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h" 1
	1:                                                         
   ldrex r1, [r3, #8]          
   uxth r2, r1, ror #16                  
                                                           
   ldrh  r0, [r3, #6]           
   cmp   r2, r0                              
   ittt  eq                                                
   clrexeq                                                 
   moveq r3, #0                              
   beq.n   2f                                              
                                                           
   ldrh  r0, [r3, #14]         
   add   r2, r0                              
   ldrh  r0, [r3, #12]          
   cmp   r2, r0                              
   it    hs                                                
   subhs r2, r2, r0                 
                                                           
   pkhbt r2, r1, r2, lsl #16    
                                                           
   strex r0, r2, [r3, #8] 
   cmp   r0, #0                                       
   bne.n 1b                                                
                                                           
   mov r3, #1                                 
2:                                                         

@ 0 "" 2
	.thumb
	.syntax unified
	strb	r3, [sp, #15]
	str	r0, [sp, #20]
	str	r1, [sp, #8]
	str	r2, [sp, #16]
	.loc 2 489 21
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 2 492 12
	ldrb	r3, [sp, #15]
	uxtb	r3, r3
	.loc 2 493 1
	mov	r0, r3
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE165:
	.size	nrf_atfifo_rspace_req, .-nrf_atfifo_rspace_req
	.section	.text.nrf_atfifo_rspace_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_rspace_close, %function
nrf_atfifo_rspace_close:
.LFB166:
	.loc 2 497 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 2 501 5
	ldr	r1, [sp, #4]
	.syntax unified
@ 501 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h" 1
	1:                                                         
   ldrex r3, [r1, #8]          
   pkhtb r3,r3, r3, asr #16     
                                                           
   strex r2, r3, [r1, #8] 
   cmp   r2, #0                                       
   bne.n 1b                                                

@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 2 521 1
	nop
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE166:
	.size	nrf_atfifo_rspace_close, .-nrf_atfifo_rspace_close
	.section	.text.nrf_atfifo_space_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_space_clear, %function
nrf_atfifo_space_clear:
.LFB167:
	.loc 2 525 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 2 530 5
	ldr	r3, [sp, #4]
	.syntax unified
@ 530 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo_internal.h" 1
	1:                                                               
   ldrex   r1, [r3, #8]              
   ldrh    r2, [r3, #6]           
   cmp     r1, r1, ror #16                     
                                                                 
   mov     r0, #0                                  
                                                                 
   itett   ne                                                    
   uxthne  r1, r1                              
   orreq   r2, r2, r2, lsl #16        
   orrne   r2, r1, r2, lsl #16        
                                                                 
   bne.n   2f                                                    
                                                                 
   ldr     r1, [r3, #4]              
   cmp     r1, r1, ror #16                     
   it      eq                                                    
   moveq   r0, #1                                   
                                                                 
2:                                                               
   strex   r1, r2, [r3, #8] 
   cmp     r1, #0                                       
   bne.n     1b                                                  

@ 0 "" 2
	.thumb
	.syntax unified
	strb	r0, [sp, #15]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	.loc 2 570 12
	ldrb	r3, [sp, #15]
	uxtb	r3, r3
	.loc 2 571 1
	mov	r0, r3
	add	sp, sp, #24
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE167:
	.size	nrf_atfifo_space_clear, .-nrf_atfifo_space_clear
	.section	.text.nrf_atfifo_init,"ax",%progbits
	.align	1
	.global	nrf_atfifo_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_init, %function
nrf_atfifo_init:
.LFB168:
	.loc 1 52 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [sp, #6]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [sp, #4]	@ movhi
	.loc 1 53 8
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L10
	.loc 1 55 16
	movs	r3, #14
	b	.L11
.L10:
	.loc 1 57 11
	ldrh	r3, [sp, #6]
	ldrh	r2, [sp, #4]
	udiv	r1, r3, r2
	mul	r2, r1, r2
	subs	r3, r3, r2
	uxth	r3, r3
	.loc 1 57 8
	cmp	r3, #0
	beq	.L12
	.loc 1 59 16
	movs	r3, #9
	b	.L11
.L12:
	.loc 1 62 23
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 63 23
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 64 23
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 65 23
	ldr	r3, [sp, #12]
	ldrh	r2, [sp, #6]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	.loc 1 66 23
	ldr	r3, [sp, #12]
	ldrh	r2, [sp, #4]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	.loc 1 68 12
	movs	r3, #0
.L11:
	.loc 1 69 1
	mov	r0, r3
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE168:
	.size	nrf_atfifo_init, .-nrf_atfifo_init
	.section	.text.nrf_atfifo_clear,"ax",%progbits
	.align	1
	.global	nrf_atfifo_clear
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_clear, %function
nrf_atfifo_clear:
.LFB169:
	.loc 1 73 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	str	r0, [sp, #4]
	.loc 1 74 21
	ldr	r0, [sp, #4]
	bl	nrf_atfifo_space_clear
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 75 35
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	.loc 1 75 35 is_stmt 0 discriminator 1
	movs	r3, #0
	.loc 1 75 35
	b	.L16
.L14:
	.loc 1 75 35 discriminator 2
	movs	r3, #17
.L16:
	.loc 1 76 1 is_stmt 1
	mov	r0, r3
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE169:
	.size	nrf_atfifo_clear, .-nrf_atfifo_clear
	.section	.text.nrf_atfifo_alloc_put,"ax",%progbits
	.align	1
	.global	nrf_atfifo_alloc_put
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_alloc_put, %function
nrf_atfifo_alloc_put:
.LFB170:
	.loc 1 80 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 83 21
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_atfifo_item_alloc
	str	r0, [sp, #28]
	.loc 1 84 8
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L18
	.loc 1 86 16
	movs	r3, #4
	b	.L21
.L18:
	.loc 1 89 5
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #28]
	bl	memcpy
	.loc 1 91 15
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_atfifo_item_put
	mov	r3, r0
	strb	r3, [sp, #27]
	.loc 1 92 8
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L20
	.loc 1 94 20
	ldr	r3, [sp]
	ldrb	r2, [sp, #27]
	strb	r2, [r3]
.L20:
	.loc 1 96 12
	movs	r3, #0
.L21:
	.loc 1 97 1
	mov	r0, r3
	add	sp, sp, #36
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE170:
	.size	nrf_atfifo_alloc_put, .-nrf_atfifo_alloc_put
	.section	.text.nrf_atfifo_item_alloc,"ax",%progbits
	.align	1
	.global	nrf_atfifo_item_alloc
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_item_alloc, %function
nrf_atfifo_item_alloc:
.LFB171:
	.loc 1 101 1
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
	.loc 1 102 9
	ldr	r3, [sp]
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	nrf_atfifo_wspace_req
	mov	r3, r0
	.loc 1 102 8 discriminator 1
	cmp	r3, #0
	beq	.L23
	.loc 1 104 34
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 104 70
	ldr	r2, [sp]
	ldrh	r2, [r2]
	.loc 1 104 44
	add	r3, r3, r2
	b	.L24
.L23:
	.loc 1 106 12
	movs	r3, #0
.L24:
	.loc 1 107 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE171:
	.size	nrf_atfifo_item_alloc, .-nrf_atfifo_item_alloc
	.section	.text.nrf_atfifo_item_put,"ax",%progbits
	.align	1
	.global	nrf_atfifo_item_put
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_item_put, %function
nrf_atfifo_item_put:
.LFB172:
	.loc 1 111 1
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
	.loc 1 112 34
	ldr	r3, [sp]
	ldrh	r2, [r3]
	.loc 1 112 67
	ldr	r3, [sp]
	ldrh	r3, [r3, #2]
	.loc 1 112 8
	cmp	r2, r3
	bne	.L26
	.loc 1 114 9
	ldr	r0, [sp, #4]
	bl	nrf_atfifo_wspace_close
	.loc 1 115 16
	movs	r3, #1
	b	.L27
.L26:
	.loc 1 117 12
	movs	r3, #0
.L27:
	.loc 1 118 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE172:
	.size	nrf_atfifo_item_put, .-nrf_atfifo_item_put
	.section	.text.nrf_atfifo_get_free,"ax",%progbits
	.align	1
	.global	nrf_atfifo_get_free
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_get_free, %function
nrf_atfifo_get_free:
.LFB173:
	.loc 1 122 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 125 24
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_atfifo_item_get
	str	r0, [sp, #28]
	.loc 1 126 8
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L29
	.loc 1 128 16
	movs	r3, #5
	b	.L32
.L29:
	.loc 1 131 5
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #8]
	bl	memcpy
	.loc 1 133 16
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_atfifo_item_free
	mov	r3, r0
	strb	r3, [sp, #27]
	.loc 1 134 8
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L31
	.loc 1 136 21
	ldr	r3, [sp]
	ldrb	r2, [sp, #27]
	strb	r2, [r3]
.L31:
	.loc 1 138 12
	movs	r3, #0
.L32:
	.loc 1 139 1
	mov	r0, r3
	add	sp, sp, #36
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE173:
	.size	nrf_atfifo_get_free, .-nrf_atfifo_get_free
	.section	.text.nrf_atfifo_item_get,"ax",%progbits
	.align	1
	.global	nrf_atfifo_item_get
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_item_get, %function
nrf_atfifo_item_get:
.LFB174:
	.loc 1 143 1
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
	.loc 1 144 9
	ldr	r3, [sp]
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	nrf_atfifo_rspace_req
	mov	r3, r0
	.loc 1 144 8 discriminator 1
	cmp	r3, #0
	beq	.L34
	.loc 1 146 34
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 146 70
	ldr	r2, [sp]
	ldrh	r2, [r2, #2]
	.loc 1 146 44
	add	r3, r3, r2
	b	.L35
.L34:
	.loc 1 148 12
	movs	r3, #0
.L35:
	.loc 1 149 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE174:
	.size	nrf_atfifo_item_get, .-nrf_atfifo_item_get
	.section	.text.nrf_atfifo_item_free,"ax",%progbits
	.align	1
	.global	nrf_atfifo_item_free
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_atfifo_item_free, %function
nrf_atfifo_item_free:
.LFB175:
	.loc 1 153 1
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
	.loc 1 154 34
	ldr	r3, [sp]
	ldrh	r2, [r3]
	.loc 1 154 67
	ldr	r3, [sp]
	ldrh	r3, [r3, #2]
	.loc 1 154 8
	cmp	r2, r3
	bne	.L37
	.loc 1 156 9
	ldr	r0, [sp, #4]
	bl	nrf_atfifo_rspace_close
	.loc 1 157 16
	movs	r3, #1
	b	.L38
.L37:
	.loc 1 159 12
	movs	r3, #0
.L38:
	.loc 1 160 1
	mov	r0, r3
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE175:
	.size	nrf_atfifo_item_free, .-nrf_atfifo_item_free
	.text
.Letext0:
	.file 3 "/opt/SEGGER/segger_embedded_studio_8.22a/include/string.h"
	.file 4 "/opt/SEGGER/segger_embedded_studio_8.22a/include/stdint.h"
	.file 5 "../../../nRF5_SDK_14.2.0/components/libraries/util/sdk_errors.h"
	.file 6 "/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/components/libraries/atomic_fifo/nrf_atfifo.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x68a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xc
	.4byte	.LASF64
	.4byte	.LASF65
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2e
	.byte	0x1d
	.4byte	0x33
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x111
	.byte	0x29
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x113
	.byte	0x29
	.4byte	0x75
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x115
	.byte	0x29
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x9d
	.byte	0x12
	.4byte	0x83
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.byte	0x10
	.4byte	0xe3
	.uleb128 0x8
	.ascii	"wr\000"
	.byte	0x6
	.byte	0x6f
	.byte	0xe
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.ascii	"rd\000"
	.byte	0x6
	.byte	0x70
	.byte	0xe
	.4byte	0x68
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x71
	.byte	0x2
	.4byte	0xbd
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x4
	.byte	0x6
	.byte	0x7a
	.byte	0xf
	.4byte	0x115
	.uleb128 0xa
	.ascii	"tag\000"
	.byte	0x6
	.byte	0x7c
	.byte	0x1d
	.4byte	0x83
	.uleb128 0xa
	.ascii	"pos\000"
	.byte	0x6
	.byte	0x7d
	.byte	0x1d
	.4byte	0xe3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x7e
	.byte	0x2
	.4byte	0xef
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x10
	.byte	0x6
	.byte	0x86
	.byte	0x10
	.4byte	0x170
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x88
	.byte	0x1b
	.4byte	0x170
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x89
	.byte	0x1b
	.4byte	0x115
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x8a
	.byte	0x1b
	.4byte	0x115
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x8b
	.byte	0x1b
	.4byte	0x68
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x8c
	.byte	0x1b
	.4byte	0x68
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.4byte	0x170
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x8d
	.byte	0x2
	.4byte	0x121
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x6
	.byte	0x95
	.byte	0x10
	.4byte	0x19e
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x97
	.byte	0x19
	.4byte	0x115
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x98
	.byte	0x2
	.4byte	0x183
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x6
	.byte	0xa0
	.byte	0x10
	.4byte	0x1c5
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa2
	.byte	0x19
	.4byte	0x115
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0xa3
	.byte	0x2
	.4byte	0x1aa
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x3
	.byte	0x38
	.byte	0xb
	.4byte	0x170
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	0x170
	.uleb128 0xf
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	0x3a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0x11
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x98
	.byte	0x6
	.4byte	0x231
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x231
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x98
	.byte	0x30
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x98
	.byte	0x50
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF34
	.uleb128 0x6
	.4byte	0x231
	.uleb128 0x10
	.byte	0x4
	.4byte	0x177
	.uleb128 0xd
	.4byte	0x23d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1c5
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8e
	.byte	0x8
	.4byte	0x170
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x287
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8e
	.byte	0x31
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8e
	.byte	0x51
	.4byte	0x248
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x79
	.byte	0xc
	.4byte	0xb1
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30b
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.byte	0x35
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x79
	.byte	0x4a
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x79
	.byte	0x58
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x79
	.byte	0x65
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7b
	.byte	0x1b
	.4byte	0x1c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x7c
	.byte	0xa
	.4byte	0x231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x15
	.ascii	"p_s\000"
	.byte	0x1
	.byte	0x7d
	.byte	0x12
	.4byte	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x231
	.uleb128 0xd
	.4byte	0x30b
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	0x231
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34f
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6e
	.byte	0x2f
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6e
	.byte	0x4f
	.4byte	0x34f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.4byte	0x170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38e
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x64
	.byte	0x33
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x64
	.byte	0x53
	.4byte	0x34f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.4byte	0xb1
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x412
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4f
	.byte	0x36
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.byte	0x4b
	.4byte	0x1f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4f
	.byte	0x59
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4f
	.byte	0x6c
	.4byte	0x311
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x51
	.byte	0x1b
	.4byte	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x52
	.byte	0xa
	.4byte	0x231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0xb1
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44b
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x48
	.byte	0x32
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4a
	.byte	0xa
	.4byte	0x231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.4byte	0xb1
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x33
	.byte	0x31
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.byte	0x40
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x33
	.byte	0x50
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x33
	.byte	0x63
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x20c
	.byte	0x6
	.4byte	0x231
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fe
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x20c
	.byte	0x32
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x20e
	.byte	0x13
	.4byte	0x238
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x20f
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x210
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x1f0
	.byte	0x6
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x546
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x1f0
	.byte	0x33
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x1f2
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x1f3
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x1b6
	.byte	0x6
	.4byte	0x231
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c2
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x1b6
	.byte	0x31
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x1b6
	.byte	0x55
	.4byte	0x5c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x1b8
	.byte	0x13
	.4byte	0x238
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x1b9
	.byte	0x17
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x1ba
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x1bb
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x115
	.uleb128 0xd
	.4byte	0x5c2
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x19a
	.byte	0x6
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x615
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x19a
	.byte	0x33
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x19c
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x19d
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x160
	.byte	0x6
	.4byte	0x231
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x160
	.byte	0x31
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x160
	.byte	0x55
	.4byte	0x5c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x162
	.byte	0x13
	.4byte	0x238
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x163
	.byte	0x17
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x164
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x165
	.byte	0xe
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x15d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x68e
	.4byte	0x1d1
	.ascii	"memcpy\000"
	.4byte	0x1f8
	.ascii	"nrf_atfifo_item_free\000"
	.4byte	0x24e
	.ascii	"nrf_atfifo_item_get\000"
	.4byte	0x287
	.ascii	"nrf_atfifo_get_free\000"
	.4byte	0x316
	.ascii	"nrf_atfifo_item_put\000"
	.4byte	0x355
	.ascii	"nrf_atfifo_item_alloc\000"
	.4byte	0x38e
	.ascii	"nrf_atfifo_alloc_put\000"
	.4byte	0x412
	.ascii	"nrf_atfifo_clear\000"
	.4byte	0x44b
	.ascii	"nrf_atfifo_init\000"
	.4byte	0x4a2
	.ascii	"nrf_atfifo_space_clear\000"
	.4byte	0x4fe
	.ascii	"nrf_atfifo_rspace_close\000"
	.4byte	0x546
	.ascii	"nrf_atfifo_rspace_req\000"
	.4byte	0x5cd
	.ascii	"nrf_atfifo_wspace_close\000"
	.4byte	0x615
	.ascii	"nrf_atfifo_wspace_req\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x20e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x68e
	.4byte	0x25
	.ascii	"int\000"
	.4byte	0x2c
	.ascii	"char\000"
	.4byte	0x33
	.ascii	"unsigned int\000"
	.4byte	0x3a
	.ascii	"size_t\000"
	.4byte	0x46
	.ascii	"signed char\000"
	.4byte	0x5a
	.ascii	"unsigned char\000"
	.4byte	0x4d
	.ascii	"uint8_t\000"
	.4byte	0x61
	.ascii	"short int\000"
	.4byte	0x75
	.ascii	"short unsigned int\000"
	.4byte	0x68
	.ascii	"uint16_t\000"
	.4byte	0x7c
	.ascii	"long int\000"
	.4byte	0x95
	.ascii	"long unsigned int\000"
	.4byte	0x83
	.ascii	"uint32_t\000"
	.4byte	0x9c
	.ascii	"long long int\000"
	.4byte	0xa3
	.ascii	"long long unsigned int\000"
	.4byte	0xaa
	.ascii	"double\000"
	.4byte	0xb1
	.ascii	"ret_code_t\000"
	.4byte	0xbd
	.ascii	"nrf_atfifo_postag_pos_s\000"
	.4byte	0xe3
	.ascii	"nrf_atfifo_postag_pos_t\000"
	.4byte	0xef
	.ascii	"nrf_atfifo_postag_u\000"
	.4byte	0x115
	.ascii	"nrf_atfifo_postag_t\000"
	.4byte	0x121
	.ascii	"nrf_atfifo_s\000"
	.4byte	0x177
	.ascii	"nrf_atfifo_t\000"
	.4byte	0x183
	.ascii	"nrf_atfifo_item_put_s\000"
	.4byte	0x19e
	.ascii	"nrf_atfifo_item_put_t\000"
	.4byte	0x1aa
	.ascii	"nrf_atfifo_rcontext_s\000"
	.4byte	0x1c5
	.ascii	"nrf_atfifo_item_get_t\000"
	.4byte	0x231
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"p_old_head\000"
.LASF58:
	.ascii	"nrf_atfifo_wspace_close\000"
.LASF46:
	.ascii	"p_visible\000"
.LASF42:
	.ascii	"released\000"
.LASF64:
	.ascii	"/home/sjo/dwm1001-examples/nRF5_SDK_14.2.0/componen"
	.ascii	"ts/libraries/atomic_fifo/nrf_atfifo.c\000"
.LASF50:
	.ascii	"nrf_atfifo_init\000"
.LASF18:
	.ascii	"nrf_atfifo_postag_pos_s\000"
.LASF16:
	.ascii	"nrf_atfifo_postag_pos_t\000"
.LASF65:
	.ascii	"/home/sjo/dwm1001-examples/examples/ss_twr_init_int"
	.ascii	"/SES\000"
.LASF23:
	.ascii	"buf_size\000"
.LASF53:
	.ascii	"temp\000"
.LASF6:
	.ascii	"short int\000"
.LASF3:
	.ascii	"size_t\000"
.LASF51:
	.ascii	"old_head\000"
.LASF67:
	.ascii	"memcpy\000"
.LASF33:
	.ascii	"p_context\000"
.LASF44:
	.ascii	"nrf_atfifo_item_alloc\000"
.LASF25:
	.ascii	"nrf_atfifo_t\000"
.LASF22:
	.ascii	"head\000"
.LASF17:
	.ascii	"nrf_atfifo_postag_t\000"
.LASF66:
	.ascii	"nrf_atfifo_postag_u\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF47:
	.ascii	"visible\000"
.LASF55:
	.ascii	"nrf_atfifo_rspace_req\000"
.LASF60:
	.ascii	"nrf_atfifo_wspace_req\000"
.LASF12:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"long int\000"
.LASF31:
	.ascii	"nrf_atfifo_item_get_t\000"
.LASF20:
	.ascii	"p_buf\000"
.LASF37:
	.ascii	"nrf_atfifo_get_free\000"
.LASF41:
	.ascii	"context\000"
.LASF61:
	.ascii	"p_old_tail\000"
.LASF29:
	.ascii	"nrf_atfifo_rcontext_s\000"
.LASF19:
	.ascii	"nrf_atfifo_s\000"
.LASF21:
	.ascii	"tail\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF27:
	.ascii	"last_tail\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"uint16_t\000"
.LASF59:
	.ascii	"new_tail\000"
.LASF45:
	.ascii	"nrf_atfifo_alloc_put\000"
.LASF57:
	.ascii	"nrf_atfifo_rspace_close\000"
.LASF38:
	.ascii	"p_var\000"
.LASF0:
	.ascii	"char\000"
.LASF26:
	.ascii	"nrf_atfifo_item_put_s\000"
.LASF28:
	.ascii	"nrf_atfifo_item_put_t\000"
.LASF34:
	.ascii	"_Bool\000"
.LASF35:
	.ascii	"nrf_atfifo_item_free\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"item_size\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"nrf_atfifo_item_get\000"
.LASF14:
	.ascii	"double\000"
.LASF39:
	.ascii	"size\000"
.LASF30:
	.ascii	"last_head\000"
.LASF32:
	.ascii	"p_fifo\000"
.LASF52:
	.ascii	"new_head\000"
.LASF62:
	.ascii	"old_tail\000"
.LASF15:
	.ascii	"ret_code_t\000"
.LASF63:
	.ascii	"GNU C99 13.3.1 20240614 -fmessage-length=0 -std=gnu"
	.ascii	"99 -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard"
	.ascii	" -mabi=aapcs -mfpu=fpv4-sp-d16 -mthumb -munaligned-"
	.ascii	"access -mtp=soft -mfp16-format=ieee -gdwarf-4 -g2 -"
	.ascii	"gpubnames -fomit-frame-pointer -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF54:
	.ascii	"nrf_atfifo_space_clear\000"
.LASF48:
	.ascii	"p_data\000"
.LASF49:
	.ascii	"nrf_atfifo_clear\000"
.LASF40:
	.ascii	"p_released\000"
.LASF43:
	.ascii	"nrf_atfifo_item_put\000"
	.ident	"GCC: (based on arm-13.3.Rel1 source release) 13.3.1 20240614"
