        ;; Write a program for 8085 microprocessor to read dividend and divisor from memory address 8000H and 8001H respectively and store the quotient and reminder to memory address 8002H and 8003H respectively using division by shifting.
        ;; reading operand
        LXI H, 8000H
        MOV A, M
        INX H
        MOV B, M
        RST 5
