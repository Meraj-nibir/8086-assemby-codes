.model small
.stack 100h
.data

msg db "enter a character: $"


.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9  ;display a massage to take 1st input
    lea dx,msg
    int 21h
    
    repeat:  
    mov ah,1 ;read input 
    int 21h
    
    cmp al,' '    ;compare two inputs
    jne repeat
    
    mov ah,4ch
    int 21h
    main endp
end main