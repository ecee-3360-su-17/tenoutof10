;r0 is n
;mov r0, #2

CHECK_0
    cmp r0, #0
    beq TOP
CHECK_1
	cmp R0, #1
	beq TOP
SAVE
    push lr
    ;sub sp, sp, #4
    s;tr lr, [sp, #4]
TOP
    cmp r0, #0
    beq L_ZERO
    cmp r0, #1
    beq ONE
    bgt RECURSE

L_ZERO
	mov r0, #1
	push r0
	;sub sp, sp, #4
	s;tr r0, [sp, #4]
	call TOP
ONE
	mov r0, #1
	push r0
	;sub sp, sp, #4
	;str r0, [sp, #4]
	call TOP
RECURSE
	;get fib -1
	sub r0,r0, #1
	call TOP

	;get fib -2
	sub r0, r0, #1
    call TOP

	;gets the last two things pushed, n-2 and n-1
	pop r8
    ;ldr r8, [sp, #0]
    ;add sp, sp, #4
	pop r9
    ;ldr r9, [sp, #0]
    ;add sp, sp, #4
	;add them together to get fib(n)
	add r0, r8, r9
	push r0
	;sub sp, sp, #4
	;str r0, [sp, #4]
EXIT
    pop r0
    ;ldr r0, [sp, #0]
    ;add sp, sp, #4
    pop lr
    ;ldr lr, [sp, #0]
    ;add sp, sp, #4
    mov pc, lr

