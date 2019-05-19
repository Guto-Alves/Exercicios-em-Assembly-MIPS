# Receba 2 valores inteiros. Calcule e mostre o resultado da diferença do maior pelo menos valor.
.data
	msg1: .asciiz"\nDigite um numero inteiro : "
	msg2: .asciiz"\nDigite mais um numero inteiro : "
	msg3: .asciiz"\nO resutado da diferenca e : "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0,5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	bgt $t1, $t2, se
	j senao

	se:
	sub $t1, $t1, $t2
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	j fimse
	
	senao:
	sub $t2, $t2, $t1
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	fimse:
	