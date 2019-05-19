# 43. Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria sabendo que Ana tem 1,10 m e 
# cresce 3 cm ao ano e Maria tem 1,5 m e cresce 2 cm ao ano.
.data
	msg: .asciiz"\n"
	msg1: .asciiz" anos! "
	
.text
main:
	li.s $f1, 1.10  #ANA
	li.s $f2, 1.50 #MARIA
	
	li.s $f8, 0.03
	li.s $f9, 0.02
	
	for:
	
	add.s $f1, $f1, $f8
	add.s $f2, $f2, $f9
	
	add $t1, $t1, 1
	
	c.le.s $f1, $f2
	bc1t for
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall