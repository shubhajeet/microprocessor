        ;; Write a program at memory location FE00H, which resets all memory location from 8000H to FE00H
        LXI H, 8000H
loop:   MVI M, 00H
        INX H
        MOV A, L
        ANI 00H
        JZ loop
        MOV A, H
        ANI FEH
        JZ loop
        RST 5
