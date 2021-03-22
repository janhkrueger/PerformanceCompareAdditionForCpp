firstMethod:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	nop
	pop	rbp
	ret
