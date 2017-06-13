mov r2, n
mov r0, #0
mov r1, #1

beq r2, r0, L_ZERO
beq r2, r1, ONE

TOP:

L_ZERO:
	\\make return register r10
	mov r10, #1
	push r10
ONE:
	mov r10, #1
	push r10
RECURSE:
	\\get fib -1
	sub r2,r2, #1
	br TOP

	\\get fib -2
	sub r2, r2, #1
	br TOP

	\\gets the last two things pushed, n-2 and n-1
	pop r8
	pop r9
	\\add them together to get fib(n)
	add r10, r8, r9
	ret
