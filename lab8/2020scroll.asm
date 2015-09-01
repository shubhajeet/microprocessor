        TITLE 20*20 window scrolling
        .MODEL small
        .DATA
        STRLEN DB 14
        STRSZ DB ?
        STR DB 14 DUP('$')
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
        ;; making 20 20 screen
        MOV AL, 00H
        MOV CH, 00H
        MOV CL, 20
        MOV DH, 20
        MOV DL, 60
        MOV BH, 71H
        MOV AH, 06H
        INT 10H
        CALL CEN
        ;; displaying the string
        LEA DX, STR
        MOV AH, 09H
        INT 21H
        ;; ending the program
        MOV AH, 4CH
        INT 21H
        MAIN ENDP

        CEN PROC
        ;; displaying in the center
        MOV BH, 00
        MOV DH, 10
        MOV AL, 80
        MOV DL, STRSZ
        SUB AL, DL
        MOV DL, 02h
        DIV DL
        MOV DL, AL
        MOV AH, 02h
	INT 10H
        RET
        CEN ENDP

        END MAIN
