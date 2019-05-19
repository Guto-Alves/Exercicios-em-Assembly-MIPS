#Receba a temperatura em graus Celsius. Calcule e mostre a sua temperatura convertida em fahrenheit F = (9*C+160) /5.

.data
	msg1: .asciiz"\nDigite a temperatura atual em graus Celsius : "
	msg2: .asciiz"\nA temperatura convertida em Fahrenheit da : "
.text
main:
	li $t9, 9
	li $t7, 160
	li $t5, 5
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	mul $t1, $t1, $t9
	
	add $t1, $t1, $t7
	
	div $t1, $t1, $t5
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	