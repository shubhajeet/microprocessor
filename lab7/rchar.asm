	TITLE read from the keyboard
	.MODEL SMALL
	.DATA
	STRLEN DB 20
	STR DB 20 DUP(' ')
	.STACK
	.CODE
	MAIN PROC FAR
	MOV AX, @DATA
	MOV DS, AX
	;; reading string
	MOV CX,STRLEN
        LEA BX, STR
l1:     MOV AH, 01H
        INT 21H
        MOV BYTEPTR[BX], AL
        INC BX
        loop l1
	;; new line character
	MOV DL, 0DH
	MOV AH, 02H
	INT 21H
	MOV DL, 0AH
	MOV AH, 02H
	INT 21H
	;; writing string
        MOV CX, STRLEN
        LEA BX, STR
l2:     MOV AH, 02H
	MOV AL, BYTEPTR[BX]
        INT 21H
        INC BX
        loop l2
	;; ending program
	MOV AX, 4C00H
	INT 21H
	MAIN ENDP
	END MAIN
