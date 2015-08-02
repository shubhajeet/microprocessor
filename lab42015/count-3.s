        ;; Write a program to count up form 00 to FF at port A. BE sure to use PCHL command
port:   equ 40H
        MOV A, 00H
        LXI H, l1
l1:     OUT port
        INR A
        PCHL
        RST 5
