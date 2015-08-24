        TITLE and ten 16 bit numbers stored in memory and store the result
        .MODEL SMALL
        .STACK
        .DATA
        array DW 100H 200H 300H 400H 500H 600H 700H 800H 900H 1000H
        sum DW ?
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        MOV AX, 00H
        MOV CX, 10
        MOV DI, 10
lo:     ADD AX, array[DI]
        INC DI
        loop lo
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
