   
   name "digite_seu_nome"
   
org 100h     

jmp start

msg db "Diga seu nome: $", 0Dh,0Ah, 24h ; mensagem
msg1 db  0dh,0ah ,'Pressione qualquer tecla para finalizar o programa.', 0Dh,0Ah, '$'; mensagem                                   ; hexadecimais sao retornos em ASCII 
msg2: db "Programa finalizado com sucesso! $", 0Dh,0Ah, 24h ; mensagem                                     
start:
    lea dx, msg
    mov ah, 09h   ;Exibido a mensagem, msg
    int 21h
    
    mov ah, 0Ah    ; Pegando o que e digitado
    int 21h
    
    lea dx, msg1 
    mov ah, 09h  ; exibindo a outra mensagem, msg1
    int 21h
    
    mov ah, 00h      ; finalizando o programa.
    int 16h 
    
    lea dx, msg2
    mov ah, 09h   ; mensagem de finalizacao do programa.
    int 21h