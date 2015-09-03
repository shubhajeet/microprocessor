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
        ;; clearing the screen
        MOV AH, 00H
        MOV AL, 03H
        INT 10H
        ;; displaying string
        MOV CL, STRSZ
        LEA BX, STR
l1:     MOV DL, [BX]
        CMP DL, ' '
        JNE ex
        ;; getting present cursor position
        PUSH CX
        PUSH DX
        MOV AH, 03H
        INT 10H
        ;; setting cursor position
        ADD DH, 1
        MOV AH, 02H
        INT 10H
        POP DX
        POP CX
        JMP exit
        ;; displaying the character
ex:     MOV DL, [BX]
        MOV AH, 02H
        INT 21H
exit:   INC BX
        INC DL
        loop l1
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
