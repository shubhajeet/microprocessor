        ;; ex5
        LXI B, BBBBH
        LXI D, DDDDH
        PUSH B
        PUSH D
        LXI B, 1234H
        LXI D, 5678H
        POP D
        POP B
        RST 5
