        MVI A, 80H
        OUT 43H
        MVI A, 01H
        CALL l1
        OUT 40
l1:     INR A
        CALL l2
        RET
l2:     ADI 03
        RET
