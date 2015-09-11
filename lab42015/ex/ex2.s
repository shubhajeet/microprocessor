        MVI A, 80
        OUT 43H
        MVI A, 0FFH
        LXI H, 8080H
        PCHL
        RST 5

        DCR A
        OUT 40
        JMP 8080H
