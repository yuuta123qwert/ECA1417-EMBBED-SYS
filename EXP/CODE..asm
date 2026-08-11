ORG 0000H

UP:     SETB P2.0        ; Turn ON LED
        ACALL DELAY
        CLR P2.0         ; Turn OFF LED
        ACALL DELAY
        SJMP UP          ; Repeat continuously

DELAY:  MOV R4,#35H
H1:     MOV R3,#0FFH
H2:     DJNZ R3,H2
        DJNZ R4,H1
        RET

END
