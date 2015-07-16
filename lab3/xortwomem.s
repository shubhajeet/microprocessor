        ;; Write a program to XOR the content of 9027 with the content of location 9028H and store the content of 9029H
        LXI H, 9027H
        MOV A, M
        INX H
        XRA M
        INX
        MOV M, A
        RST 5
