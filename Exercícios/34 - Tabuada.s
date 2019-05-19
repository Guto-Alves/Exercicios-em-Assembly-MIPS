# 34. Receba um número. Calcule e mostre os resultados da tabuada desse número.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite um numero: "
	msg2: .asciiz" x "
	msg3: .asciiz"Tabuada do "
	msg8: .asciiz" = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $t7, 1

	for:
	mul $t2, $t7, $t1
	
	li $v0, 1
	add $a0, $t7, 0
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg8
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	add $t7, $t7, 1
	ble $t7, 10, for
	
	
	
	
	
	
	