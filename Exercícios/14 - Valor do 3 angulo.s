# Receba 2ângulos de um triângulo. Calcule e mostre o valor do 3º ângulo.
.data
	msg1: .asciiz"\nDigite o valor de 1 angulo: "
	msg2: .asciiz"\nDigite o valor do 2 angulo: "
	msg3: .asciiz"\nO valor do 3 angulo = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $t8, 180
	
	add $t3, $t1, $t2
	sub $t3, $t8, $t3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	