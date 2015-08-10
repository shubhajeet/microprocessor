        ;;  Write a program to count the no of bit that are 1 in register A.
	MVI A, 0FFH        
	MVI C, 00H
        MVI B, 08H
l1:     RAL
	JNC l2
            INR C
l2:     DCR B
        JNZ l1
	MOV A,C
	STA 9000H
	RST 5
