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
  mov edx, len2
  mov ecx, msg2
  mov ebx, 1
  mov eax, 3
  int 0x80
  
  ;compara msg1 com msg2
  mov eax, DWORD [msg1]
  mov ebx, DWORD [msg2]
  cmp eax, ebx
  je igual
  mov edx, len4 
  mov ecx, msg4
  jmp final
  
  
  igual:
    mov edx, len3
    mov ecx, msg3
    
    
  final:  
    mov ebx, 0
    mov eax, 1
    int 0x80
    