/*
 * fib.S
 *
 *  Created on: Jun 8, 2017
 *      Author: lianne
 */
 /*
 int fib(int n){
 	if (n==0)
 		return 1;
 	if(n==1)
 		return 1;
 	return fib(n-1) + fib(n-2)
 }

 */
 .syntax unified
 .cpu cortex-m0
 .align	2
 .global asm_sum
 .thumb
 .thumb_func

 fib:
 	cmp r1, #0
 	blt case_0
 	beq case_1
 	bgt case_2
 	case_0:
 		mov r0, #-1
 		mov pc, lr
 	case_1:
 		mov r0, #1
 		mov pc, lr
 	case_2:
 		mov r0, #1
 		mov pc, lr

 recurse:
 	push {r0, r1, LR}
 	sub r1, r1, #1
 	BL fib
 	POP r1
 	add r0, r0, r1
 	POP LR

 exit:




