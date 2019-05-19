# Receba 2 números reais. Calcule e mostre a diferença desses valores.
.data
	msg: .asciiz"\nDigite um numero real: "
	msg1: .asciiz"\nDigite outro: "
	msg2: .asciiz"\nA diferenca: "
.text
main:
	li $v0, 4
	la $a0, msg
	syscall
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 6
	syscall
	mov.s $f2, $f0
	
	sub.s $f3, $f1, $f2
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 2
	mov.s $f12, $f3
	syscall
	