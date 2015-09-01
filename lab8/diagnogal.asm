        TITLE diagnoal display
        .MODEL SMALL
        .DATA
        STRLEN DB 60
        STRSZ DB ?
        STR DB 60 (?)
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
        ;; displaying string
        MOV CX, STRSZ
        LEA BX, STR
l1:     MOV DL, [BX]
        CMP ' '
        JNE ex
        ;; getting present cursor position

        ;; moving cursor position down by one row
ex:     MOV AH, 02H
        INT 21H
        INC BX
        loop l1
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN