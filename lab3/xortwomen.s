        ;; Write a program to XOR the content of 9027H with the content of location 9028xsxH and store the content of 9029H
        LXI H, 9027H
        MOV A, M
        INX H
        ORA M
        INX
        MOV M, A
        RST 5
