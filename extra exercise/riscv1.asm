.data
	pergunta: .asciz "Digite um Valor inteiro: "
	pergunta2: .asciz "Digite um segundo valor: "
	resultado: .asciz "O Resultado da soma e: "
.text
	addi a7, zero, 4
	la a0, pergunta
	ecall
	
	addi a7, zero, 5
	ecall
	
	add s0, zero, a0
	
	addi a7, zero, 4
	la a0, pergunta2
	ecall
	
	addi a7, zero, 5
	ecall
	
	add s1, zero, a0
	
	
	addi a7, zero, 4
	la a0, resultado
	ecall
	
	add a0, s1, s0
	
	li a7, 1
	ecall
	
	
	
	
