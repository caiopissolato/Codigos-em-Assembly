section .data
  msg1 db 'Texto 1: ', 0xa
  len1 equ $ - msg1
  msg2 db 'Texto 2: ', 0xa
  len2 equ $ - msg2
  
section .bss
  texto1 resb 2
  texto2 resb 2
  
segment .text 
global _start
_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov ecx, msg2
  mov edx, len1
  mov edx, len2
  int 0x80
  
;Entrada de Dados
  mov eax, 3
  mov ebx, 0
  mov ecx, texto1
  mov edx, texto2
  cmp ecx, edx
  int 0x80
  
exit:
  mov eax, 1
  mov ebx, 5
  int 0x80
  