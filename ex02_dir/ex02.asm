SECTION	data
msg	db	"This is a random length string", 0Ah

SECTION .text
global _start

_start:
	mov ebx, msg
	mov eax, ebx

loopchar:
	cmp byte [eax], 0 ; Is the eax address 0?
	jz done
	inc eax
	jmp loopchar

done:
	sub eax, ebx ; Get the number of bytes between eax (last byte of string) and ebx (beggining of it). The result is a number representing the number of bytesin between both addresses
	mov edx, eax
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	mov ebx, 0
	mov eax, 1
	int 80h
	
