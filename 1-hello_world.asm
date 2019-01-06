section .data ;space for the data

;db = directive of data (variables)
msg db "Hello world",10,13 ;10(0xA) = start of line, 13(0xD) = new line 

;db = byte
;dw = word
;dd = double word
;dq = quadra word
;dt = ten bytes

;len = directive of constants
len equ $ - msg

section .text ;program body
    
    global _start ;this indicates to the linker where is the start of the program

_start:
    ;MOV moves the data to a address to another address, like the "="
    ;MOV destination, origin
    ;both operators should have the same size (db with db, not db with dw, for example)
    mov eax, 4 ;call to system (sys_write)
    mov ebx, 1 ;screen print
    mov ecx, msg ;what we want to print
    mov edx, len ;length of message
    int 0x80 ;call to interruption in address 0x80

    mov eax, 1 ;sys_exit
    int 0x80 ;call to interruption again
