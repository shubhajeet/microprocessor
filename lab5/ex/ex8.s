        ;; example 8
dispdata: equ 044CH
        MVI A, 00
top:    STA 8FF1H
        MVI B, 00
        PUSH PSW
        CALL dispdata
        POP PSW
        INR A
        CALL delay
        JMP top
delay:  MVI B, FF
l2:     MVI C, FF
l1:     NOP
        DCR C
        JNZ l1
        DCR B
        JNZ l2
