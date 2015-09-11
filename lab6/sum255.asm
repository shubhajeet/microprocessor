        TITLE Sum numbers from 0 to 255
        .MODEL SMALL
        .STACK
        .DATA
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX

        MOV AX, 00H
        MOV CX, 255
l:      ADD AX, CX
        loop l

        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
