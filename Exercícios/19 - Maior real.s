# Receba 2 valores reais. Calcule e mostre o maior deles.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite dois numeros reais: "
	msg2: .asciiz"O maior deles: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	li $v0, 6
	syscall
	mov.s $f2, $f0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	c.le.s $f1, $f2
	bc1t se
	bc1f senao
	
	se:
	li $v0, 2
	mov.s $f12, $f2
	syscall
	j fimse
	
	senao:
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	fimse:
	
	