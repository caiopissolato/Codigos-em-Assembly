section .data
msg0: db "           ",10
len0: equ $-msg0
msg1: db "arquitetura",10
len1: equ $-msg1
msg2: db "PALAVRAS IGUAIS",10
len2: equ $-msg2
msg3: db "PALAVRAS DIFERENTES",10
len3: equ $-msg3

section .text
global _start

_start:
  ;Lê msg0
  mov edx, len0
  mov ecx, msg0
  mov ebx, 1
  mov eax, 3
  int 0x80
  
  ;compara msg1 com msg0
  mov eax, [msg1]
  mov ebx, [msg0]
  cmp eax, ebx
  je igual
  mov edx, len3 
  mov ecx, msg3
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
    
    
