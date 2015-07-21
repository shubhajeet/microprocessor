        ;; write a program that will reset D4 bit of data storecd at 9030H
        LDA 9030H
        ANI 0F8H
        STA 9030H
        RST 5
