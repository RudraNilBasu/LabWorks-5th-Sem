MVI L, 11
SHLD 8000
MVI L,02
SHLD 8001
MVI L,32
SHLD 8002
MVI L,04
SHLD 8003
MVI L,F5
SHLD 8004
MVI C,5
MVI D,00
LXI H,8000

MOV A,M
MOV D,M
INX H
X:
MOV B,M
CMP B
JC TOKON
MOV A,B
JMP DEB
TOKON:
	MOV D,A
	JMP DEB
DEB:
	DCR C
	INX H
	JNZ X
	JMP Y
Y:
STA 2000
HLT