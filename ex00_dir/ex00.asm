SECTION .data
msg	db	'First String', 0Ah ; set msg var with value "First String" plus line feed
second	db	'Second string', 0Ah

SECTION .text
global _start

_start:
	; Write opcode = 4 -> EAX, mesage to write -> ECX, length of the message -> EDX, fd to write on -> EBX

	mov ecx, msg ; Variable where the message to write is stored
	mov edx, 13 ; Length of the variable
	mov eax, 4 ; OPCODE of kernel function write
	mov ebx, 1 ; FD where to write
	
	int 80h ; Switch from user-space to kernel-space and executes the systemcalls set previusly, then, gives control back on user-space

	mov ecx, second
	mov edx, 15
	mov eax, 4
	mov ebx, 1

	int 80h
