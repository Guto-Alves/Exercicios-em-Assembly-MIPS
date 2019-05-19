# 32. Receba um número inteiro. Calcule e mostre o seu fatorial.
.data
	msg1: .asciiz"\nDigite um numero inteiro: "
	msg2: .asciiz"- Fatorial! = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $t2, 1
	add $t7, $t1, $zero
	
	for:
	mul $t2, $t2, $t7
	sub $t7, $t7, 1
	bge $t7, 1, for
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	