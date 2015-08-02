        ;; Write a program that will check whether the number in reg B is even or not. If thenumbe ris even display it is output port
        MVI A, 80H
        OUT 43H
        MOV B, A
        RRA
        JNC l1:
        RLA
        OUT 40H
l1:     RST 5
