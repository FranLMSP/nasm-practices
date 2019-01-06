;masm

--------------------------------------------------------------
.model small ;defining the model type, short (64kb)

.data ;defining the variable types, the data segment

msg db 'Hello, this is a assembler example$'


.code
start: ;defining the body start of the program

mov ax,@data ;moving the data to use to the DX registry
mov ds,ax

;loading functions to AH, in this case the 09h, it allows display a message to screen
mov ah,09h
mov dx,offset msg

;calling interruption  21h
int 21h

;finishing the program
mov ax, 4c00h
int 21h
.stack ;stack segment

end start ;finishing segmend defined as "start"