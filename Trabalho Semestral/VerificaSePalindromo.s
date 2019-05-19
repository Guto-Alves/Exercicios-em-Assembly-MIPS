.data
	msg1: .asciiz"\nDigite um numero: "
	msg2: .asciiz"   - Nao eh Palindromo!"
	msg3: .asciiz"   - E um Palindromo!"
.text
main:
	#EXIBIR MSG E LER
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	#FIM
	
	#CALCULO PALIN
	li $t9, 0
	add $t2, $t1, 0   #PASSANDO NUMERO DIGITADO PARA $T2
	
	enquanto:
	rem $t0, $t1, 10
	div $t1, $t1, 10
	mul $t9, $t9, 10
	add $t9, $t9, $t0
	
	bgt $t1, 0, enquanto
	#FIMCALCULO
	
	#VERIFICANDO SE É OU NAO 
	beq $t2, $t9 se
	j senao
	
	se:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
	
	senao:
	li $v0, 4
	la $a0, msg2
	syscall
	
	fim:
	#FIM
	