 .global fibonacci
fibonacci:
check0:
    ;check to see if n is 0, if it is, don't push the return address onto the stack
    cmp r0, #0
    beq lzero
check1:
    ;check to see if n is 1, if it is, don't push the return address onto the stack
	cmp r0, #1
	beq one
save1:
    ;save the return address back to where we were in main onto the stack
    push {lr}
    br recurse
lzero:
    ;push the value of 1 onto the stack and return
	mov r0, #1
	push {r0}
	mov pc, lr
one:
    ;push the value of 1 onto the stack and return
	mov r0, #1
	push {r0}
	mov pc, lr
recurse:
    push {r0}
    ;get the value of fib(n-1)
	sub r0,r0, #1
	bl fibonacci
	;get the value of fib(n-2)
	sub r0, r0, #1
    bl fibonacci
    ;get fib(n-1) and fib(n-2) off of the stack
	pop {r8}
	pop {r9}
	;add them together to get fib(n)
	add r0, r8, r9
	pop{lr}
	push {r0}
	mov pc, lr

exit:
    pop {r0}
    ;return
    pop {pc}



	mov r1,r0
	pop {r0}
	push{r1}
	sub r0, r0,#2
	bl fib
	pop {r1}
	add r0,r0,r1
	pop {pc}
