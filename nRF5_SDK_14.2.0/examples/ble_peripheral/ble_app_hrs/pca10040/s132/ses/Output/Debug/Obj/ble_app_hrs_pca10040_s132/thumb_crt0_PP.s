# 0 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
# 94 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  .syntax unified

  .global _start
  .extern main
  .weak exit
  .weak _Exit


  .extern InitializeUserMemorySections


  .section .init, "ax"
  .code 16
  .balign 2
  .thumb_func

_start:

  ldr r1, =__stack_end__
  ldr r0, =__stack_start__
  subs r2, r1, r0
  beq 1f

  movs r2, #0x7
  bics r1, r2

  mov sp, r1
# 133 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
1:

  ldr r1, =__stack_process_end__
  ldr r0, =__stack_process_start__
  subs r2, r1, r0
  beq 1f

  movs r2, #0x7
  bics r1, r2

  msr psp, r1
  movs r2, #2
  msr control, r2
# 154 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
1:


  ldr r0, =__data_load_start__
  ldr r1, =__data_start__
  ldr r2, =__data_end__
  bl memory_copy
  ldr r0, =__text_load_start__
  ldr r1, =__text_start__
  ldr r2, =__text_end__
  bl memory_copy
  ldr r0, =__fast_load_start__
  ldr r1, =__fast_start__
  ldr r2, =__fast_end__
  bl memory_copy
  ldr r0, =__ctors_load_start__
  ldr r1, =__ctors_start__
  ldr r2, =__ctors_end__
  bl memory_copy
  ldr r0, =__dtors_load_start__
  ldr r1, =__dtors_start__
  ldr r2, =__dtors_end__
  bl memory_copy
  ldr r0, =__rodata_load_start__
  ldr r1, =__rodata_start__
  ldr r2, =__rodata_end__
  bl memory_copy
  ldr r0, =__tdata_load_start__
  ldr r1, =__tdata_start__
  ldr r2, =__tdata_end__
  bl memory_copy
# 215 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  ldr r0, =__bss_start__
  ldr r1, =__bss_end__
  movs r2, #0
  bl memory_set
  ldr r0, =__tbss_start__
  ldr r1, =__tbss_end__
  movs r2, #0
  bl memory_set
# 238 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  ldr r0, = __heap_start__
  ldr r1, = __heap_end__
  subs r1, r1, r0

  bl __SEGGER_RTL_init_heap
# 254 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  ldr r2, =InitializeUserMemorySections
  blx r2


  .type start, function
start:


  ldr r0, =__ctors_start__
  ldr r1, =__ctors_end__
ctor_loop:
  cmp r0, r1
  beq ctor_end
  ldr r2, [r0]
  adds r0, #4
  push {r0-r1}
  blx r2
  pop {r0-r1}
  b ctor_loop
ctor_end:


  movs r0, #0
  mov lr, r0
  mov r12, sp

  .type __startup_complete, function
__startup_complete:
# 291 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  movs r0, #0
  movs r1, #0

  ldr r2, =main
  blx r2

  .thumb_func
exit:
# 331 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  .type _Exit, function
_Exit:


.type exit_loop, function
exit_loop:
  b exit_loop

  .thumb_func
memory_copy:
  cmp r0, r1
  beq 3f
  subs r2, r2, r1
  beq 3f


  mov r3, r0
  orrs r3, r1
  orrs r3, r2
  movs r4, #0x3
  tst r3, r4
  bne 2f

1:
  ldr r3, [r0]
  adds r0, r0, #4
  str r3, [r1]
  adds r1, r1, #4
  subs r2, r2, #4
  bne 1b
  bx lr

2:
  ldrb r3, [r0]
  adds r0, r0, #1
  strb r3, [r1]
  adds r1, r1, #1
  subs r2, r2, #1
  bne 2b
3:
  bx lr

  .thumb_func
memory_set:
  cmp r0, r1
  beq 1f
  strb r2, [r0]
  adds r0, r0, #1
  b memory_set
1:
  bx lr



.macro HELPER helper_name
  .section .text.\helper_name, "ax", %progbits
  .balign 2
  .weak \helper_name
  .thumb_func
\helper_name:
.endm

HELPER __aeabi_read_tp
  ldr r0, =__tbss_start__-8
  bx lr
HELPER abort





  b .
HELPER __assert
  b .
HELPER __assert_func
  b .
HELPER __aeabi_assert
  b .
HELPER __sync_synchronize
  bx lr
HELPER __semihost
  bkpt 0xab
  bx lr
# 422 "/opt/SEGGER/segger_embedded_studio_8.22a/source/thumb_crt0.s"
  .section .stack, "wa", %nobits
  .section .stack_process, "wa", %nobits
  .section .heap, "wa", %nobits
