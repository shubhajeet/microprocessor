        ;; ex 3
        MVI A, 72H
        LXI H, 8010H
        CMP M
        CMP H
        CPI 72H
        RST 5
