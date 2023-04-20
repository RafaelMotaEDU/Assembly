
.text
	jal zero, main

folha:
	
	# Adiciona valores na pilha.
	addi sp, sp, -12
	sw t0, 8(sp)
	sw t1, 4(sp)
	sw t2, 0(sp)
	
	add t0, a0, a1 # g+h
	add t1, a2, a3 # i+j
	sub t2, t0, t1 # (g+h) - (i+j)
	
	add a0, zero, t2
	
	# salva os valores da pilha
	lw t0, 8(sp)
	lw t1, 4(sp)
	lw t2, 0(sp)
	addi sp, sp, 12 # retorna a pilha ao seu estado original
	
	jalr ra, 0 # comando literal para retornar

main:
	# Inicio da chamada de função
	addi a0, zero, 0
	addi a1, zero, 1
	addi a2, zero, 2
	addi a3, zero, 3
	jal ra, folha # ra é próprio para retornar o endereço (return address)
	# fim da chamada da função.
	