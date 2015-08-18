        ;; Write a program to make a clock. Use port A, B, and C to dispaly second, minute and hour respectively. The clock shoudl be 24 hours basis
psec:   equ 40H
msec:   equ 41H
hsec:   equ 42H
        ;; initializing output ports
        MVI A, 80H
        OUT 43H
        ;; declaring necessary data
start:  MVI H, 23
hr:     MVI L, 59
min:    MVI D, 60
sec:    MVI A, 60
        SUB D
        OUT psec
        CALL delays
        DCR D                   ;decreasing second
        JNZ sec
        MVI A, 60
        SUB L
        OUT msec
	DCR L
        JNZ min
        MVI A, 24
        SUB H
	DCR H
        OUT hsec
        JNZ hr
        JMP start
delays: nop
        LXI B, 01H
lp:     DCX B
        MOV A, C
        ORA B
        JNZ lp
        RET
