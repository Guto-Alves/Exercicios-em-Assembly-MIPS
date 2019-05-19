# Receba um número inteiro N. Calcule e mostre a somatória (1+2+3+...+N)
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite um numero: "
	msg2: .asciiz"\nSomatoria = "
.text
main:
	li $t4, 1
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	add $t5, $t1, $zero
	
	repita:
	add $t3, $t3, $t5
	sub $t5, $t5, $t4
	bgtz $t5, repita
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall