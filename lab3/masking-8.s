        ;; Write a program to check the bit D5 of the content of memory at 9025H by masking other bits. Display 01H at port A if the bit is 1 else display 00H. Use the roate instructions after masking. Use the rotate instruction which uses less no of instructions.
        port: equ  40H
        ;; intialization of output port
        MVI A, 80H
        OUT 43H
        ;; loading data
        LDA 9025H
        ANI 10H
        ;; rotating D5 to CY
        RAL
        RAL
        RAL
        RAL
        ;; checking if it bit is 1
        JNC l1
        MVI A,01H
        OUT port
l1:     RST 5
