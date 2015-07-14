        ;; The data is in memory as shown in the table along side. Write a program to increase the 16 bit data at memory location 80A2 and decrease 16 bit data stored at memory location 80A4. Observe the memory content before and after the execution of program.
        ;;  loading data
        LHLD    80A2H
        ;; increment by 1
        INX     H
        ;; storing data
        SHLD    80A2H
        ;; loading data
        LHLD    80A4H
        ;; decrement by 1
        DCX     H
        ;; storing data
        SHLD    80A4H
        HLT
