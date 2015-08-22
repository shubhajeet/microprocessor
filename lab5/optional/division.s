        ;; Write a program for 8085 microprocessor to read dividend and divisor from memory address 8000H and 8001H respectively and store the quotient and reminder to memory address 8002H and 8003H respectively using division by shifting.
        ;; reading operand
        LXI H, 8000H
        MOV D, M
        INX H
        MOV E, M

        ;; writing data
        MVI C, 08H
        MVI B, 00H
loop:   PUSH PSW
        MOV A, D
        RAL
        MOV D, A
        POP PSW
        RAR
        CMP E
        JNC div
        SUB E

div:    PUSH PSW
        MOV A, B
        RAL
        POP PSW

        DCR C
        JNZ loop

        ;; storing data
        INX H
        MOV M, B
        INX H
        MOV M, A

        RST 5
