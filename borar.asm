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
  mov rax, 4
  mov rbx, 1
  int 0x80
  
; Entrada de Dados  
  mov rax, 3
  mov rbx, 0
  mov rsi, [msg2]
  mov rdi, [msg]
  cmp rsi, rdi
  je igual
  mov rcx, [msg3]
  mov rdx, len3
  jmp final
  int 0x80
  
  
igual:
  mov rcx, [msg1]
  mov rdx, len1
  int 0x80
  
final: 
  mov rax, 1
  mov rbx, 5
  int 0x80
  
  
