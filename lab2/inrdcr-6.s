        ;; Assignment 6
	;; The data is in memory as shown in the table along side. Write a program to increase the 16 bit data at memory location 80A2 and decrease 16 bit data stored at memory location 80A4. Observe the memory content before and after the execution of program. Use INR and DCR instead
        ;;  loading data
        LHLD    80A2H
        ;; increment by 1
        INR     L
        ;; detecting carry via zero flag
        JNZ     L1
	        INR     H
        ;; Storing data
L1:     SHLD    80A6H
        ;; loading data
        LHLD    80A4H
	MVI	A, 00H
	ADD	L
        ;; detecting borrow via zero flag
        JNZ     l2
        	DCR     H
        ;; decrement by 1
l2:     DCR     L
        ;; storing data
	SHLD    80A8H
        HLT
