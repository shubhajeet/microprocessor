        ;; example 6
        LXI B, 0A4B9H
        LXI D, 329AH
        MOV L, C
        MOV H, B
        DAD D
        MOV C, L
        MOV B, H
        RST 5
