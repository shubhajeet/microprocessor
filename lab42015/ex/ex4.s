        MVI A, 80H
l3:     OUT 43h
        LDA 8050H
        CPI 01H
        CZ l1
        CNZ l2
        RST 5
l1:     MVI A, 0FFH
        OUT 40
        RET
l2:     MVI A, 01H
        OUT 41H
        RET
