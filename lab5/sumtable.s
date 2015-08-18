        ;; Sixteen bit data are stored in two tables starting at 8040H and 8060H having ten data on each. Write an 8085 program to store the sum in the corresponding index of the third table starting at 8080H.(Assume that no sum will exceed 16 bit)
source: equ 8040H
sourcea: equ 8060H
ans:    equ 8080H
        ;; initialization of data
        LXI H, ans
        LXI D, sourcea
        XTHL
        LXI H, source
add:    MOV B, M
        XCHG
        MOV A, M
        ADD B
        XCHG
        XTHL
        MOV M, A
        XTHL
        DCR C
        JNZ add
        RST 5
