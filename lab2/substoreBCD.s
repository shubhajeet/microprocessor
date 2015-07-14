        ;; Using the same data of problem 15 write a program to subtract BCD data at 4286H form BCD data at 4284H data at 4287H and store the BCD result at 4288H
        ;; loading data
        STA     4584H
        MOV     C, A
        STA     4586H
        SUB     C
        ;; converting to BCD
        DAA
        ;; storing result
        LDA     4588H
        ;; loading data
        STA     4585H
        MOV     B, A
        STA     4587H
        SBB     B
        ;; converting to BCD
        DAA
        ; storing result
        LDA     4589H
        HLT
