        ;; WAP to read a number (0 to 9) from keyboard and display the multiplication table in BCD format in Address and Data field at interval of approximately two seconds.
        ;; Getting input from the keyboard
        CALL 03BAH
        ;; declaration of variables
        MOV B, A                ; value to whose multiplication is to be shown
        MOV C, 10               ; counter
        MVI A, 00H              ; multiplication result
start:  LXI H, 8FF1H
        ADD B
        DAD
        ;; displaying multiplication table
        PUSH PSW
        PUSH B
        PUSH H
        MOV M, A
        DCR
        CALL 044CH
        POP H
        POP B
        POP PSW
        PUSH PSW
        PUSH B
        PUSH H
        MVI A, 10H
        SUB C
        MOV M, A
        DCR
        MOV M, B
        CALL 0440H
        POP H
        POP B
        POP PSW
        ;;  waiting for about 2 seconds
        CALL delays
        CALL delays
        CALL delays
        CALL delays
        DCR C
        JNZ start
        RET
        ;; delay loop
delays: PUSH B
        LXI B, 0A2C2H
lp:     DCX B
	MOV A, C
	ORA B
	JNZ lp
        POP B
	RET
