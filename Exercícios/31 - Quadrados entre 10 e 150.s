# 31. Calcule e mostre o quadrado dos números entre 10 e 150.
.data
	msg1: .asciiz"\n"
	msg2: .asciiz"\nDigite qualquer numero para continuar: "
	msg3: .asciiz"\nOs quadrados dos numeros entre 10 e 150 sao: "
.text
main:
	li $t1, 10
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	enquanto:
	mul $t4, $t1, $t1
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	li $v0, 4
	la $a0, msg1
	syscall
	
	
	add $t1, $t1, 1
	
	ble $t1, 150, enquanto