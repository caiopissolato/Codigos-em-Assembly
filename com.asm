section .data

  x dd 50
  y dd 20
  msg1 db 'X maior que Y', 0xa
  len1 equ $ - msg1
  msg2 db 'Y maior que X', 0xa
  len2 equ $ - msg2
  
section .text

global _start

_start:
mov rax, DWORD [x]
mov rbx, DWORD [y]
cmp rax, rbx   ; comparacao
jge maior      ; je = jg > jge >= jl < jle <= jne !=
mov rdx, len2
mov rcx, msg2
jmp final

maior:
  mov rdx, len1
  mov rcx, msg1
  
final:
  mov rbx, 1
  mov rax, 4
  int 0x80
  mov rax, 1
  int 0x80