LXI H,9000
MVI M,10
INX H
MVI M,15
// MAIN CODE
	LXI H,9000
	MOV A,M
	INX H
	ADD M
	JNC STR
	INR C
STR:
	DAA
	STA 9500
	MOV A,C
	STA 9501
	HLT