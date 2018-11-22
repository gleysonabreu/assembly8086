ORG 100h
.MODEL small
.STACK 512d
.DATA 
    mensagem1 db 10, 13, "Digite o primeiro numero: $" ; Numero a ser processado
    mensagem2 db 10, 13, "Digite o segunndo numero: $" ; Numero a ser processado   
    mensagem3 db 10, 13, "O resultado da soma e: $" ;Mensagem final com resultado da soma.
    
    num1 dw ?  ; valor que vem de mensagem1
    num2 dw ?  ; valor que vem de mensagem2                   

.CODE    
       
       lea dx, mensagem1 ; Exibi a mensagem
        mov ah, 09h ;
                    ; Interrupcao da tela para aparecer a mensagem
        int 21h     ;
        
        mov ah, 01h ;
                    ; Captura o que o usuario digitou
        int 21h     ;
      
        sub ax, 30h ; Subtrai 30h(hexa) do valor para pegar o valor em decimal
        
        mov ah, 0  ; Limpa a parte alta do registrador
        
        mov num1, ax ; Move o valor de ax para a variavel valor1
        
        lea dx, mensagem2 ; Exibi mensagem
        mov ah, 09h ;
                    ;Interupca para mostrar na tela.
        int 21h     ;
      
        mov ah, 01h ;
                    ; Captura o que o usuario digitou
        int 21h     ;
          
        sub ax, 30h ; Subtrai 30h(hexa) do valor para pegar o valor em decimal
        
        mov ah, 0   ; Limpa a parte alta do registrador
          
        mov num2, ax ; Move o valor de ax para a variavel valor2
        
        
        lea dx, mensagem3 ; Exibi mensagem de resultado da soma
        mov ah, 09h ;
                    ; Interupcao para mostrar na tela
        int 21h     ;
         
        
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