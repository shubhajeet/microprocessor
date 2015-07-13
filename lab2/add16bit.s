        ;; Two 16-bit data are stored in memory as given below. Write a program to add 16 bit data at memory location 9000 (4790H) and at 9010 (6283H) and display the result in output ports. Use port A for lower byte and port B for higher byte
        ;; setting output ports
        MVI     A, 80H
        OUT     43H
        ;; loading data to register
        LHLD    9000H
        XCHG
        LHLD    9010H
        ;; adding 16 bit data
        DAD     D
        ;; displaying output
        MOV     A, L
        OUT     40H
        MOV     A, H
        OUT     41H
	HLT
