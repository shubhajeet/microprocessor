        ;; Assignment 2
        ;; Move the data 22H and 48H to accumulator and register B respectively. Write a program to subtarct the register B form accumulator and store the result at register C. Again swap the accumulator content and register B content and subtra the register B content from accumulator content. See the flag content and the register content before and after the execution.
        ;; loading data
        MVI     B, 48H
        MVI     A, 22H
        ;; subtracting with b
        SUB     B
        ;; moving result to c
        MOV     C, A
	;; swapping A and B
	MOV	A,B
	MOV	B,C
        ;; subtracting with b
        SUB     B
        HLT
