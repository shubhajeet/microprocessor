        ;; Assigment 1
        ;; Two 16-bit data are stored in memory as given below. Write a program to add 16 bit data at memory location 9000 (4790H) and at 9010 (6283H) and display the result in output ports. Use port A for lower byte and port B for higher byte
        ;; setting output ports
	portA:	equ	40H
	portB:	equ	41H
	MVI     A, 80H
        OUT     43H
        ;; loading lsb
        LDA     9000H
        MOV     B,A
        LDA     9010H
        ;; adding lsb
        ADD     B
        ;; displaying output
        OUT     portA
        ;; loading msb
        LDA     9001H
        MOV     B,A
        LDA     9011H
        ;; adding msb
        ADC     B
        ;; displaying output
        OUT     portB
        HLT
