		page 60,132
TITLE	A01ASM1 (EXE) Move and add operations
;--------------------------------------------------
STACK	SEGMENT PARA STACK 'Stack'
		DW 	32 DUP(0)
STACK 	ENDS
;--------------------------------------------------
DATASEG SEGMENT PARA 'Data'
FLDD	DW 	215
FLDE	DW 	125
FLDF	DW	?
DATASEG	ENDS
;--------------------------------------------------
CODESEG	SEGMENT	PARA 'Code'
MAIN	PROC	FAR
		ASSUME	SS:STACK,DS:DATASEG,CS:CODESEG
		
		MOV		AX,DATASEG
		MOV		DS,AX
		
		MOV		AX,FLDD
		ADD		AX,FLDE
		MOV		FLDF,AX
		
		MOV		AX,4C00H
		INT		21H

		MAIN	ENDP
CODESEG ENDS
		END		MAIN