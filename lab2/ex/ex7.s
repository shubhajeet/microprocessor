        ;; example 7
        MVI B, 00H
        MVI C, 45H
        MOV A, B
        INR A
        MOV B, A
        MOV A, C
        DCR A
        MOV C, A
        RST 5
