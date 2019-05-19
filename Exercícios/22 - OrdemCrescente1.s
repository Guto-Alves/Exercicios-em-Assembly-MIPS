# Receba 2 valores inteiros e diferentes. Mostre seus valores em ordem crescente.
.data
	msg1: .asciiz"\nDigite um numero inteiro: "
	msg2: .asciiz"\nDigite outro numero inteiro DIFERENTE do anterior: "
	msg3: .asciiz"\nOs valores em ordem crescente: "
	msg4: .asciiz"\nERRO - os numeros sao iguais! "
	msg5: .asciiz"\n"
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
	
	beq $t1, $t2, se
	j senao
	
	se:
	li $v0, 4
	la $a0, msg4
	syscall
	j fimse
	
	senao:
	bgt $t1, $t2, see
	j senaoo
	
	see:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	j fimsee
	
	senaoo:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	fimsee:
	fimse:
	
	
	
	
	
	