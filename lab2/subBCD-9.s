        ;; Assignment 9
        ;; Write a program to subtract the content at memory location 818BH from BCD data stored at 818AH and store the BCD result at meomory location 818CH. Display both operands and sum in output ports.
        portOp1: equ 40H
        portOp2: equ 41H
        portAns: equ 42H
        ;; initializing output port
        MVI     A, 80H
        OUT     43H
        ;; loading data
        LDA     818AH
        ;; displaying data
        OUT     portOp1
        MOV     C, A
        ;; loading data
        LDA     818BH
        MOV     B, A
        OUT     portOp2
        ;; converting to 99s complement
        CALL    ncmp
        ;; subtracting by 100s complement
        ADD     C
        DAA
        JC      l1
        CALL ncmp
        STC
        JMP     l2
        ;; storing result
l1:     CMC
l2:     STA     818CH
        ;; displaying the output
        OUT     portAns
        HLT
ncmp:   MOV     D,A
        MVI     A,99H
        SUB     D
        INR     A
        RET
