# 37. Receba um número inteiro. Calcule e mostre a série de Fibonacci até o seu N’nésimo termo.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite quantos termos: "
	msg2: .asciiz"o. Termo = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	
	li $t1, 0
	li $t2, 1
	li $t3, 1
	li $t5, 1
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	beq $t0, 1, fim

	for:
	add $t5, $t1, $t2
	add $t1, $t2, 0
	add $t2, $t5, 0
	add $t3, $t3, 1
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	blt $t3, $t0 for
	
	fim: