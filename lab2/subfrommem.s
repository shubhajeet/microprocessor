        ;; Suppose the memory content is as shown in the table along side. Write a program to subtra the 16 bit data at memory location 8002H(2697H) form data at memory location 8090H(7963H). Store the result at memory location 8094
        ;; loading lsb
        LDA     8092H
        MOV     B, A
        LDA     8090H
	;; subtracting lsb
        SUB     B
        ;; storing lsb
        STA     8094H
        ;; loading msb
        LDA     8093H
        MOV     B, A
	;; subtracting msb
        SBB     B
        ;; storing msb
        STA     8095H
        HLT
