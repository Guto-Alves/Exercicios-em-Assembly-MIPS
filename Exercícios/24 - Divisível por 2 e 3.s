# Receba um valor inteiro. Verifique e mostre se é divisível por 2 e 3.
.data
	msg1: .asciiz"\nDigite um numero inteiro : "
	msg2: .asciiz"\nNao divisivel por 2 e 3! "
	msg3: .asciiz"\nDivisivel por 2 e 3! "
.text
main:
	li $s1, 2
	li $s2, 3
	li $s3, 0

	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	rem $s1, $t1, $s1
	rem $s2, $t1, $s2
	
	beq $s1, $s3, se
	j senao
	
	se:
	beq $s2, $s3, see
	j senaoo
	
	see:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
	
	senaoo:
	li $v0, 4
	la $a0, msg2
	syscall
	j fim
	
	senao:
	li $v0, 4
	la $a0, msg2
	syscall
	
	fim:
	
	
	
	