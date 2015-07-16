        ;; example 8
        MVI A, 80H
l2:     OUT 43H
        MVI A, 01H
        OUT 40H
        CALL l1
        RLC
        JMP l2
l1:     LXI B, FFFFH
l3:     DCR B
        JNZ l3
        DCR C
        RZ
        JMP l3
