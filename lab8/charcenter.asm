        TITLE display char in center
        .MODEL SMALL
        .DATA
        STRLEN DB 24
        STRSZ DB ?
        STR 60 DB DUP('$')
        STRTRM DB '$'
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; clearing the screen
        MOV AX, 00H
        INT 10H
        ;; reading string
        LEA DX, STRLEN
        MOV AH, 0AH
        INT 21H
        ;; clearing the screen
        MOV AX, 00H
        MOV AH, 13H
        INT 10H
        ;; displaying in the center
        ;; setting cursor position
        INT 10H
        ;; displaying in cursor position
        LEA DX, STR
        MOV AH, 09H
        INT 21H
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
