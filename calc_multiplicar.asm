#MAKE_COM#
ORG 100h
.MODEL small
.STACK 512d
.DATA 
num1 dw 10 ; multiplicando
num2 dw 2 ; multiplicador

.CODE
    
    MOV CX,  num1
    mov ax, num2   ;; calculando 
     
    
    
    aam
    
    add ax, 3030h
    
    mov dh,al
    mov dl,ah
    
    mov ah,02h
    mov dl,dh
    mov ah,02h
     
    
laco: 
    add ax, num2
    
    
    INT 021h
    
    
       
    
LOOP laco  

ret