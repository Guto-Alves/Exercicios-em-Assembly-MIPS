.data
	msg1: .asciiz"Digite a1: "
	msg2: .asciiz"Digite q: "
	msg3: .asciiz"Digite n: "
	pula: .asciiz"\n"
.text
main:
	#COLETANDO DADOS
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero  #A1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero	#Q
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero #N
	#FIM
	
	#------------------
	
	li $v0, 4
	la $a0, pula
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, pula
	syscall
	
	add $t8, $t1, 0
	
	enquanto:
	
	mul $t1, $t1, $t2
	
	add $t8, $t8, $t1
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, pula
	syscall
	
	sub $t3, $t3, 1
	
	bgt $t3, 1, enquanto
	
	
	
	
	
	