        ;; Suppose the memory content as shown in the table along side. Write a program to add the 16 bit data on memory location 8084 with 16 bit data at 8026 and store the result at 8088. Use DAD instruction in adding 16 bit data. Verify the result with 16-bit additoin using ADC instruction
	;; arbitary port and signal initializatioin
	match: equ 00H
	unmatch: equ 01H
	port: equ 40H        
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
        DAD     D
        ;; storing 16 bit data
        SHLD    8088H
        ;; detecting and storing carry
        JNC     L1
        	INR     C
L1:     MOV     A, C
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
        ;;  loading msb
        LDA     8085H
        MOV     D, A
        LDA     8087H
        ;; adding msb
        ADC     D
        ;; storing result
        MOV     D, A
        ;; detecting carry
        JNC     L2
        	INR     B
	;; Comparing the result from  two methods
L2:     CMP     H            ; comparing msb
        JNZ     L3
        	MOV     A, B
        	CMP     C            ; comparing carry
       		JNZ     L3
        		MOV     A, E
        		CMP     L         ; comparing lsb
       			JNZ     L3
			        MVI     A,match
				JMP	L4
L3:	MVI	A,unmatch     
L4:	OUT     port
        HLT
