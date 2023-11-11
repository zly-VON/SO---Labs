; Method 4 - Display character + attribute

_start:
    mov AH, 09h     ; display character with attribute
    mov AL, 'M'
    mov BL, 10      ; green color
    mov CX, 10      ; display 10 times
    int 10h
