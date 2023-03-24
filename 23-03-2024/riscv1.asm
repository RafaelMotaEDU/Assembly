.data .data
	question1: .asciz "Enter a bit position: "
.text

	add t1, zero, zero
	not t1, t1
	ecall
	