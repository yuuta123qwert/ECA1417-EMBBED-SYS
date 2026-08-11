```asm
; 8051 LED Blinking Program
; LED connected to P2.0

ORG 0000H

UP:     SETB P2.0
        ACALL DELAY
        CLR P2.0
        ACALL DELAY
        SJMP UP

DELAY:  MOV R4, #35H

H1:     MOV R3, #0FFH

H2:     DJNZ R3, H2
        DJNZ R4, H1

        RET

END
```
