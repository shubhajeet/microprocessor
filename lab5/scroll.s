        ;; Display the sequence of characters "UPS 85 lab" in Address filed of trainer kit by scrolling form left to right
displaychar:     equ 0389H       ; 8FEFH and 8FF0H address contains displaying
        ;; UPS 85 lab 16 15 12 05 16 08 05 16 11 0A 0B 16
        ;; initialization of data
reset:  MVI B, 00H              ; display without dot
        LXI D, 9000H            ; pointer to string
        MVI C, 06H              ; counter
top:    MOV H, D                ; copying the content of D pair to H pair
        MOV L, E
        ;; saving the value of registers
        PUSH B
        PUSH H
        PUSH PSW
        MVI A, 00H              ;displaying character address field
        CALL displaychar
        POP PSW
	POP H
	POP B
        INR H
	INR H
	PUSH B
        PUSH H
        PUSH PSW
        MVI A, 01H              ;displaying character in data field
        CALL displaychar
        ;; restoring the value of registers
	CALL delay
        POP PSW
	POP H
	POP B
        ;; delay

        INX D
        DCR C
        JNZ top
        JMP reset
        RET
delay: nop
        LXI B, 0A2C2H
lp:     DCX B
        MOV A, C
        ORA B
        JNZ lp
        RET
