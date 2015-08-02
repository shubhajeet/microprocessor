        ;; Write a program to rotate the data 3C in a port. Call a delay subroutine for the visible output.
        MVI A, 3CH
l1:     RRC
        CALL delay
        jmp l1
delay:  MVI C, FFH
        NOP
        DCR C
        JNZ delay
