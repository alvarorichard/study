segment .data
  LF        equ 0xA  ; Line Feed
  NULL      equ 0xD  ; Final da String
  SYS_CALL  equ 0x80 ; Envia informacao ao SO
  ; EAX
  SYS_EXIT  equ 0x1  ; Codigo de chamada para finalizar
  SYS_READ  equ 0x3  ; Operacao de leitura
  SYS_WRITE equ 0x4  ; Operacao de escrita
  ; EBX
  RET_EXIT  equ 0x0  ; Operacao realizada com Sucesso
  STD_IN    equ 0x0  ; Entrada padrao
  STD_OUT   equ 0x1  ; Saida padrao

segment .text

 mst_saida:
 call tamStr
 mov eax, SYS_WRITE
 mov ebx, STD_OUT
 int SYS_CALL
 ret
 


tamStr:
mov edx, ecx
proxchar:
cmp byte [edx], NULL
jz terminei
inc edx
jmp proxchar
terminei:
sub edx, ecx
ret 