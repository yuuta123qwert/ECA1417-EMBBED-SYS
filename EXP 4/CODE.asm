```asm
; 8051 Seven Segment Display
; Displays digits 0 to 9
; 7-segment display connected to Port 2

ORG 0000H

UP:     MOV P2, #0C0H      ; Display 0
        ACALL DELAY

        MOV P2, #0F9H      ; Display 1
        ACALL DELAY

        MOV P2, #0A4H      ; Display 2
        ACALL DELAY

        MOV P2, #0B0H      ; Display 3
        ACALL DELAY

        MOV P2, #099H      ; Display 4
        ACALL DELAY

        MOV P2, #092H      ; Display 5
        ACALL DELAY

        MOV P2, #082H      ; Display 6
        ACALL DELAY

        MOV P2, #0F8H      ; Display 7
        ACALL DELAY

        MOV P2, #080H      ; Display 8
        ACALL DELAY

        MOV P2, #090H      ; Display 9
        ACALL DELAY

        SJMP UP

DELAY:  MOV R5, #10H

H1:     MOV R4, #0B4H

H2:     MOV R3, #0FFH

H3:     DJNZ R3, H3
        DJNZ R4, H2
        DJNZ R5, H1

        RET

END
```
