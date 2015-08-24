        TITLE two tables having ten 16 bit data in each and Wap to add two numbers and store in 3rd
        .MODEL SMALL
        .STACK
        .DATA
        VALS1 DW 100H 200H 300H 500H 600H 700H 800H 900H 1000H
        VALS2 DW 100H 200H 300H 500H 600H 700H 800H 900H 1000H
        VALS3 DW 10 DUP(?)
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX

        MOV CX, 10
        MOV DI, 10
lo:     MOV AX, VALS1[DI]
        ADD AX, VALS2[DI]
        MOV VALS3[DI], AX
        loop lo

        MOV AX, 4C00H
        INT 21H

        MAIN ENDP
        END MAIN
