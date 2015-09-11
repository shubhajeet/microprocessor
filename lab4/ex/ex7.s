        ;; example 7
        MVI A, 80H
        OUT 43H
        LDA 8050H
        CP 01H
        CZ l1
        CNZ l2
        RST 5
l1:     MVI A, FF
        OUT 42H
        RET
l2:     MVI A, 01H
        OUT 41H
        RET
