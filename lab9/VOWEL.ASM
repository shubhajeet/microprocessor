        TITLE vowel in a string
        .MODEL SMALL
        .DATA
        STRLEN DB 80
        STRSZ DB ?
        STR DB 81 DUP('$')
        .STACK
        .CODE
        MAIN PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        ;; getting the number
        LEA DX, STRLEN
        MOV AH, 0AH
        INT 21H
        ;; calculating the num of word
        MOV AX, 00
        MOV CH, 00
        MOV CL, STRSZ
        LEA BX, STR
L2:     CMP BYTE PTR[BX], 'a'
        JE ad
        CMP BYTE PTR[BX], 'e'
        JE ad
        CMP BYTE PTR[BX], 'i'
        JE ad
        CMP BYTE PTR[BX], 'o'
        JE ad
        CMP BYTE PTR[BX], 'u'
        JE ad
        CMP BYTE PTR[BX], 'A'
        JE ad
        CMP BYTE PTR[BX], 'E'
        JE ad
        CMP BYTE PTR[BX], 'I'
        JE ad
        CMP BYTE PTR[BX], 'O'
        JE ad
        CMP BYTE PTR[BX], 'U'
        JE ad
        JMP ex
ad:     INC AX
ex:     INC BX
        loop L2
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
        ;; new line character
	MOV AH, 02H
	MOV DL, 0Ah
	INT 21H
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
