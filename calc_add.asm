org 100h     

.MODEL small

.STACK 512d

.DATA
        
    mensagem1 db 10, 13, "Digite o primeiro numero: $" ; Numero a ser processado
    mensagem2 db 10, 13, "Digite o segunndo numero: $" ; Numero a ser processado   
    mensagem3 db 10, 13, "O resultado da soma e: $" ;Mensagem final com resultado da soma. 
    

    valor1 dw ?  ; valor que vem de mensagem1
    valor2 dw ?  ; valor que vem de mensagem2                                

.CODE 
        lea dx, mensagem1 ; Exibi a mensagem
        mov ah, 09h ;
                    ; Interrupcao da tela para aparecer a mensagem
        int 21h     ;
        
        mov ah, 01h ;
                    ; Captura o que o usuario digitou
        int 21h     ;
      
        sub ax, 30h ; Subtrai 30h(hexa) do valor para pegar o valor em decimal
        
        
        mov valor1, ax ; Move o valor de ax para a variavel valor1
        
        lea dx, mensagem2 ; Exibi mensagem
        mov ah, 09h ;
                    ;Interupca para mostrar na tela.
        int 21h     ;
      
        mov ah, 01h ;
                    ; Captura o que o usuario digitou
        int 21h     ;
          
        sub ax, 30h ; Subtrai 30h(hexa) do valor para pegar o valor em decimal
          
        mov valor2, ax ; Move o valor de ax para a variavel valor2
        
        
        lea dx, mensagem3 ; Exibi mensagem de resultado da soma
        mov ah, 09h ;
                    ; Interupcao para mostrar na tela
        int 21h     ;
        
        
        
       
    mov ax, valor1   ;; calculando
    add ax, valor2  ;; Adicionando um valor
    
    
    aam             ;
                    ; Convertendo para decimal o resultado
    add ax, 3030h   ;
    
    mov dh,al       ; Movendo o que esta em al para dh
    mov dl,ah       ; Movendo o que esta em ah para dl
    
    mov ah,02h ;
               ; Interupcao para mostrar o primeiro numero.
    int 21h    ;
       
    mov dl,dh  ; Movendo que esta em dh para dl
    mov ah,02h ;
               ; Interupcao para mostrar o segundo numero 
    int 21h    ;
    
    ret
