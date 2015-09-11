        ;; A table contains ten 8-bit numbers from memory location 9500H; write a progarm to arrange in ascendign order.
        ;; Using bubble sort algorithm
        MVI C, 10H
        LXI D, 9500H
loop1:  CALL cptoH
        MOV B, C                ; 1 to no of datas
loop2:  MOV A, M                ; 1 to no of datas to be sorted
        INX H
        CMP M
        ;; checking if A is heavy if yes swapping
        JC skip
        ;; swapping
        CALL swap
        ;; saving  flag at the top of the stack
        XTHL
        LXI H, 0001H
        XTHL
skip:   DCR B
        JNZ loop2
        ;; checking for flag
        XTHL
        MOV A, L
        ANI FFH
        JZ break
        XTHL
        DCR C
        JNZ loop1
break:  RST 5
        ;;  copies D pair to H
cptoH:  MVI H, D
        MVI L, E
        RET
        ;; swaps content of A and Memory pointer in H
swap:   PUSH B                  ; saving the content of B pair for temp storage in reg
        MOV B, M
        MOV M, A
        DCX H
        MOV M, B
        INX H
        POP B
