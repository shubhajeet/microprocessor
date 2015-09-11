        ;; XRA and ORA
        MVI A, 8FH
        MVI C, 0A2H
        ORA C
        MVI D, 74H
        XRA D
        RST 5
