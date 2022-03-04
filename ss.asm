section .data
  nome db 'Nome: ', 0xa
  tam  equ $ - nome
  msg1 db 'arquitetura', 0xa
  len1 equ $ - msg1
  esc  db 'Igual', 0xa
  len2 equ $ - esc
  
section .bss
  msg2 resb 20
  
section .text

global _start

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, nome
  mov edx, tam
  
  
;Entrada de Dados
  mov eax, 3
  mov ebx, 0
  mov ecx, msg1
  mov edx, msg2
  cmp ecx, edx
  je igual
  jmp exit
  int 0x80
  
igual: 
  mov ecx, esc
  mov edx, len2
  
exit:
  mov eax, 1
  mov ebx, 5
  int 0x80
  