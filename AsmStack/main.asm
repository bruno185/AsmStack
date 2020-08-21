.386
.model flat, stdcall

.data

MessageTxt db "Hello World"

.code

main PROC
	
	push 1234h
	call mysub
	add esp,4
	ret 

main ENDP

mysub PROC
	push ebp			; sera dans esp+4 
	mov ebp,esp
	sub esp,8			; place pour variables lcales

	mov eax,[ebp+8]
	mov [esp],eax
	mov eax, 7777h
	mov [esp+4],eax

	add esp,8
	pop ebp
	ret
mysub ENDP

end main

