        ;; Write a program to subtract the content at memory location 818BH from BCD dat stored at 818AH and store the BCD result at meomory location 818CH. Display both operands and sum in output ports.
        ;; initializing output port
        MVI     A, 80H
        OUT     43H
        ;; initializing carry
        MVI     B, 00H
        ;; loading data
        LXI     H, 818BH
        DCX     H
        MOV     A, M
        SUA     M
        ;; converting to BCD
        DAA
        LXI     H, 818CH
        ;; storing result
        MOV     M, A
        ;; displaying the output
        OUT     40H
        ;; detecting borrow
        JNC     L1
        INR     B
L1:
        ;; storing borrow
        INX     H
        MOV     M, B
        MOV     A, B
        OUT     41H
        HLT
