section .data
  nome db 'arquitetura', 0xa
  tam  equ $ - nome
  msg  db 'Palavras iguais', 0xa
  len  equ $ - msg
  
section .bss
  comp resb 20
  
section .text

global _start

_start:
  mov eax, DWORD [nome]
  mov ebx, DWORD [comp]
  cmp eax, ebx
  je igual
  jmp exit
  int 0x80
  
igual:
  mov edx, len
  mov ecx, msg
  
;Entrada de Dados
  mov eax, 3
  mov ebx, 0
  mov ecx, nome
  mov edx, comp
  cmp ecx, edx
  int 0x80
  
exit:
  mov eax, 1
  mov ebx, 5
  int 0x80