 ORG 100h
.MODEL small
.STACK 512d
.DATA 
num1 dw 6
num2 dw 2

.CODE 

    MOV CX, num1
    mov ax, num1   ;; calculando
    
    
           
    
laco:
     
    aam
    
    add ax, 3030h
    
    mov dh,al
    mov dl,ah
    
    mov ah,02h
    mov dl,dh
    mov ah,02h
     
     sub ax, num2
    
      
      dec cx
      
    
    INT 021h 
    
LOOP laco 

ret 
