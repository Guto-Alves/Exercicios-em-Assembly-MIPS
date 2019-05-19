# 44. Receba o número da base e do expoente. Calcule e mostre o valor da potência.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite a Base e depois o Expoente: "
	msg2: .asciiz"\nResultado = "
.text
main:
	repita:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero    #t1base
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero   #t2expoente
	
	bltz $t1, repita
	bltz $t2, repita
	
	li $t3, 1      #t3Potencia
	
	faca:
	mul $t3, $t3, $t1
	addi $t5, $t5, 1
	blt $t5, $t2, faca
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
	
	
	
	
	