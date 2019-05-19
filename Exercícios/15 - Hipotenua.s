# Receba os valores de 2 catetos de um triângulo retângulo. Calcule e mostre a hipotenusa.
.data
	msg1: .asciiz"\nDigite o valor do 1 cateto "
	msg2: .asciiz"\nDigite o valor do 2 cateto "
	msg3: .asciiz"\nHipotenusa = "
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
	
	mul $t1, $t1, $t1
	mul $t2, $t2, $t2
	
	add $t3, $t1, $t2
	
	li $t0, 0
	li $t1, 1
	
	enquanto:
	sub $t3, $t3, $t1
	add $t1, $t1, 2
	add $t0, $t0, 1
	bge $t3, $t1, enquanto
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall