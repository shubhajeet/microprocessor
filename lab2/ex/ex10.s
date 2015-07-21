        ;; example 10
        LXI B, 4885H
        LXI D, 2668H
        MOV A, C
        ADD E
        DAA
        MOV C, A
        MOV A, B
        ADC D
        DAA
        MOV B, A
        RST 5
