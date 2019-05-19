.data
	qlinha: .asciiz"\n"
	msg: .asciiz"PALINDROMO"
	msg0: .asciiz"                  "
	msg1: .asciiz"\nDigite um numero inteiro: "
	msg2: .asciiz"    'Error' - Numero deve estar entre 2 a 9999!\n"
	msg3: .asciiz"E um Palindromo!"
	msg4: .asciiz"Nao eh um Palindromo!"
	msg5: .asciiz"\n - Palindromo mais proximo antes dele eh: "
.text
main:
	#"AMBIENTE GRAFICO"
	li $v0, 4
	la $a0, msg0
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 4
	la $a0, msg0
	syscall
	
	li $v0, 4
	la $a0, qlinha
	syscall
	#FIM
	
	#LENDO O NUMERO NA CONDICAO
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0

	j cond
	
	repita:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	cond:
	blt $t1, 2, repita
	bgt $t1, 9999, repita
	#FIM LEITURA
	
	#CALCULO SE É OU NAO PALIN
	add $t0, $t1, 0
	
	li $t4,0
	faca:
	
	rem $t5, $t1, 10
	div $t1, $t1, 10
	mul $t4, $t4, 10
	add $t4, $t4, $t5
	
	bgt $t1, 0, faca
	#FIM
	
	#VERIFICANDO RESULTADO DO CALCULO ( V OU F )
	beq $t0, $t4, se
	j senao
	
	se:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
	#FIM
	
	#PALINDROMO + NEXT ANTES DELE
	senao:        
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	add $t7, $t0, 0
	
	for:
	li $t9, 0 
	li $t6, 0

	sub $t7, $t7, 1
	add $t2, $t7, 0	
	
	while:
	
	rem $t6, $t2, 10
	div $t2, $t2, 10
	mul $t9, $t9, 10
	add $t9, $t9, $t6
	
	bgt $t2, 0, while
	
	beq $t7, $t9, senext
	j for
	
	senext:
	li $v0, 1
	add $a0, $t7, 0
	syscall

	fim: