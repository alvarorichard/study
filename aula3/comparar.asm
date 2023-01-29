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
x dd 50
y dd 10
msg1 db 'X maior que Y',LF,NULL
tam1 equ $ -msg1
msg2 db 'Y maior que X',LF,NULL
tam2 equ $ -msg2

section .text

global _start

_start:
  mov EAX, DWORD [x]
  mov EBX, DWORD [y]
   
   cmp EAX, EBX
   ;je = jg > jge >= jl < jle <= jne !=
   ; go to jmp
   ; salto incondicional jmp


   jge maior
   mov ECX,msg2
   mov EDX,msg2

jmp finalizar
   maior:
   mov ECX,msg1
   mov EDX,tam1 

finalizar:
mov EAX, SYS_WRITE
mov EBX, STD_OUT
int SYS_CALL

mov EAX, SYS_EXIT
mov EBX, RET_EXIT
int SYS_CALL



