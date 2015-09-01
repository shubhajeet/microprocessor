        TITLE 20*20 window scrolling
        .MODEL SMALL
        .DATA
        STRLEN DB 14
        STRSZ DB ?
        STR DB 14 DUP(?)
        STRTRM DB '$'
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; making 20 20 screen
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
