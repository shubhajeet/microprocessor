        ;; Assignment 10
        ;; Using the same data of problem 15 write a program to subtract BCD data at 4286H form BCD data at 4284H data at 4287H and store the BCD result at 4288H
        ;; loading data
        LHLD    8284H
        XCHG
        LHLD    8286H
        ;; passing argument to function BCDsub
        MOV     A, L         ;B-A-CY
        MOV     B, E
        ;; reseting carry
        STC
        CMC
        ;; calling BCDsub for lsb
        CALL    BCDsub
        ;; storing lsb
        MOV     L, A
        ;; passing argument to function BCDsub
        MOV     A, H    ;B-A-CY
        MOV     B, D
        CALL    BCDsub
        MOV     H, A
        SHLD    8288H
        HLT
        ;; function full BCD subtracter B-A-C and returns data in A
BCDsub: CALL    ncmp
        ADD     B
        DAA
        ;; carry signals negative no
        JC      l1
        call    ncmp
        STC                     ;setting borrow flag
        JMP     l2
l1:     CMC                     ;reseting borrow flag
l2:     RET
        ;;  function that returns n-cmp or 10 s complement of no in A uses C
ncmp:   MOV     C,A
        MVI     A,99H
        SBB     C
        INR     A
        RET
