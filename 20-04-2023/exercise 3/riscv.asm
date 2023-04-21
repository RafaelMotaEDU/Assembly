# Criando o máximo divisor comum entre dois numeros em C e C++
#
#int mdc (int a1, int a0){
#	if(a1 == a0){
#		return a1; check!
#	}else if(a1 > a0){
#		return mdc(a1 - a0, a0);
#	}else {
#		return mdc(a1, a0 - a1);
#}

.data 
	valor1: .asciz "Digite o primeiro numero: "
	valor2: .asciz "Digite o segundo numero: "
	resposta: .asciz "O maximo divisor comum: "
	
.text 
	jal zero, main
	
mdc:
	addi sp, sp, -12
	sw a0, 8(sp)
	sw a1, 4(sp)
	sw ra, 0(sp)
	
	beq a1, a0, return
	jal jumpElseIf
	
	
	jumpElseIf:
	bgt a1, a0, elseIf
	jal jumpElse
	
	jalr ra, 0
	
	return:
		add a3, zero, a1
		jalr ra, 0
		
	elseIf:
		sub a1, a1, a0
		add a0, zero, a0
		jal ra, mdc
		
		# desempilha
		lw a0, 8(sp)
		lw a1, 4(sp)
		lw ra, 0(sp)
		addi sp, sp, 12
		
		jalr ra, 0 
		
	jumpElse:
		sub a0, a0, a1
		jal ra, mdc
		
		# desempilha
		lw a0, 8(sp)
		lw a1, 4(sp)
		lw ra, 0(sp)
		addi sp, sp, 12
		
		jalr ra, 0
	
main:
	
	# imprime texto valor 1
	addi a7, zero, 4
	la a0, valor1
	ecall
	
	# insere o valor e guarda em a1 
	addi a7, zero, 5
	ecall 
	
	add a1, zero, a0
	
	# imprime texto valor 2
	addi a7, zero, 4
	la a0, valor2
	ecall
	
	# insere o valor e guarda em a0
	addi a7, zero, 5
	ecall

	jal ra, mdc
	
	
	
	
	


