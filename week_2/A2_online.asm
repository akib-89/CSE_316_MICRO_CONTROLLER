.MODEL SMALL
.STACK 100H

.DATA
LF EQU 0AH
CR EQU 0DH
MSG DB 'Enter a character: $'

full DB '* * * * * * * $' ;PROPMT MESSAGE
half DB '* * * $'
quarter DB '* * $'
x DB ?
y DB ?
z db ?

.CODE
;MAIN PROCEDURE
MAIN PROC
    ;INITIALIZE DATA TO DS REGISTER
    MOV AX, @DATA
    MOV DS, AX

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET MSG
    ;LEA DX, MSG
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H
    ;TAKE THE INPUT IN X
    MOV AH, 1
    INT 21H
    MOV x, AL

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET MSG
    ;LEA DX, MSG
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H
    ;TAKE THE INPUT IN y
    MOV AH, 1
    INT 21H
    MOV y, AL

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET MSG
    ;LEA DX, MSG
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H
    ;TAKE THE INPUT IN z
    MOV AH, 1
    INT 21H
    MOV z, AL

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H


    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET full
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET full
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET half
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;print x
    MOV DL, x
    MOV AH, 2
    INT 21H

    ;print x
    MOV DL, ' '
    INT 21H
    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET half
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET quarter
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;print x
    MOV DL, x
    MOV AH, 2
    INT 21H

    ;print space
    MOV DL, ' '
    INT 21H

    ;print y
    MOV DL, y
    INT 21H

    ;print space
    MOV DL, ' '
    INT 21H

    ;print z
    MOV DL, z
    INT 21H

    ;print space
    MOV DL, ' '
    INT 21H

    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET quarter
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H


    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET half
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;print x
    MOV DL, z
    MOV AH, 2
    INT 21H

    ;print x
    MOV DL, ' '
    INT 21H
    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET half
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H


    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET full
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H


    ;MOVE DL TO POINT TO START OF THE STRING
    MOV DX, OFFSET full
    ;SHOW PROMPT MESSAGE
    MOV AH, 9
    INT 21H

    ;PRINT NEW LINE
    MOV DL, LF
    MOV AH, 2
    INT 21H
    MOV DL, CR
    INT 21H

    ;RETURN TO DOS
    MOV AH, 4CH
    INT 21H 
MAIN ENDP
END MAIN