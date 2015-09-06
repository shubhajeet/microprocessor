        TITLE sum from 1 to n
        .MODEL SMALL
        .DATA
        STRLEN DB 8
        STRSZ DB ?
        STR DB 9 DUP('$')
        NUM DW 0
        SUM DW 0
        BASE DW 10
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; getting the number
        LEA DX, STRLEN
        MOV AH, 0AH
        INT 21H
        ;; converting to number
        MOV CX, 00
        MOV CL, STRSZ
        LEA DI, STR
        MOV AX, 00
l1:     MOV BL, [DI]
        CMP BL, '0'
        JB brk
        CMP BL, '9'
        JA brk
        ;; converting to number
        AND BL, 0FH
        MUL BASE
        ADD AX, BX
        INC DI
        LOOP l1
brk:    MOV NUM, AX
        ;; calculating the sum
        MOV CX, 2
        MOV BX, 2
L2:     MOV AX, CX
        MUL AX
        MUL BX
        ADD SUM, AX
        CMP CX, NUM
        INC CX
        JBE L2
        ;; converting to decimal
        MOV AX, SUM
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
