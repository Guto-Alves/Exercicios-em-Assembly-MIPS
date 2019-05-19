# Receba o salário de um funcionário e mostre o novo salário com reajuste de 15%.
.data
	msg1: .asciiz"\nDigite seu salario: "
	msg2: .asciiz"\nSeu novo salario: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	li.s $f4, 1.15
	
	mul.s $f3, $f1, $f4
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	