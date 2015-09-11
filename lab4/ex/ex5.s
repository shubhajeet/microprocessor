        ;; example 5
        MVI A, 80H
        OUT 43H
        MVI A, FFH
        LXI H, l1
        PCHL
        RST 5
l1:     DCR A
        OUT 42H
        JMP l1
