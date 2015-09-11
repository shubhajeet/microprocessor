        ;; A table contains ten 8-bit data starting at 8070H. Also display the sum of even numbers at output ports after 2-3 seconds of displaying the sum of odd numbers.
        MVI A, 80H
        OUT 43H
        ;; initialization of output ports
        MVI A, 0AH              ;counter
        LXI H, 8050H            ;source
        LXI B, 0000H            ;odd
        LXI D, 0000H            ;even
        ;; loading data
loop:   PUSH psw
        MOV A, M
        RAR
        ;; checking no is odd or even
        JNC odd
        RAL
        ADD E
        MOV E, A
        JNC carrya
	    INR D
carrya: JMP out
odd:    RAL
        ADD C
        JNC out
	        INR B
out:    INX H
        POP PSW
        DCR A
        JNZ loop
        ;;  storing and displaying data
        MOV A, E
        OUT 40H
        STA 8070H
        MOV A, D
        STA 8071h
        CALL delays
	CALL delays
	CALL delays
        CALL delays
        MOV A, C
        OUT 40H
        STA 8060H
        MOV A, B
        STA 8061h
        RST 5
delays: LXI B, 0A2C2H
lp:     DCX B
	MOV A, C
	ORA B
	JNZ lp
	RET
