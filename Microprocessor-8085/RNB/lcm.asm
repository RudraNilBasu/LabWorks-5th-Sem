// lcm
LXI H,9000
MVI M,05
INX H
MVI M,03
// MAIN PROG
	LXI H,9000
	MOV A,M // 1ST NO
	//MOV E,A
	INX H
	MOV B,M // 2ND NO
// CALC HCF A AND C

LOOP1:
	CMP B
	JZ SET // HCF FOUND
	JC SWAP
SUB:
	SUB B
	JMP LOOP1
SWAP:
	MOV D,A
	MOV A,B
	MOV B,D
	JMP SUB
SET:
	STA 9002
	//MOV C,A  // THE HCF

// CALC A*B
	LXI H,9000
	MOV B,M
	INX H
	MOV C,M
	MVI A,00
LOOP2:
	ADD B
	DCR C
	JNZ LOOP2
	STA 9003

// A*B/HCF
	LXI H,9003
	MOV A,M // A*B
	DCX H
	MOV B,M // HCF
	MVI C,00
LOOP3:
	INR C
	SUB B
	JNZ LOOP3
	MOV A,C
	STA 9004
	HLT