        ;; Write a program that takes a number from memory address 9000H, and stroes the multiplication table of the corresponding number in memory address from 9001H to 9000AH. (The number at memory address 9000H will not exceed twenty-five)
        ;; initialization of variable
        LXI H, 9000H
        MOV B, M
        MVI A, 00H
        MVI C, 0AH
mul:    ADD B
        MOV M, A
        DCR C
        JNZ mul:
        RST 5
