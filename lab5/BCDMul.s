        ;; Write a program that takes a BCD numbrer from memory location 8090H, and displays the multiplication table in BCD format in a port at interval of two seconds (approximately). (Assume the number at address 8090H will not exceed nine).
        ;; Let 8090h contains 05 then display 05 first and after 2 second display 10 and again after 2 seconds 15 and so on upto 50
        ;; initialization of port
        MVI A, 80H
        OUT 43H
        ;; initialization of data
        STA 8090H
        MOV B, A
        MVI C, 0AH
mul:    ADD B
        DAA
        OUT 40H
        CALL delay1s
        CALL delay1s
        DCR C
        JNZ mul
delay1s:LXI B AC2C
lp:     DCX B
	MOV A, C
	ORA B
	JNZ lp
	RET
