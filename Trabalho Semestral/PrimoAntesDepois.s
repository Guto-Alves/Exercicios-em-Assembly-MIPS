.data
	pula: .asciiz"\n"
	msg1: .asciiz"\n- Digite um numero: "
	msg2: .asciiz"Primo antes = "
	msg3: .asciiz"Primo depois = "
	msg4: .asciiz"Numero nao possui primo antes!"
	msg5: .asciiz"Nao verifico numero + que 50.000!"
.text
main:
	continue:
	#ZERANDO REGISTRADORES
	li $t1, 0
	li $t3, 0
	li $t7, 0
	li $t8, 0
	#FIM
	
	li $v0, 4
	la $a0, pula
	syscall
	
	again:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	blt $t1, 2, again
	bgt $t1, 50000, again
	
	add $t9, $t1, 0
	
	#MOSTRAR PRIMO ANTES
	sub $t1, $t1, 1
	
	add $t7, $t7, 1 #CONTADOR
	
	enquanto:
	for:
		
		rem $t3, $t1, $t7
		
		beq $t3, 0, if
		j else
		
		if:
		add $t8, $t8, 1
		
		else:
		
		add $t7, $t7, 1
	ble $t7, $t1, for
	
	beq $t8, 2, primo
	j nprimo
	
	primo:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	j fimantes
	
	nprimo:
	sub $t1, $t1, 1
	li $t8, 0
	li $t7, 1
	
	ble $t1, 1, npossui
	j enquanto
	
	#FIM
	
	npossui:
	li $v0, 4
	la $a0, msg4
	syscall
	
	fimantes:
	
	#ZERANDO REGISTRADORES
	li $t1, 0
	li $t3, 0
	li $t7, 0
	li $t8, 0
	
	li $v0, 4
	la $a0, pula
	syscall
	#FIM
	
	#EXIBINDO PRIMO DEPOIS
	add $t9, $t9, 1
	
	add $t7, $t7, 1 #CONTADOR
	
	enquanto2:
	for2:
		
		rem $t3, $t9, $t7
		
		beq $t3, 0, if2
		j else2
		
		if2:
		add $t8, $t8, 1
		
		else2:
		
		add $t7, $t7, 1
	ble $t7, $t9, for2
	
	beq $t8, 2, primo2
	j nprimo2
	
	primo2:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t9, $zero
	syscall
	j fimdepois2
	
	nprimo2:
	add $t9, $t9, 1
	li $t8, 0
	li $t7, 1
	
	bgt $t9, 50000, npossui2
	j enquanto2
	
	npossui2:
	li $v0, 4
	la $a0, msg5
	syscall
	
	fimdepois2:
	#FIM
	
	j continue
	
	
	