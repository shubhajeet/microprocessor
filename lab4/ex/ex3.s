        ;; example 3
        MVI A, 80H
        OUT 43H
        MVI A, 01H
l1:     OUT 40H
        RLC
        JMP l1
        RST 5
