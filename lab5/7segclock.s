        ;; Write a program to make a clock. Use port A, B, and C to dispaly second, minute and hour respectively. The clock shoudl be 24 hours basis
        ;; initializing output ports
        MVI A, 80H
        OUT 43H
        ;; declaring necessary data
start:  MVI H, 23
hr:     MVI L, 59
min:    MVI D, 60
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
        CALL delays
        PUSH PSW
	PUSH B
	PUSH D
	PUSH H
	CALL 044CH
	POP H
	POP D
	POP B
	POP PSW
        DCR D
        JNZ sec
        MVI A, 60H
	SUB L
        DCR L
        STA 8FF0H
        PUSH PSW
	PUSH B
	PUSH D
	PUSH H
	CALL 0440H
	POP H
	POP D
	POP B
	POP PSW
        JNZ min
     	MVI A, 60H
	SUB H
        STA 8FEFH
        PUSH PSW
	PUSH B
	PUSH D
	PUSH H
	CALL 0440H
	POP H
	POP D
	POP B
	POP PSW
        DCR H
        JNZ hr
        JMP start
delays: LXI B, 0A2C2H
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

