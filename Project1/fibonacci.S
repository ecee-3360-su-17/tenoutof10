\\r0 is n

push lr
CHECK_0:
    cmp r0, #0
    mov r3, #1
    beq CHECK_N
CHECK_1:
	cmp R0, #1
	mov r4, #1
	beq CHECK_N
CHECK_N:
    or r5, r3, r4
    cmp r5, #0
    beq TOP
    pop lr
TOP:
    cmp r0, #0
    beq L_ZERO
    cmp r0, #1
    beq ONE
    bgt RECURSE

L_ZERO:
	\\make return register r10
	mov r0, #1
	push r0
	ret
ONE:
	mov r0, #1
	push r0
	ret
RECURSE:
	\\get fib -1
	sub r0,r0, #1
	call TOP

	\\get fib -2
	sub r0, r0, #1
	call TOP

	\\gets the last two things pushed, n-2 and n-1
	pop r8
	pop r9
	\\add them together to get fib(n)
	add r0, r8, r9
EXIT:
    pop r0
    pop lr \\get OG
    mov pc, lr
