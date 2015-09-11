        ;; example 1
        ;; multiplication
        MVI A, 80H
        OUT 43H
        XRA A
        MVI B, 06
add:    ADI 25
        DCR B
        JNZ add
        OUT 40
        RST 5
