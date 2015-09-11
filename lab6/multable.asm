        TITLE To store multiplication table
        .MODEL SMALL
        .STACK
        .DATA
        NUM1 db 5
        PRO dw 10 DUP(?)
        .CODE

        MAIN PROC FAR
        MOV AX, @Data
        MOV DS, AX
        MOV CX, 10
        MOV DX, 0
        LEA BX, PRO
lo:     MOV AX, DX
        MUL NUM1
        MOV [BX], AX
        INC BX
        INC BX
        INC DX
        loop lo
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP

        END MAIN
