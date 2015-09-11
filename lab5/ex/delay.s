        ;; delay loop
        ;; example 5
        MVI A, 01H
top:    OUT 40H
        INR A
        NOP
        NOP
        NOP
        JMP top
