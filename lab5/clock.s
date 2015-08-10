        ;; Write a program to make a clock. Use port A, B, and C to dispaly second, minute and hour respectively. The clock shoudl be 24 hours basis
psec:   equ 40H
msec:   equ 41H
hsec:   equ 42H
        ;; initializing output ports
        MVI A, 80H
        OUT 43H
        ;; declaring necessary data
start:  MVI H, 24H
hr:     MVI L, 60
min     MVI D, 60
sec:    MVI A, 60
        SUB D
        OUT psec
        CALL delay1s
        DCR D                   ;decreasing second
        JNZ sec
        DCR L
        MVI A, 60
        SUB L
        OUT msec
        JNZ min
        DCR H
        MVI A, 24
        SUB H
        OUT hsec
        JNZ hr
        JMP start
delay1s:LXI B 0AC2CH
lp:     DCX B
        MOV A, C
        ORA B
        JNZ lp
        RET