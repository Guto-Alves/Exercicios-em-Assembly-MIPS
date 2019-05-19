# Receba um ano. Verifique e mostre se é um ano bissexto.
.data
	msg: .asciiz"\nEnter a Year: "
	msg1: .asciiz"Is Leap!"
	msg2: .asciiz"Is not Leap!"
.text
main:
	#MENSAGEM
	li $v0, 4
	la $a0, msg
	syscall
	
	#LENDO NUM INT
	li $v0, 5
	syscall
	add $t1, $v0, $zero
		
	#CALCULOS
	rem $t2, $t1, 400
	rem $t3, $t1, 4
	rem $t4, $t1, 100
	
	beq $t3, 0, se4
	beq $t2, 0, se400
	j senao
	
	
	
	se400:
	se4:
	beq $t4, 0, se100
	j sim
	
	se100:
	beq $t2, 0, sim
	j senao
	
	
	sim:
	li $v0, 4
	la $a0, msg1
	syscall
	
	j fim

	senao:
	li $v0, 4
	la $a0, msg2
	syscall
	
	fim:
	