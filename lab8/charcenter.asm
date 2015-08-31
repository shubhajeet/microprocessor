        TITLE
        .MODEL SMALL
        .DATA
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
