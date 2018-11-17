ORG 100h
.MODEL small
.STACK 512d
.DATA 
num1 dw 18 ; dividendo
num2 dw 2 ; deivisor
count dw ?

.CODE   

        mov cx, num1
 
        mov ax, num1

calcula:
    dec cx  ;; Decrementa o cx.
     
    sub ax, num2  ;; faz a subtracao do numero
    
    inc count    ;; Incrementa quantas vezes o programa e executado.
    
     
LOOP calcula ;; Executa o loop
              
            aam              ;; 
                               ;   Fazem a conversao para decimal
            add count, 3030h ;;
            
            
            mov dx, count ;;
            mov ah, 2h    ;; Mostrar o resultado
            int 21h       ;;
            
            
            
        
            
   hlt