        ;; Find the largest no from the list of data stored at 9001H and the no of data is stored at 9000H and display it in Data Field and display L in Address Field
        LXI H, 9000H            ; pointer
        MOV C, M                ; counter at C
        INR H
        MVI A, 00H              ; least positive number
l1:     CMP M                   ; finding largest
        JNC l2
        MOV A, M                ; largest value to A
        MOV D, H                ; storing address
        MOV E, L
l2:     INR H
        DCR C
        JNZ l1
        ;; displaying the data
        ;; update data field
        LXI H, 8FEFH
        MOV M, E
        INX H
        MOV M, D
        INX H
        MOV M, A
        PUSH PSW
	PUSH B
	PUSH D
	PUSH H
	CALL 044CH
        CALL 0440H
	POP H
	POP D
	POP B
	POP PSW
        RST 5
