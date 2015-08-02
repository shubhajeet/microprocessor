        MVI A, 80H
        OUT 43H
        MVI A, 01
        OUT 40H
        RLC
        NOP
        NOP
        NOP
        JMP 8002H
        RST 5
