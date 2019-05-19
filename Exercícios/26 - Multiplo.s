# Receba 2 números inteiros. Verifique e mostre se o maior número é múltiplo do menor.
.data
	msg1: .asciiz"\nDigite dois numeros inteiros: "
	msg2: .asciiz"\n"
	msg3: .asciiz"\nE multiplo! "
	msg4: .asciiz"\nNao sao multiplos! "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg2
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
	
	
	bge $t1, $t2, se
	j senao
	
	
	se:
	rem $t3, $t1, $t2
	beq $t3, 0, bult
	li $v0, 4
	la $a0, msg4
	syscall
	
	j fim
	
	bult:
	li $v0, 4
	la $a0, msg3
	syscall
	
	j fim 
	
	
	senao:
	rem $t3, $t2, $t1
	beq $t3, 0, bult
	li $v0, 4
	la $a0, msg4
	syscall
	
	fim: