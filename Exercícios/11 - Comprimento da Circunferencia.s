# Receba o raio de uma circunferência. Calcule e mostre o comprimento da circunferência.
.data
	msg1: .asciiz"\nDigite o raio da circunferencia: "
	msg2: .asciiz"\nComprimento da circunferencia = "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	#calculo comprimento
	li.s $f2, 3.14
	li.s $f3, 2.0
	
	mul.s $f4, $f2, $f3
	mul.s $f1, $f1, $f4

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f1
	syscall
	