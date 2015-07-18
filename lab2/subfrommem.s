        ;; Suppose the memory content is as shown in the table along side. Write a program to subtra the 16 bit data at memory location 8002H(2697H) form data at memory location 8090H(7963H). Store the result at memory location 8094
        ;; loading lsb
        LHLD    8090H
        XCHG
        LHLD    8092H
        MOV     A, L
        MOV     B, E
	MVI	C, 00h
        CALL BCDsub
        MOV L, A
        MOV A, H
        MOV B, D
        CALL BCDsub
        MOV H, A
        SHLD     8094H
        HLT
BCDsub: ADD C
	CALL    ncmp
        ADD     E
        DAA
        JC     l1
        call ncmp
	MVI	C,01H
l1:     RET

ncmp:   MOV     C,A
        MVI     A,99H
        SUB     C
        INR     A
	MVI	C,00h
        RET
