        ;; example 1 A=A&B and A=A&45H
        MVI A, 82H
        MVI B, 54H
        ANA B
        ANI 45H
        RST 5
