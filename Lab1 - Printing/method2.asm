; Method 2 - Write character

_start:
	mov AH, 0Ah 	; BIOS function to display
	mov AL, 'M'
	int 10h