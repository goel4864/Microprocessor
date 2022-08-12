.MODEL SMALL
.DATA
N1 	DW 	1231H,3278H				; N1 -> 3278 1231
N2	DW	0ABCDH,0FA25H          	; N2 -> FA25 ABCD
LEN	DW	($-N2)/2				; RES->12C9D BDFE
RES DW	3 DUP(0)
								;0000 -> 1231 N1
 								;0002 -> 3278 N1
								;0004 -> ABCD N2
								;0006 -> FA25 N2
								;0008 -> 0002 $
								;000A -> BDFE
								;000C -> 2C9D
								;000E -> 0001
								
								; ($ - N2)/2
								; 0008-0004 = 4/2 = 2
.CODE
.STARTUP
		MOV CX,LEN
		MOV SI,00
		CLC
	L1:	MOV AX,N1[SI]
		ADC AX,N2[SI]			;AX = AX + N2[SI] + C
		MOV RES[SI],AX
		INC SI					; 2 BYTE ADDRESSABLE
		INC SI
		LOOP L1
		MOV AX,00
		ADC AX,00				;AX = AX + 00 + C
		MOV	RES[SI],AX

		MOV AH,4CH
		INT 21H
.EXIT
END
		
;	1231
;	ABCD
;	----
				

	
	
		
		