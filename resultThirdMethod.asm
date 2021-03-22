thirdMethod:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	pop	rbp
	ret
