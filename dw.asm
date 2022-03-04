;COMPARAR N CARACTERES DE UMA STRING COM OUTRA STRING

section .data
  msg:  db 'arquitetura', 10,0
  len:  equ $ - msg
  msg1: db 'PALAVRAS IGUAIS', 10,0
  len1: equ $ - msg1
  msg3: db 'PALAVRAS DIFERENTES', 10,0
  len3: equ $ - msg3
  
section .bss
  msg2: resb 20
  
section .text

global _start

_start:
  mov eax, 4
  mov ebx, 1
  int 0x80
  
; Entrada de Dados  
  mov eax, 3
  mov ebx, 0
  mov esi, DWORD [msg2]
  mov edi, DWORD [msg]
  cmp esi, edi
  je igual
  mov ecx, DWORD [msg3]
  mov edx, len3
  jmp final
  int 0x80
  
  
igual:
  mov ecx, DWORD [msg1]
  mov edx, len1
  int 0x80
  
final: 
  mov eax, 1
  mov ebx, 5
  int 0x80
  
  