segment .data
  LF        equ 0xA  ; Line Feed
  NULL      equ 0xD  ; 
  SYS_CALL  equ 0x80 ;
  ; EAX
  SYS_EXIT  equ 0x1  ; Codigo de chamada para finalizar
  SYS_READ  equ 0x3  ; Operacao de leitura
  SYS_WRITE equ 0x4  ; Operacao de escrita
  ; EBX
  RET_EXIT  equ 0x0  ; Operacao realizada com Sucesso
  STD_IN    equ 0x0  ; Entrada padrao
  STD_OUT   equ 0x1  ; Saida padrao

section .data
  msg db "Digite Seu Nome:", LF, NULL
  tam equ $- msg

section .bss
  nome resb 1

section .text  

global _start

_start:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, msg
  mov EDX, tam
  int SYS_CALL

  mov EAX, SYS_READ
  mov EBX, STD_IN
  mov ECX, nome
  mov EDX, 0xA
  int SYS_CALL

  mov EAX, SYS_EXIT
  mov EBX, RET_EXIT
  int SYS_CALL