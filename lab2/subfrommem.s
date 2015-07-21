        ;; Suppose the memory content is as shown in the table along side. Write a program to subtra the 16 bit data at memory location 8002H(2697H) form data at memory location 8090H(7963H). Store the result at memory location 8094
        ;; loading lsb
        LHLD    8090H
        XCHG
        LHLD    8092H
        MOV     A, L
        CALL    ncmp
        ADD     E
	DAA
        JC      l1
                CALL ncmp
l1:     MOV     L,A
	CMC        
	MOV     A,H
	JNC	l3
	ADI	01H
l3: 	CALL    ncmp
        ADD     D
	DAA
        JC      l2
        CALL ncmp
        CMC
l2:     MOV     H,A
        SHLD     8094H
        HLT
ncmp:   MOV     C,A
        MVI     A,99H
        SBB     C
        INR     A
        RET
