        ;; Write a program to AND the content of reg B and content of memory at 9030. Assume the content of 9030 as 34H and register B as 92H
        MVI B, 92H
        LXI H, 9030
        MVI M, 92H
        MOV A, B
        AND M
        RST 5
