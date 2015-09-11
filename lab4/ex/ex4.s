        ;; example 4
        MVI A, 80H
        OUT 43H
        MVI A, 01H
        MVI B, FFH
l1:     OUT 40H
        INR A
        DCR B
        JNZ l1
        RST 5
