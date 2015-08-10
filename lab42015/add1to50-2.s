        ;; Write a program to add nos form 1 to 50 and display the 16 bit result at outp ports.
lsb:    equ 40H
msb:    equ 41H
        ;; Initializing output ports
        MVI A, 80H
        OUT 43H
        ;; Initializing variables
        MVI C, 32H
        MVI D, 00H
        MVI A, 00H
        ;; looping
l1:     ADD C
        JNC     l2
             INR D
l2:        DCR C
        JNZ l1
        OUT lsb
        MOV A, D
        OUT msb
        RST 5
