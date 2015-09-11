        ;; example 3
        LXI B, 5780H
        LXI D, 4293H
        MOV A, C
        ADD E
        MOV C, A
        MOV A, B
        ADC D
        MOV B, A
        RST 5
