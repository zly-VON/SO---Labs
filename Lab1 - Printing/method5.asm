; Method 5 - Display character + attribute & update cursor

_start:
	; Display characters
	mov AH, 09h     ; display character with attribute
	mov AL, 'M'
	mov BL, 10      ; green color
	mov CX, 4       ; display 4 times
	int 10h

	; Set cursor position
	mov AH, 02h     ; BIOS function for cursor position
	mov DH, 1       ; row
	mov DL, 5       ; column
	int 10h