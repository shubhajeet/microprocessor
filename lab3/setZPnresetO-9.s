        ;; Write a program to set zero and parity flags and reset other flags
        PUSH    psw
        POP     B
        MVI     C, 44H
        PUSH    B
        POP     psw
        RST 5
