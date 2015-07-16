        ;; The content of the memory is shown in the figure along side. Write a program to OR the content of 9024H with the content of location 9025H and store the content of 9026H
        LXI H, 9024H
        MOV A, M
        INX H
        ORA M
        INX
        MOV M, A
        RST 5
