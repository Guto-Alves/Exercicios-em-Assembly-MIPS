#Receba os valores do comprimento, largura e altura de um paralelepípedo. Calcule e mostre seu volume.
.data
	msg1: .asciiz"\nDigite o Comprimento : "
	msg2: .asciiz"\na Largura : "
	msg3: .asciiz"\ne a Altura : "
	msg4: .asciiz"\nO Volume do Paralelepipedo e = "
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
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	
	mul $t4, $t1, $t2
	
	mul $t4, $t4, $t3
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	