        ;; Write a program to add nos form 1 to 50 and display the 16 bit result at outp ports.
lsb:    equ 40H
msb:    equ 41H
        ;; Initializing output ports
        MVI A, 80H
        OUT 43H
        ;; Initializing variables
        MVI C, 50
        LXI D, 0000H
        MOV A, 00H
        ;; looping
l1:     ADD C
        JNC     l2
l2:             INR D
        DCR C
        JNZ l1:
        OUT lsb
        MVI A, D
        OUT msb
        RST 5
