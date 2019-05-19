# 35. Receba 2 números inteiros, verifique qual o maior entre eles. Calcule e mostre o resultado da somatória dos números ímpares entre esses valores.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite dois numeros inteiros: "
	msg2: .asciiz"Somatoria dos numeros impares entre os numeros = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#DECISAO
	bge $t1, $t2, tummaior
	j tdoismaior
	
	tummaior:
	
	add $t7, $t2, $zero
	for:
	rem $t3, $t7, 2
	bge $t3, 1, se
	j senao
	se:
	add $t5, $t5, $t7
	senao:
	add $t7, $t7, 1
	ble $t7, $t1, for
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	j fimse
	
	tdoismaior:
	
	add $t7, $t1, $zero
	forr:
	rem $t3, $t7, 2
	bge $t3, 1, see
	j senaoo
	see:
	add $t5, $t5, $t7
	senaoo:
	add $t7, $t7, 1
	ble $t7, $t2, forr
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	
	fimse: