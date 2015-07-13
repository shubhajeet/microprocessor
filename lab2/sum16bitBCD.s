        ;; Write a program  to add the 6 bit data at memory location 8284 with the 16 bit data BCD dat at 826 and store the BCD result at 8288
        ;; initializing carry
        MVI     C, 00H
        ;; loading data
        STA     8284H
        MOV     C, A
        STA     8286H
        ADA     C
        ;; converting to BCD
        DAA
        ;; storing result
        STA     8288H
        ;; loading data
        STA     8285H
        MOV     C, A
        STA     8287H
        ADC     C
        ;; converting to BCD
        DAA
        ;; detecting carry
        JNC     L1
        INR     C
L1:
        ;; storing carry
        MOV     A, C
        STA     8288H
        HLT
