        ;; Display the sequence of characters "UPS 85 lab" in Address filed of trainer kit by scrolling form left to right
displayadd:     equ 0440H       ; 8FEFH and 8FF0H address contains displaying character
displaydata:    equ 044CH       ; 8FF1H is displayed in data field
        ;; UPS 85 lab 16 15 12 05 16 08 05 16 11 0A 0B 16
        ;; initialization of data
reset:  MVI B, 00H              ; display without dot
        LXI H, 9000H            ; pointer to string
        MVI C, 06H              ; counter
        ;; loading data
        MOV A, M
        ;; displaying
        ;; saving register content
    	;; rotmem form left to right
top:    CALL rotmem
        ;; saving the value of registers
        PUSH B
        PUSH H
        PUSH PSW
        CALL displayadd
        CALL displaydata
        ;; restoring the value of registers
        POP B
        POP H
        POP PSW
        ;; delay
        CALL delay
        DCR C
        JNZ top
        JMP reset
rotmem: LDA 8FF0H
        STA 8FFFH
        LDA 8FF1H
        STA 8FFFH
        MOV A, M
        STA 8FF1H
        INX H
        RET
delay:  MVI A, FFH
loop1:  MVI D, FFH
loop2:  DCR D
        JNZ loop2
        DCR A
        JNZ loop1
        RET
