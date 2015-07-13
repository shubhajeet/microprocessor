        ;; The table along side shows BCD data. Write a program to add the content at memory locatio 818A and 818B. Store the BCD result at meomory location 818C. Display both operands and sum in output ports.
        ;; initializing output
        MVI     A, 00H
        OUT     43H
        ;; initializing carry
        MVI     C, 00H
        ;; loading data
        LXI     H, 818AH
        INX     H
        MOV     A, M
        ADA     M
        ;; converting to BCD
        DAA
        INX     H
        ;; storing result
        MOV     M, A
        ;; displaying output
        OUT     40H
        ;; detecting carry
        JNC     L1
        INR     C
L1:
        ;; storing carry
        INX     H
        MOV     M, C
        ;; displaying carry
        MOV     A, C
        OUT     41H
        HLT
