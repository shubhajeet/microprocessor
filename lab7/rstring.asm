        TITLE read from the keyboard
        .MODEL SMALL
        .DATA
        STR DB 20, 00, 20 DUP(?)
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; reading string
        LEA DX, STR
        MOV AH, 0AH
	INT 21H
        ;; writing string
        INC DX
        INC DX
        MOV AH, 09H
	INT 21H
        ;; ending program
        MOV AX, 4C00H
        INT 21H
        MAIN ENDP
        END MAIN
