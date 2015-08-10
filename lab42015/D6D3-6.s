        ;; Write a program that will check whether the bit D6 of a number stored at 4123 is 0 and its bit D3 is 1. If the condition statisfies displays the number
        ;; initialization of output ports
	MVI A, 80H
	OUT 43H
	LDA 4123H
        MOV B, A
        ;; checking D6 bit
        ANI 40H
        JNZ l1
        ;; checking D3 bit
        MOV A, B
        ANI 08H
        JZ l1
        MOV A, B
        OUT 40H
l1:     RST 5

