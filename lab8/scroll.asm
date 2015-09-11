        TITLE scroll
        .MODEL SMALL
        .DATA
        STR DB "Programming in Assembly Language is Fun",'$'
        STRLEN DB $-STR
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; setting reverse video mode
        MOV AH, 00
        MOV AL, 03H
        INT 10H
        ;; scrolling form 5, 20 to  20 row, column 60
	MOV CH, 05
        MOV CL, 20
	MOV DH, 20
        MOV DL, 60
        MOV AH, 07H
        MOV BH, 71H
        MOV AL, 00
        INT 10H
        ;; character cursor position change
        MOV BH,00
        MOV DH, 12
        MOV DL, 30
        MOV AH, 02H
        INT 10H
        ;; displaying the string
        LEA DX, STR
        MOV AH, 09H
        INT 21H




        ;; ending the program
        MOV AX, 4c00H
        INT 21H
        MAIN ENDP
        END MAIN
