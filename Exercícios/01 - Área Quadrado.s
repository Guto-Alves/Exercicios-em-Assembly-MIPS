# Coletar o valor do lado de um quadrado, calcular sua área e apresentar o resultado.
.data
	msg1: .asciiz"\nDigite o valor do lado do quadrado : "
	msg2: .asciiz"\nA area do quadrado e : "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	mul $t2, $t1, $t1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall