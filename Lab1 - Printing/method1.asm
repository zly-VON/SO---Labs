; Method 1 - Write character as TTY

_start:
    mov AH, 0Eh     ; BIOS function for TTY output
    mov AL, 4Dh     ; character to be written
    int 10h         ; software interrupt (BIOS video services)
