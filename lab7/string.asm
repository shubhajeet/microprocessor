        TITLE Display Programming is Fun
        .MODEL SMALL
        .DATA
        STR DB "Programming is Fun$"
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, STR
        MOV AH, 09H
        INT 21H
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
