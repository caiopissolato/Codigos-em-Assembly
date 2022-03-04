section .data
msg: db "Caio Pissolato", 0xa
tam: equ $-msg

section .text
global _start

_start:

mov edx, tam; count
mov ecx, msg; *buf
mov ebx, 1; fd
mov eax, 4
int 0x80

mov ebx, 0; ret