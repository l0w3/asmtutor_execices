SECTION .data
msg	db	'String', 0Ah

SECTION	.text
global _start
	mov edx, 13
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov ebx, 0 ; Indicate that there are no errors
	mov eax, 1 ; Exit syscall, prevents form exiting with segmentation fault
	int 80h
