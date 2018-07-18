	@---------------------------
	@	PA 2, problem 1
	@    Your required header comments go here
	@------------------
	@ Rearrange the characters in the string text in the following way:
	@ The letter originally at position 0 should be moved to position 3
	@ The letter originally at position 1 should be moved to position 0
	@ The letter originally at position 3 should be moved to position 1
	@ The letter at position 2 should not move
	@ ------------------
	@		Code begins here
	.extern printf
	.global main
	.func main
main:
	PUSH 	{LR}		@ Don't touch
	LDR	R0, =text	@ address of text now in R0
	@ Your code goes here.  Use combo of LDRB, STRB to rearrange string



	
	@ Code to print the result.  Do not modify
	LDR R0, =out
	LDR R1, =text
	BL printf
	POP {PC}
.data
text:	.asciz "KDSE"
out:	.asciz "%s\n"
	
