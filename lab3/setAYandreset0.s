        ;; Write a program to set auxiliary flag and reset parity flag without affecting other flags.
        PUSH    psw
        POP     B
        MOV     A,C
        ;; setting auxillary flag
        ORI     10H
        ;; resetting parity flag
        ANI     FBH
        MOV     C,A
        PUSH    B
        POP     psw
        RST 5
