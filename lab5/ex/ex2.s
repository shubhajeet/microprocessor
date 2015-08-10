        ;; example 2
        ;; Multiplying using shifting
        ;; check whether C contains lsb or result
        ;; initializaing output ports
        MVI A, 00H
        OUT 43H
        ;; initializing operators
        MVI B, 00H              ;result
        MVI C, 3CH              ;operands
        MVI D, 2AH              ;operands
        MVI E, 09H              ;looping all 8 bit
lab1:   MOV A, C
        RAR
        MOV C, A
        DCR E
        JZ lab9                 ;move to display if all computation has been completed
        MOV A, B                ;result
        JNC lab4                ;carry flag contains lsb
        ADD D                   ;if lsb is 1
lab4:   RAR                     ;lsb will not affected by further multiplication
        MOV B, A                ;storing result to A
        JMP lab1                ;perform another shifting
lab9:   MOV A, B
        OUT 41H
        MOV A, C                ;check it must be displaying lsb of multiplication
        OUT 42H
        RST 5
