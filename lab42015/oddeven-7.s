        ;; Write a program that will check whether the number in reg B is even or not. If the number is even display it is output port
	MVI B, 88H        
	MVI A, 80H
        OUT 43H
        MOV A, B
        RAR
        JC l1
        RAL
        OUT 40H
l1:     RST 5
