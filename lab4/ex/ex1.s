        ;; example 1
        LXI B, BBBBH
        LXI D, DDDDH
        PUSH B
        PUSH D
        LXI B, 1234
        LXI D, 5678H
        POP D
        POP B
        RST 5
