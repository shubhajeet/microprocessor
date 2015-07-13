        ;; Suppose the memory content as shown in the table along side. Write a program to add the 16 bit data on memory location 8084 with 16 bit data at 8026 and store the result at 8088. Use DADD instruction in adding 16 bit dat. Verify the result with 16-bit additoin using ADC instruction
        ;; initializing output
        MVI     A, 80H
        OUT     43H
        ;; initializing carry
        MVI     C, 00H
        ;;  loading data form memory
        LHLD    8084H
        XCHG
        LHLD    8086H
        ;;  adding 16 bit numbers
        DAD     H
        ;; storing 16 bit data
        SHLD    8088H
        ;; detecting and storing carry
        JNC     L1:
        INC     C
L1:
        MOV     A, C
        STA     808AH
        ;; using ADC to add 16 bit numbers
        MVI     B, 00H
        ;; loading lsb
        LDA     8084H
        MOV     E, A
        LDA     8086H
        ;; adding two lsb
        ADD     E
        ;;  storing result
        MOV     E, A
        ;;  loading lsb
        LDA     8085H
        MOV     D, A
        LDA     8087H
        ;; adding msb
        ADC     D
        ;; storing result
        MOV     D, A
        ;; detecting carry
        JNC     L2:
        INC     B
L2:
        ;; Comparing the result from  two methods
        CMP     H            ; comparing msb
        JNZ     L3:
        MOV     A, B
        CMP     C            ; comparing carry
        JNZ     L3:
        MOV     A, E
        CMP     L         ; comparing lsb
        JNZ     L3:
        MVI     A,00H
        OUT     40H
L3:
        MVI     A,01H
        OUT     40H
        HLT
