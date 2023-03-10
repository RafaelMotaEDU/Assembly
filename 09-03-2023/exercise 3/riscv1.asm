.data
	question1: .asciz "Enter an integer number: "
	question2: .asciz "Enter other integer number: "
.text
	addi a7, zero, 4
	la a0, question1
	ecall
	
	addi a7, zero, 5
	ecall
	
	add s0, zero, a0
	
	addi a7, zero, 4
	la a0, question2
	ecall
	
	addi a7, zero, 5
	ecall
	
	add s1, zero, s0
	add s0, zero, a0