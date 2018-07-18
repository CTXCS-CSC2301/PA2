	@--------------------------
	@	PA 2, problem 2
	@	Put your required header information here
	@------------------
	@	You are given a secret message at label 'text' that needs to be
	@	decrypted according to the following rules.
	@	Bytes 0 and 4 need to have the operation EOR 0x0b1010 applied
	@	to them and written back to memory at the original location
	@	Bytes 1 and 5 need to ORR 0x40 applied to them
	@	and written back to memory at the original location
	@	Bytes 2 and 6 need to have AND 0x7F applied to them
	@	and written back to memory at the original location
	@	Bytes 3 and 7 should remain unchanged.
	@------------------
	.extern printf
	.global main
	.func main
main:
	PUSH	{LR}
	@	Code begins here
	LDR	R0, =text  @ address of message loaded into R0
	@	Your code goes here

	

	@	Code to print.  Do not touch
	LDR	R0, =out
	LDR	R1, =text
	BL	printf
	POP	{PC}
	
.data
text:	.byte 75,51,243,'e',103,34,0xEC,'y'		@ the secret message
out:	.asciz "%s\n"
	

