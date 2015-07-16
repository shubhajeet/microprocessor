        ;; example 4
        MVI B, 18H
        MOV A, B
        RAL
        RLC
        MOV A, B
        RAR
        RRC
        RST 5
