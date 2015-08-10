        ;; Dividing 8-bit numbers by repeated subtraction
        ;; example 4
        MVI C, 00H              ;result
        MVI B, 0AH              ;operand
        MVI D, 03H              ;operand
lab06:  MOV A, B
        SUB D
        JC lab10                ;borrow could not be further subtracted
        MOV B, A
        INR C                   ;quotient is increased by 1
        JMP lab06
lab10:  MOV E, B                ;remainder in E
        MOV A, C
        OUT 40H
        MOV A, E
        OUT 41H
        RST 5
