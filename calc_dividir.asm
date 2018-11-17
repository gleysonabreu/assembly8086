ORG 100h
.MODEL small
.STACK 512d
.DATA 
num1 dw 20 ; dividendo
num2 dw 5  ; deivisor

.CODE    
       
        mov cx, num1 ; quantas vezes o loop tem que rodar
        mov ax, num1 ; movendo 18 para ax
        
        mov bx, 0   ; Inicia o BX com 0
        
calcula:
    sub ax, num2  ;; faz a subtracao do numero
    add bx, 1 ;; Adiciona 1 toda vez que o loop for efetuado para saber qual e o resultado da divisao 
    
    CMP AX, 0  ;; Fazer comparacao para verificar se AX e 0
    JE less    ;; Se for 0 ele executa a funco less para exibir o resultado.
            
LOOP calcula ;; Executa o loop

   
less: ;; Funcao less para exibir na tela.       

               
            mov dx, bx  ; move para dx o resultado da divisao
            
            aam              ;; 
                               ;   Fazem a conversao para decimal
            add dx, 3030h ;;
            
            
            mov ah, 02h  ;; exibir na tela
            INT 21h      ;; faz exibir na tela
            
            
        
            
   ret