;turbo asm

.model small ;memory model declaration

.stack

.data

msg db 'Hi dude', '$'

.code

start:
mov ax,@data
mov ds, ax
lea dx,msg
mov ah,09h
int 21h
mov ah,4ch
int 21h
end start