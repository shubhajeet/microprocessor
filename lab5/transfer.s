        ;; assignment 7
        ;; A table contains ten 8bit data starting at 9000H. Write an 8085 program to transfer the data from this table to next table starting at 9020H if the number is greater than 40H and less than C0H, else store 00H
        LXI D, 9020H
        LXI H, 9000H
        MVI C, 0AH
        ;; loading data
top:    MOV A, M
        CPI 40H
        ;; placing destination in M
        XTHL
        ;; checking if number is greater than
        JNC greater
        MVI A, 00H
greater: MOV M,A
        XTHL
        INX H
        INX D
        DCR C
        JNZ top
