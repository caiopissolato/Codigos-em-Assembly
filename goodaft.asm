section .data
msg1: db "Escreva seu nome:",10
len1: equ $-msg1
msg2: db "                 ",10
len2: equ $-msg2
msg3: db "Boa Tarde "
len3: equ $-msg3

section .text
global _start

_start:
  ;escreve msg1
  mov edx,len1
  mov ecx,msg1
  mov ebx,1
  mov eax,4
  int 0x80
  
  ;lê a msg2 entrada pelo usuario
  mov edx, len2
  mov ecx, msg2
  mov ebx, 1
  mov eax, 3
  int 0x80
  
  ;escreve a msg3
  mov edx, len3
  mov ecx, msg3
  mov ebx, 1
  mov eax, 4
  int 0x80
  
  ;escreve a mensagem q o usuário entrou
  mov edx, len2
  mov ecx, msg2
  mov ebx, 1
  mov eax, 4
  int 0x80
  
  ;termina o programa
  mov ebx, 0
  mov eax,1
  int 0x80