.386
.model flat, stdcall

.data

MessageTxt db "Hello World"

.code

main PROC
	
	push 12345678h
	call mysub
	add esp,4
	ret 

main ENDP

mysub PROC
	push ebp			; sera dans esp+4 
	mov ebp,esp
	sub esp,8			; place pour variables lcales

	mov eax,[ebp+8]		; récuoère argument 1
	mov [esp],eax		; le place dans variable  2
	mov eax, 77778888h
	mov [esp+4],eax		; place eax dans variable locale é

	add esp,8
	pop ebp
	ret
mysub ENDP

end main

