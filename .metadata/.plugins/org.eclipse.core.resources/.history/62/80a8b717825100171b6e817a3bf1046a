\\r0 is n

TOP:
    cmp r0, #0
    beq L_ZERO
    blt EXIT
    cmp r0, #1
    beq ONE
    bgt RECURSE

L_ZERO:
	\\make return register r10
	mov r0, #1
	push r0
	sub r0, r0, #1
	br TOP
ONE:
	mov r0, #1
	push r0
	sub r0, r0, #1
	br TOP
RECURSE:
	\\get fib -1
	sub r0,r0, #1
	br TOP

	\\get fib -2
	sub r0, r0, #1
	br TOP

	\\gets the last two things pushed, n-2 and n-1
	pop r8
	pop r9
	\\add them together to get fib(n)
	add r0, r8, r9
EXIT:
    pop\\????
    mov pc, lr
