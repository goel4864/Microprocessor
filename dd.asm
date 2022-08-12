		page 60,132
TITLE	A04DEFIN (EXE) Define data directive
		.MODEL SMALL
		.DATA
;		DB - Define Bytes :
;		------------------
BYTE1	DB 	?							;Uninitialized
BYTE2	DB	48							;Decimal constant
BYTE3	DB	30H							;Hex Constant
BYTE4	DB	01111010B					;Binary constant
BYTE5	DB	10 DUP(0)					;Ten Zeros
BYTE6	DB	'PC EMPORIUM'				;Character String
BYTE7	DB	'12345'						;Number as chars
BYTE8	DB	01,'Jan',02,'Feb',03,'Mar' 	;Table of Months

;		DW - Define Words :
;		------------------
WORD1	DW	0FFF0H						;Hex Constant
WORD2	DW	01111010B					;Binary Constant
WORD3	DW	BYTE8						;Address Constant
WORD4	DW	2,4,6,7,9					;Table of 5 constants
WORD5	DW	8 DUP (0) 					;Eight zeros

;		DD - Define Doublewords :
;		------------------------
DWORD1	DD	?							;Uninitialized
DWORD2	DD	41562						;Decimal value
DWORD3	DD	24, 48						;Two constants
DWORD4	DD	BYTE3-BYTE2					;Difference between addresses

;		DB - Define Quadwords :
;		----------------------
QWORD1	DQ	0							;Zero Constant
QWORD2  DQ 	05E39H						;Hex Constant
QWORD3	DQ	41652						;Decimal Constant

		END
	
















