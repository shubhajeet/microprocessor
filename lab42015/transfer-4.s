        ;; Write a program to transfer the data at 8020 to 8030 if the data is greater than 127. you can assume data yourself.
        LDA 8020H
	MVI B, 7FH
        CMP B
        JC l1
        JZ l1
        STA 8030H
l1:     RST 5
