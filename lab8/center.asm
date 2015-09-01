        TITLE displaying at the center
        .MODEL SMALL
        .DATA
        STRLEN DB 60
        STRSZ DB ?
        STR DB 60 DUP('$')
        STRTRM DB '$'
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; reading from the user
        LEA DX, STRLEN
        MOV AH, 0AH
        INT 21H
	;; clearing the screen
        MOV AH, 00
        MOV AL, 03H
        INT 10H
        ;; moving the cursor
        MOV BH, 00
        MOV DH, 00
        MOV AL, 80
        MOV DL, STRSZ
        SUB AL, DL
        MOV DL, 02h
        DIV DL
        MOV DL, AL
        MOV AH, 02h
        INT 10H
	;; displaying the string
        LEA DX, STR
        MOV AH, 09H
        INT 21H
        ;; ending the program
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
