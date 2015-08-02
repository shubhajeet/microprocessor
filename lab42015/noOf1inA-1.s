        ;;  Write a program to count the no of bit that are 1 in register A.
        MOV C, 00H
        MOV B, 07H
l1:     RLA
        JNC     l2
                INR C
l2:
        DCR B
        JNZ
