        ;; Write a program  to add the 6 bit data at memory location 8284 with the 16 bit data BCD dat at 826 and store the BCD result at 8288
        ;; initializing carry
        MVI     D, 00H
        ;; loading data
        LDA     8284H
        MOV     C, A
        LDA     8286H
        ADD     C
        ;; converting to BCD
        DAA
        ;; storing result
        STA     8288H
        ;; loading data
        LDA     8285H
        MOV     C, A
        LDA     8287H
        ADC     C
        ;; converting to BCD
        DAA
	;; storing result
	STA	8289H	
        ;; detecting carry
        JNC     L1
        	INR     D
        ;; storing carry
L1:     MOV     A, D
        STA     828AH
        HLT
