section .data
msg: db "mentebinaria.com.br", 0xa

section .text
global _start

_start:

mov edx, 20; count
mov ecx, msg; *buf
mov ebx, 1; fd
mov eax, 4
int 0x80

mov ebx, 0; ret