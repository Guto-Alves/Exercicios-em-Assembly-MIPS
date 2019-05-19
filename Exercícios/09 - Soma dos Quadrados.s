#Receba os 2 números inteiros. Calcule e mostre a soma dos quadrados.
.data
	msg1: .asciiz"\nDigite um numero : "
	msg2: .asciiz"\nDigite mais um numero : "
	msg3: .asciiz"\nA soma dos quadrados da : "
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
	
	mul $t3, $t1, $t1
	
	mul $t4, $t2, $t2
	
	add $t3, $t3, $t4
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall