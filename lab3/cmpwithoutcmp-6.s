        ;; We can complement the accumulator content by using instruction other than CMA. How is that possible? Write a program to illustrate this
        MVI A,44H
        XRI 0FFH
        RST 5
