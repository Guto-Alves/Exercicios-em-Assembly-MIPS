# Receba a base e a altura de um triângulo. Calcule e mostre a sua área.
.data
	msg1: .asciiz"\nDigite a base : "
	msg2: .asciiz"\nDigite a altura : "
	msg3: .asciiz"\nA area do triangulo da : "
.text
main:
	li $t4, 2
	
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
	
	mul $t1, $t1, $t2
	
	div $t1, $t1, $t4
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	