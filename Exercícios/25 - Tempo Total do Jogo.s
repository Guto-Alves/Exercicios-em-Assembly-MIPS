# Receba a hora de início e de final de um jogo (HH,MM) sabendo que o tempo máximo é de 24 horas e pode começar num dia e terminar noutro.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite a HORA e MINUTO INICIAL do jogo: "
	msg2: .asciiz"Digite a HORA e MINUTO FINAL do jogo: "
	msg3: .asciiz"\nTEMPO TOTAL DO JOGO"
	msg4: .asciiz"\n - HORAS: "
	msg5: .asciiz"\n - MINUTOS: "
.text
main:
	sobe:
	#MENSAGEM INICIAL
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	#MENSAGEM FINAL
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	
	li $v0, 5
	syscall
	add $t4, $v0, $zero
	
	#hora 23 e minuto 59
	
	ble $t1, 23, continua
	j sobe
	
	continua:
	ble $t1, 23, continuaa
	j sobe
	
	continuaa:
	ble $t2, 59, continuaaa
	j sobe
	
	continuaaa:
	ble $t4, 59, continuaaaa
	j sobe
	
	continuaaaa:
	#------------------------
	bge $t3, $t1, se
	j senao
	
	se:
	sub $t7, $t3, $t1      #t7 = Hh
	j fimse
	
	senao:
	li $t9, 24
	sub $t7, $t9, $t1     #t7 = Hh
	add $t7, $t7, $t3
	
	fimse:
	
	bge $t4, $t2, sey
	j senaon
	
	sey:
	sub $t8, $t4, $t2
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t7, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t8, $zero
	syscall
	j fim
	senaon:
	li $t9, 60
	sub $t8, $t9, $t2
	add $t8, $t8, $t4
	
	sub $t7, $t7, 1
	
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t7, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t8, $zero
	syscall
	
	fim:
	
	li $v0, 4
	la $a0, msg
	syscall
	
	
	
	
	



	
	
	
	
	
	