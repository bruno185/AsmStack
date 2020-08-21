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
	push ebp			; sera dans esp+4 (après adresse de retour)
	mov ebp,esp
	sub esp,8			; espace pour variables lcales

	mov eax,[ebp+8]		; récupère argument 1
	mov [esp],eax		; le place dans variable 1
	mov eax, 77778888h
	mov [esp+4],eax		; place eax dans variable locale 2

	add esp,8
	pop ebp
	ret
mysub ENDP

end main

