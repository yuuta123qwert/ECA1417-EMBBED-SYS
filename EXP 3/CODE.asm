```asm
; 8051 Stepper Motor Control
; Stepper motor driver connected to Port 2

ORG 0000H

UP:     MOV P2, #09H
        ACALL DELAY

        MOV P2, #0CH
        ACALL DELAY

        MOV P2, #06H
        ACALL DELAY

        MOV P2, #03H
        ACALL DELAY

        SJMP UP

DELAY:  MOV R4, #18H

H1:     MOV R3, #0FFH

H2:     DJNZ R3, H2
        DJNZ R4, H1

        RET

END
```
