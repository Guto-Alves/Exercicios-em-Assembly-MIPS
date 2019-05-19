# 41. Mostre todas as possibilidades de 2 dados de forma que a soma tenha como resultado 7.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nPossibilide = "
	msg2: .asciiz" e "
.text
main:
	
	li $t2, 6
	
	li $t1, 1
	for:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	sub $t2, $t2, 1
	add $t1, $t1, 1
	ble $t1, 6, for
	
	
	
	
	