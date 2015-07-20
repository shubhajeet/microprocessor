        ;; Write a program to compare the content of the memory location 8081 and 8082. Subtract the memory content at 8082 from 8081 and see whether the accumulator and flag content is same as the compare instruction or not
        LXI H, 8081H
        MOV A, M
        INX H
        CMP M
        ;; using SUB instruction
        LXI H, 8081H
        MOV A, M
        INX H
        SUB M
        RST 5
