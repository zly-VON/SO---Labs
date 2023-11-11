; Method 7 - Display string & update cursor

ORG 7C00h      ; standard bootloader origin

jmp _start

section .data
    msg db "Display string"
    msg_len equ $-msg

_start:
    mov AH, 13h         ; display string
    mov AL, 1    	    ; display string and update cursor
    mov BL, 10          ; color green
    mov CX, msg_len
    mov DH, 0           ; row
	mov DL, 0           ; column
    mov BP, msg
    int 0x10
