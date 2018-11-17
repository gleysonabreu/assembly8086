ORG 100h
.MODEL small
.STACK 512d
.DATA 
num1 dw 40 ; multiplicando
num2 dw 2 ; multiplicador

.CODE
    
        MOV CX, num1  ; quantas vezes o loop vai rodar   
    
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