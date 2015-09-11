        MVI A, 80H
l3:     OUT 43h
        MVI A, 01H
        OUT 40
        CALL l1
        RLC
        JMP l3
l1:     LXI B, 0FFFFH
l2:     DCR B
        JNZ l2
        DCR C
        RZ
        JMP l2
