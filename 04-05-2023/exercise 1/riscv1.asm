.data 
	x: .word 5
	y: .word 2
	z: .word 0
.text
main:
	la t3, x
	lw t4, 0(t3) #t4 = x
	
	la t3, y
	lw t5, 0(t3) # t5 = y
	
	la t6, z
	
	add t6, t4, t5 # z = x + y
	sw t6, 0(t3)
	