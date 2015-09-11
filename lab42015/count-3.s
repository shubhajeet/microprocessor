        ;; Write a program to count up form 00 to FF at port A. BE sure to use PCHL command
port:   equ 40H
	;; intialization of output ports
	MVI A, 80H
	OUT 43H
	;; initialization of variable
        MVI A, 00H
	;; storing address for looping via PCHL
        LXI H, l1
	;; displaying output and counting up the value
l1:     OUT port
	CALL delay
	INR A
	JZ l4
        	PCHL
l4:     RST 5
delay:	MVI C, 0FFH
	l2:	MVI D, 0FFH
	l3:	DCR D
	JNZ l3
	DCR C
	JNZ l2
	RET
