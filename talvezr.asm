section .data
msg1: db "arquitetura",10
len1: equ $-msg1
msg2: db "           ",10
len2: equ $-msg2
msg3: db "PALAVRAS IGUAIS",10
len3: equ $-msg3
msg4: db "PALAVRAS DIFERENTES",10
len4: equ $-msg4

section .text
global _start

_start:
  ;Lê msg2
  mov rdx, len2
  mov rcx, msg2
  mov rbx, 1
  mov rax, 3
  int 0x80
  
  ;compara msg1 com msg2
  mov rax, dword [msg1]
  mov rbx, dword [msg2]
  cmp rax, rbx
  je igual
  mov rdx, len4 
  mov rcx, msg4
  jmp final
  
  
  igual:
    mov rdx, len3
    mov rcx, msg3
    
    
  final:  
    mov rbx, 1
    mov rax, 4
    int 0x80
    mov rax, 1
    int 0x80
    
    
