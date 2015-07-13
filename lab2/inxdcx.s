        ;; The data is in memory as shown in the table along side. Write a program to increase the 16 bit data at memory location 80A2 and decrease 16 bit data stored at memory location 80A4. Observe teh memory content before and after the execution of program. Use INR and DCR instead
        ;;  loading data
        LHLD    80A2H
        ;; increment by 1
        INR     L
        ;; detecting carry
        JNC     L1:
        INR     H
L1:     ;; Storing data
        SHLD    80A2H
        ;; loading data
        LHLD    80A4H
        ;; decrement by 1
        DCR     L
        ;; detecting borrow
        JNC     L2:
        DCR     H
L2:     ;; storing data
        SHLD    80A4H
        HLT
