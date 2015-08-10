        ;; delay loop
        ;; example 5
        MVI A, 01H
top:    OUT 40H
        INR A
        CALL delay
        JMP top
delay:  MVI B, 80H
lab52:  MVI C, 80H
lp:     DCR C
        JNZ lp
        DCR B
        JNZ lab52
        RET
