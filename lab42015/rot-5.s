        ;; Write a program to rotate the data 3C in a port. Call a delay subroutine for the visible output.
        ;; initialization of output ports
        MVI A, 80H
        OUT 43H
        ;; initialization of variable
        MVI A, 3CH
l1:     RRC
        CALL delay
        jmp l1
delay:	MVI C, 0FFH
l2:	MVI D, 0FFH
l3:	DCR D
	JNZ l3
	DCR C
	JNZ l2
	RET
