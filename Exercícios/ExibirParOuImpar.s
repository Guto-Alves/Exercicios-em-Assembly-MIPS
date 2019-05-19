# Receba 3 número inteiros e para cada número informe se é par ou ímpar.

.data
	msg: .asciiz"\nDigite um numero: "
	msg1: .asciiz"             Par!"
	msg2: .asciiz"             Impar!"
.text
main:
	li $t2, 1    #T2 - b
	
	enquanto:
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0    #T1 - a n digitado
	
	rem $t3, $t1, 2
	
	beqz, $t3, se
	j senao
	se:
	li $v0, 4
	la $a0, msg1
	syscall
	j fimse
	
	senao:
	li $v0, 4
	la $a0, msg2
	syscall
	
	fimse:
	
	add $t2, $t2, 1
	
	ble $t2, 3, enquanto