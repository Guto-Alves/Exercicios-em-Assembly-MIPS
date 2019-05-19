# Receba 3 coeficientes A, B, e C de uma equação do 2º grau da fórmula AX²+BX+C=0. Verifique e mostre a existência de raízes reais e se caso exista, calcule e mostre.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\n- Digite os coeficientes A, B, C: "
	msg2: .asciiz" - O valor do Delta: "
	msg3: .asciiz"\n -  Raiz 1: "
	msg4: .asciiz"\n -  Raiz 2: "
	msg5: .asciiz"\n - 'Nao possui raiz real!'"
	msg6: .asciiz"\n - Valor Raiz delta: "
.text
main:
	#MANDANDO MSG E LENDO A,B,C
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
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	#FIM
	
	#CALCULANDO E MOSTRANDO DELTA
	mul $t4, $t2, $t2
	mul $s4, $t1, 4
	mul $s4, $s4, $t3
	sub $t4, $t4, $s4
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	#FIM
	
	#QUAL O VALOR DO DELTA
	blt $t4, 0, delmenorz
	j del
	
	delmenorz:
	li $v0, 4
	la $a0, msg5
	syscall
	j fim

	del:
	beq $t4, 0, deligualz
	j delmaiorz
	
	deligualz:
	neg $t2, $t2
	
	mul $t5, $t1, 2
	div $t5, $t2, $t5
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t5, $zero
	syscall
	j fim
	#FIM
	
	delmaiorz:
	
	#RAIZ QUADRADA DELTA
	li $t0, 0
	li $t8, 1
	
	enquanto:
	sub $t4, $t4, $t8
	add $t8, $t8, 2
	add $t0, $t0, 1
	bge $t4, $t8, enquanto
	
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall
	
	#FIM RAIZ DELTA  = $t0
	
	#CALCULANDO E MOSTRANDO 1 RAIZ
	neg $t2, $t2
	
	sub $t5, $t2, $t0
	mul $t7, $t1, 2
	div $t5, $t5, $t7
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	#FIM
	
	#SEGUNDA RAIZ
	li $t7, 0
	
	add $t6, $t2, $t0
	mul $t7, $t1, 2
	div $t6, $t6, $t7
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall
	
	fim:
	
	
	