        .MODEL SMALL
        .DATA
        STRLEN DB 24
        STRSZ DB ?
        STR DB 24 DUP('$')
        STRTRM DB '$'
        .STACK
        .CODE

        MAIN PROC FAR

        MOV AX, @DATA
        MOV DS, AX

        ;; reading string
        LEA DX, STRLEN
        MOV AH, 0AH
        INT 21H

        ;; clearing the screen
        MOV AH, 00H
        MOV AL, 03H
        INT 10H

        ;; displaying in the center
        ;; setting cursor position
        LEA SI, STR
        MOV CH, 00
        MOV CL, STRSZ
        MOV DX, 00H
L1:     MOV BH, 00H
        MOV DL, 40
        MOV AH, 02H
        INT 10H
        ;; displaying in cursor position
        MOV DL, [SI]
        MOV AH, 02H
        INT 21H
        INC DH
        INC SI
        loop l1

        ;; ending the program
        MOV AX, 4c00H
        INT 21H

        MAIN ENDP

        END MAIN
