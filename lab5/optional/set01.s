        ;; Modify above program to set 01H to all memory locaiton
        LXI H, 8000H
loop:   MVI M, 01H
        INX H
        MOV A, L
        ANI 00H
        JZ loop
        MOV A, H
        ANI FEH
        JZ loop
        RST 5
