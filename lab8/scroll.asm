        TITLE scroll
        .MODEL SMALL
        .DATA
        STR DB "Programming in Assembly Language is Fun",'$'
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; setting reverse video mode
        MOV AH, 00
        MOV AL, 0EH
        INT 10H
        ;; moving to row 5, 20 column
        MOV DH, 5                  ;row
        MOV DL, 20                 ;column
        MOV AH, 02H
        INT 10H
        ;; scrolling to 20 row, column 60
	MOV DH, 20                  ;row
	MOV DL, 60                 ;column
        MOV AH, 07H
        INT 10H

        ;; displaying the string
        LEA DX, str
        MOV AH, 09H
        INT 21H
        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
