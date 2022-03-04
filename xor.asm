section .data
  nome db 'arquitetura', 0xa
  tam  equ $ - nome
  
section .bss
  comp resb 20
  
section .text

global _start

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, nome
  mov edx, tam
  int 0x80
  
;Entrada de Dados
  mov eax, 3
  mov ebx, 0
  mov ecx, nome
  mov edx, comp
  xor ecx, edx
  int 0x80
  
exit:
  mov eax, 1
  mov ebx, 5
  int 0x80