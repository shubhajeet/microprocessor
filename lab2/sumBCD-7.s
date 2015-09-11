	;; Assignment 7
        ;; The table along side shows BCD data. Write a program to add the content at memory locatio 818A and 818B. Store the BCD result at meomory location 818C. Display both operands and sum in output ports.
        portOp1: equ 40H
        portOp2: equ 41H
        portAns: equ 42H
        ;; initializing output
        MVI     A, 80H
        OUT     43H
        ;; initializing carry
        MVI     C, 00H
        ;; loading operand 1
        LDA     818AH
        MOV     B, A
        ;; displaying operand 1
        OUT     portOp1
        ;; loading operand 2
        LDA     818BH
        ;; displaying operand 2
        OUT     portOp2
        ADD     B
        ;; converting to BCD
        DAA
        ;; storing result
        STA     818CH
        ;; displaying output
        OUT     portAns
        ;; detecting carry
        JNC     L1
                INR     C
        ;; storing carry
L1:     MOV     A, C
        STA     818DH
        HLT
