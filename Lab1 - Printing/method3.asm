; Method 3 - Write character/attribute

_start:
    mov AH, 09h     ; display character with attribute
    mov AL, 'M'
    mov BL, 10      ; green color
    int 10h
