        ;; Logical instructions can be used to mask certain bits of word.Write a program to complement D6 of data at memory locatioin 9025. Assume data as shown in the above figure
        LXI H,9025H
        MVI A, 20H
        XRI M
        RST 5
