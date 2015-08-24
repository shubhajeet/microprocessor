        TITLE Write a Program in DEBUG to add tow 8 bit numbers stored in the memory loacation DS:300 and DS:302 and store the result at DS:304
        .MODEL SMALL
        .DATA
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; adding two numbers
        MOV AX, 00H
        MOV AL, DS:[300H]
        ADD AL, DS:[302H]
        ;; storing the two numbers
        MOV DS:[304H], AL
        MAIN ENDP
        END MAIN
