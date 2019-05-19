# Calcule a quantidade de litros gastos em uma viagem, sabendo que o automóvel faz 12 km/l. Receber o tempo de percurso e a velocidade média.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite o tempo: "
	msg2: .asciiz"\nDigite a velocidade: "
	msg3: .asciiz"\nQuantidade de litros gastos: " 
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	div $t1, $t1, 60
	mul $t3, $t1, $t2
	div $t4, $t3, 12
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall