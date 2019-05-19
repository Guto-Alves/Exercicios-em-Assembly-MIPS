# Receba um número inteiro. Calcule e mostre raiz quadrada desse número(raiz inteira).
.data
	msg: .asciiz"\nDigite um numero inteiro : "
	msg1: .asciiz"\nA raiz da : "
.text
main:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $t0, 0
	li $t1, 1
	
	enquanto:
	sub $t2, $t2, $t1
	add $t1, $t1, 2
	add $t0, $t0, 1
	bge $t2, $t1, enquanto
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	