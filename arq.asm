;Comparar n caracteres de uma string com outra string
section .data
msg: db "Arquitetura e Organização de Computadores", 0xa
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