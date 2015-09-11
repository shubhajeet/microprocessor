        ;; Multiplication between 8 bit number and a 16 bit number(result within 16-bit number)
        ;; example 3
        ;; initialization of port
        MVI A, 80H
        OUT 43H
        ;; initialization of input
        MVI A, 54H              ;operand
        LXI D, 7432H            ;operand
        LXI H, 0000H            ;result
        MVI B, 08H              ;counter
labE:   DAD H                   ;equivalent to shifting left
        RLC                     ;shifting left
        JNC lab14
        DAD D                   ;
lab14:  DCR B
        JNZ labE
        MOV A, H
        OUT 40H
        MOV A, L
        OUT 41H
        RST 5
