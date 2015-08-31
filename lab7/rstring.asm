 	TITLE read from the keyboard
	.MODEL SMALL
	.DATA
	STRLEN DB 20
	STRSZ DB 00
	STR DB 20 DUP(' ')
	STRTRM DB '$'
	.STACK
	.CODE
	MAIN PROC FAR
	MOV AX, @DATA
	MOV DS, AX
	;; reading string
	LEA DX, STRLEN
	MOV AH, 0AH
	INT 21H
	;; new line character
	MOV DL, 0DH
	MOV AH, 02H
	INT 21H
	MOV DL, 0AH
	MOV AH, 02H
	INT 21H
	;; writing string
	LEA DX, STR
	MOV AH, 09H
	INT 21H
	;; ending program
	MOV AX, 4C00H
	INT 21H
	MAIN ENDP
	END MAIN
