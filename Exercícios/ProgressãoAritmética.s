.data
	msg1: .asciiz"\nDigite A1: "
	msg2: .asciiz"\nDigite R: "
	msg3: .asciiz"\nDigite N: "
	pula: .asciiz"\n"
.text
main:
	#MENSAGENS
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
	add $t2, $v0, $zero #R

	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero # N termos
	#FIM
	
	li $v0, 4
	la $a0, pula
	syscall
	
	add $t4, $t4, $t1 #t4 = A1
	
	add $t9, $t3, 0
	
	add $t7, $t7, 1 #CONTADOR
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, pula
	syscall
	
	enquanto:
		
	add $t1, $t1, $t2
	
	add $t4, $t4, $t1
	
	add $t7, $t7, 1 #CONTADOR
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, pula
	syscall
	
	blt $t7, $t9, enquanto
	

	