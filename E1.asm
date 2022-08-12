		page 60,132
TITLE	A01ASM1 (EXE) EXE SEGMENTS
;--------------------------------------------------
STACKSEG	SEGMENT PARA STACK 'Stack'
STACKSEG 	ENDS
;--------------------------------------------------
DATASEG 	SEGMENT PARA 'Data'
DATASEG		ENDS
;--------------------------------------------------
CODESEG	SEGMENT	PARA 'Code'
MAIN	PROC	FAR
		ASSUME	SS:STACKSEG,DS:DATASEG,CS:CODESEG
		
		MOV		AX,DATASEG
		MOV		DS,AX
		
		MOV		AX,4C00H
		INT		21H

		MAIN	ENDP
CODESEG ENDS
		END		MAIN