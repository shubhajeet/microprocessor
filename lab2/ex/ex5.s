        ;; example 5
        LXI B, 3456H
        LXI D, 1297H
        MOV A, C
        SUB E
        MOV C, A
        MOV A, B
        SBB D
        MOV B, A
        RST 5
