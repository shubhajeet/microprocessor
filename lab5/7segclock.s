        ;; Write a program to make a clock. Use port A, B, and C to dispaly second, minute and hour respectively. The clock shoudl be 24 hours basis
psec:   equ 40H
msec:   equ 41H
hsec:   equ 42H
        ;; initializing output ports
        MVI A, 80H
        OUT 43H
        ;; declaring necessary data
start:  MVI H, 24H
hr:     MVI L, 60H
min     MVI D, 60H
        ;; memory initializing
        MVI B, 00H
        MVI A, 00H
        STA 8FEFH
        STA 8FF0H
        STA 8FF1H
sec:    MVI A, 60H
	SUB D
        STA 8FF1H
        CALL disp
        CALL delay1s
        DCR D                   ;decreasing second
        JNZ sec
        DCR L
        MVI A, 60H
	SUB L
        JNZ min
        DCR H
     	MVI A, 60H
	SUB H
        STA 8FEFH
        JNZ hr
        JMP start
delay1s:LXI B AC2C
	lp:     DCX B
	MOV A, C
	ORA B
	JNZ lp
	RET
        ;; stack preservation
disp:   PUSH PSW
        PUSH B
        PUSH D
        PUSH H
        CALL 0440H
        CALL 044CH
        POP H
        POP D
        POP PSW
todispcode:
