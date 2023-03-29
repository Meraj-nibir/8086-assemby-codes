.model small
.stack 100h
.data

msg db "enter 1st character: $"
msg2 db 0ah,0dh,"enter 2nd character: $"
msg3 db 0ah,0dh,"1st in sequence character is $"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9  ;display a massage to take 1st input
    lea dx,msg
    int 21h
    
    mov ah,1  
    int 21h
    
    mov bl,al
    
    mov ah,9
    lea dx,msg2  ;;display a massage to take 2nd input
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,bl    ;compare two inputs
    jnbe else    ;jump to else
    
    mov cl,al
    jmp display  ;jump to display
    
    else:
    mov cl,bl
    
    display:
    mov ah,9
    lea dx,msg3 ;;display a massage to print output
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main