   
   name "ola_mudo"
   
org 100h     

jmp start

msg: db "Ola, mundo!", 0Dh,0Ah, 24h ; mensagem fixa, os numeros 
                                    ; hexadecimais sao retornos em ASCII            

start:    mov dx, msg     ; desloca  mensagem para dx
          mov ah, 09h     ; funcao de impressao e 9
          int 21h         ; executa uma interupcao de video.