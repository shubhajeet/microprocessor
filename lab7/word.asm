        TITLE word
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
        ;; printing word
        MOV CX, 00H
        MOV CL, STRLEN
        LEA BX, STR
l1:     MOV DL, [BX]
        CMP DL, ' '
        JNE ex
        ;; new line character
	MOV DL, 0DH
	MOV AH, 02H
	INT 21H
	MOV DL, 0AH
	MOV AH, 02H
	INT 21H
        JMP brk
ex:     MOV AH, 02H
        INT 21H
brk:    INC BX
        loop l1

	;; ending program
	MOV AX, 4C00H
	INT 21H
        MAIN ENDP
        END MAIN
