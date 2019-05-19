# Receba o ano de nascimento e o ano atual. Calcule e mostre a sua idade e quantos anos terá daqui a 17 anos.
.data
	msg1: .asciiz"\nDigite o seu Ano de Nascimento : "
	msg2: .asciiz"\nE o Ano Atual : "
	msg3: .asciiz"\nSua Idade e = "
	msg4: .asciiz"\nDaqui dezessete anos sua idade sera = "
.text
main:
	li $t5, 17
	
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
	
	sub $t3, $t2, $t1
	
	add $t4, $t3, $t5
		
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	