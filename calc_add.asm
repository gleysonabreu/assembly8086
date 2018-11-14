   
   name "calc" 
org 100h     

jmp start

msg db "Digite primeiro numero:", '$', 10, 13; mensagem
msg2 db "Digite o segundo numero:", '$', 10, 13; mensagem
msg3 db 10, 13, "Resultado: $"

num1 db 10, 13, ?
num2 db 10, 13, ?
                                 
start:

    lea dx, msg
    mov ah, 9   ;Exibido a mensagem, msg
    int 21h  
    
      
    mov ah, 0Ah    ; Pegando o que e digitado
    int 21h     
    
    
    lea dx, msg2  ; exibe mensagem msg2
    mov ah, 9 
          
    
    int 21h    
    mov ah, 0Ah   ; pegando dados
    int 21h
           
           
    lea dx, msg3  ; exibindo mensagem msg3
    mov ah, 9
    int 21h
            
            
    mov al, num1    ;; calculando
    add al, num2
      
    aam
    
    add ax, 3030h
    
    mov dh,al
    mov dl,ah
    
    mov ah,02h
    
    int 21h    
       
    mov dl,dh
    mov ah,02h
    int 21h
    
    ret
