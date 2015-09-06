        TITLE sum 10 15 bit number form memory
        .MODEL SMALL
        .DATA
        NUMS DW 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000
        SUMS DW ?
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; calculating the sum
        MOV CX, 10
        LEA BX, NUMS
        MOV AX, 00
L2:     ADD AX, [BX]
        INC BX
        INC BX
        LOOP L2
        MOV SUMS, AX
        ;; converting to decimal
        MOV CX, 00
        MOV BX, 10
l3:     MOV DX, 00
        INC CX
        DIV BX
        CMP AX, 00
        PUSH DX
        JG l3
        ;; printing in decimal
dis:    POP DX
        OR DX, 30H
        MOV AH, 02H
        INT 21H
        loop dis
        ;; ending program
        MOV AH, 4CH
        INT 21H
        MAIN ENDP

        END MAIN
