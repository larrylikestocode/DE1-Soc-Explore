	.include "address_map_arm.s"
	.text 
	.global _start
_start:
		LDR R0, =SW_BASE
		LDR r1, =LEDR_BASE
L1:		LDR r2,[R0]  // load the switch value
		MOV R3, R2, LSL #1 // 
		STR R3,[r1]
		B L1

