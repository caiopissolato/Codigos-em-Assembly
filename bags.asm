section .data

  x dd 'Arquitetura', 0xa, 0xd
  y dd 'Arquitetura', 0xa, 0xd
  msg1 db 'Diferente', 0xa
  len1 equ $ - msg1
  msg2 db 'Igual', 0xa
  len2 equ $ - msg2
  
section .text

global _start

_start:
mov eax, DWORD [x]
mov ebx, DWORD [y]
cmp eax, ebx   ; comparacao
je igual      ; je = jg > jge >= jl < jle <= jne !=
mov edx, len1
mov ecx, msg1
jmp final

igual:
  mov edx, len2
  mov ecx, msg2
  
final:
  mov ebx, 1
  mov eax, 4
  int 0x80
  mov eax, 1
  int 0x80
