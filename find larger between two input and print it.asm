.model small
.stack 100h
.data
msg db "Enter 1st number: $"
msg2 db 0ah,0dh,"Enter 2nd number : $"
msg3 db 0ah,0dh,"Larger  number is : $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
   
    mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,1
    int 21h
    
    cmp al,bl
    jg print
    jmp beyond
    
    print:
    mov cl,al
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end
    
    
    beyond:
    
    mov cl,bl
    mov ah,9
    lea dx,p3
    int 21h 
    
    
    mov ah,2
    mov dl,cl
    int 21h 
    end:
    mov ah,4ch
    int 21h
    main endp
end main