        TITlE series addition
        .MODEL SMALL
        .STACK
        .DATA
        sum dw ?
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        MOV CX, 20
        MOV BX, 00
        MOV DL, 2
lo:     MOV AX, DX
        INC DX
        MUL DL
        ADD BX, AX
        INC DL
        loop lo
        MOV sum, BX
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
