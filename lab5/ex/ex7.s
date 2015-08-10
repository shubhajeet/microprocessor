        ;; displaying in seven segment
        ;; ex 7
disadd: equ 0440H               ;displays character string in 8FEFH and 8FF0H adddress
disdata: equ 044CH              ;displays character string in location
        MVI A, 36H
        MVI B, 45H
        MOV H, A
        MOV L, B
        SHLD 8FEFH              ; storing 45 36
        ADD B
        STA 8FF1H               ;useless step
        MVI B, 01H              ;displays dot
        CALL disadd
        MVI B, 00H              ;no dot
        CALL disdata
        HLT
