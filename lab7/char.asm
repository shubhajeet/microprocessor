        TITLE Display Programming is Fun
        .MODEL SMALL
        .DATA
        STR DB "String to be displayed"
        LEN DW $-STR
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        MOV CX, LEN
        MOV DI, 00
lo:     MOV DL, STR[DI]
        MOV AH, 06H
        INT 21H
        INC DI
        loop lo
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
