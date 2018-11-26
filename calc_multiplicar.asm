ORG 100h
.MODEL small
.STACK 512d
.DATA 
    
    mensagem1 db 10, 13, "Digite o primeiro numero: $" ; Numero a ser processado
    mensagem2 db 10, 13, "Digite o segunndo numero: $" ; Numero a ser processado   
    mensagem3 db 10, 13, "O resultado da multiplicao e: $" ;Mensagem final com resultado da soma. 
    

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
        
        mov ah, 0  ; Limpa a parte alta do registrador
          
        mov num2, ax ; Move o valor de ax para a variavel valor2
        
        
        lea dx, mensagem3 ; Exibi mensagem de resultado da soma
        mov ah, 09h ;
                    ; Interupcao para mostrar na tela
        int 21h     ;
        
         
         mov ax, 0 ; Limpa o registrador ax
    
        MOV cx, num1  ; quantas vezes o loop vai rodar   
    
calcula: 
        add ax, num2  ; faz a adicao do numero     
    
LOOP calcula

            aam           ;; 
                            ; Fazem a conversao para decimal
            add ax, 3030h ;; 
            
            mov dh,al
            mov dl,ah
            mov ah,02h
            int 21h
            
            mov dl,dh
            mov ah,02h
            int 21h