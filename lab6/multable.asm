        TITLE To store multiplication table
        .MODEL SMALL
        .STACK
        .DATA
        NUM1 db 5
        PROC dw 10 DUP(?)
        .CODE
        MAIN PROC FAR
        MOV AX, @Data
        MOV DS, AX
        MOV CX, 10
        LEA BX, PROC
lo:     MOV AX, CX
        MUL NUM1
        MOV [BX], AX
        INC BX
        loop lo
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
