# Receba o valor de um depósito em poupança. Calcule e mostre o valor após 1 mês de aplicação
# sabendo que rende 1,3% a. m.
.data
	msg:
	msg1: .asciiz"\nDigite o valor do deposito: "
	msg2: .asciiz"\n - Valor apos um mes de aplicacao (1,3% a.m) = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f5, $f0
	
	li.s $f1, 1.0013
	
	mul.s $f2, $f1, $f5
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	