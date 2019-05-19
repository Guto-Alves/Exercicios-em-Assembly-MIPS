# Receba a quantidade de alimento em quilos. Calcule e mostre quantos dias durará esse alimento sabendo que a pessoa consome 50g ao dia.
.data
	msg1: .asciiz"\nDigite a quantidade de alimento em kilos : "
	msg2: .asciiz"\nEssa quantidade de alimentos durara por : "
	msg3: .asciiz"\n"
	msg4: .asciiz"\ndias!"
.text
main:
	li $t7, 1000
	li $t5, 50
	
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	mul $t1, $t1, $t7
	
	div $t1, $t1, $t5
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 4
	la $a0, msg3
	syscall
	
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall