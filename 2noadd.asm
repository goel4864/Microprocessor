.model small
.stack
.data
num1	db	25h
num2	db	80h
result	db	?
carry	db	?
.code
.startup
	MOV AL, num1
	ADD AL, num2
	MOV result, AL
	RCL AL, 01H			; rorate carry into lsb
	AND	AL, 00000001B   ; mask out all but lsb
	MOV carry, AL		; store the carry 
.exit
end


; destination < source		carryflag = 1
; destination = source		zeroflag = 1
; destination > source		carryflag = 0, zero flag = 0
;
; MOV	BL, 02H
; CMP	BL, 10H	; carry flag = 1
;	
;
; MOV 	AX, 0F0F0H
; MOV   DX, 0F0F0H
; CMP   AX ,DX 	; zero flag = 1
;
;
; MOV BX, 200H
; CMP BX, 0		; Zero and carry flags = 0





