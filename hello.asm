;programa Hello World
section .data:
  msg db 'Strings', 0xa
  len equ $ - msg


section .text:

global _start:

_start:
 mov rdx, len
 mov rcx, msg
 mov rbx, 1
 mov rax, 4
 int 0x80
 
 mov rax, 1
 mov rbx, 0 
 int 0x80
