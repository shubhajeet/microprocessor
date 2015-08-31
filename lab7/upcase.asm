        TITLE to upcase
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
        ;; changing to upcase
        MOV CX, 00H
        MOV CL, STRLEN
        LEA BX, STR
l1:     MOV AL, [BX]
        ;; checking if LCASE
        CMP AL, 'a'
        JL ex
        CMP AL, 'z'
        jG ex
        AND AL, 11011111b
        MOV [BX], AL
ex:    INC BX
        loop l1
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
