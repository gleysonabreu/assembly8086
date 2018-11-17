org 100h     

.MODEL small

.STACK 512d

.DATA
msg dw 10; mensagem
msg2 dw 15 ; mensagem                                

.CODE
             
    mov ax, msg   ;; calculando
    add ax, msg2  ;; Adicionando um valor
    
    
    aam             ;
                    ; Convertendo para decimal o resultado
    add ax, 3030h   ;
    
    mov dh,al
    mov dl,ah
    
    mov ah,02h
    
    int 21h    
       
    mov dl,dh
    mov ah,02h
    int 21h
    
    ret
