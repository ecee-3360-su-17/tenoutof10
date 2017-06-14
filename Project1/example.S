/*
 * example.S
 *
 *  Created on: Jun 13, 2017
 *      Author: lianne
 */

.syntax unified
 .cpu cortex-m0
 .align	2
 .global asm_sum
 .thumb
 .thumb_func

 asm_sum:            // first sum function
 	push	{r7, lr} //push onto stack
 	sub sp, sp, #8 //add 8 to stack pointer
 	add r7, sp, #0  //add 0 to stack pointer
 	str r0, [r7, #4] //store r0 into r7+4
 	str r1, [r7]
 	ldr r2, [r7, #4] //take r7+4 and load into register 2
 	ldr r3, [r7]
 	add r3, r2, r3   //add r2,  r3  in r3
 	mov r0, r3
 	mov sp, r7       //setting stack pointer  to r7
 	add sp, sp, #8   //collapse stack
 	pop {r7, lr}     //pop r7 off of stack


 extern int asm_sum(int_a, int_b);   //pulls from s file into c file

 .syntax unified
 .cpu cortex-m0
 .align	2
 .global asm_sum
 .thumb
 .thumb_func
 asm_sum:                   //second sum function
 	add r0, r0, r1
 	mov pc, lr

 /*r12-r15 want to push those registers onto the stack and pop them off
 assembly is good for time critical stuff, having interrupts, low lever microconrollers
 and cpu have assembly in the architectures*/



 /*int loop_asm(){
 	int counter = 5;
 	for (int iter=0; iter<100; iter++){
 		counter++;
 	}
 	return counter;
 	}
 */
 //Abovve is c example for loop and below is ARM example for loop

 .syntax unified
 .cpu cortex-m0
 .align	2
 .global asm_sum
 .thumb
 .thumb_func
 loop_asm:
 	mov r0, #0 //iter
 	mov r1, #5 //counter
 top_loop:
 	cmp r0, #100
 	add r0, #1
 	add r1, #1
 	blte lop_loop   //brach less than or equal to
 exit:
 	mov r0, r1
 	mov pc, lr //what actually gets returned


/* Don't assume registers are set to zero always intialize it to a state of know where it is being passed from. */

/*b^2 = b*b
b^3 = b*b*b
 int fun_asm(int base, int pow){
 	if(pow <0)
 		return -1; //not implemented
 	if(pow == 0)
 		return 1;
 	if(pow == 1)
 		return base;
 	return base*(fun_asm(base), pow -1);
 	}
*/
 .syntax unified
 .cpu cortex-m0
 .align	2
 .global asm_sum
 .thumb
 .thumb_func

 fun_asm:
 base_case_one:
 	cmp r1, #0  //if(pow==0)
 	blt base_case_two
 	mov r0, #-1  // return -1;
 	mov pc, lr
 base_case_two:
 	cmp r1, #0  //if(pow==0)
 	bgt base_case_three
 	mov r0, #1  //set R0 to 1
 	mov pc, lr  //return 1;
base_case_three:
 	cmp r1, #1  //if(pow==0)
 	bgt recurse
 	mov pc, lr //return base
 recurse:
 	push {r0, r1} //push onto stack r0 adn r1
 	mul           //multiply

