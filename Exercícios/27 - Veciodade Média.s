# Receba o número de voltas, a extensão do circuito (em metros) e o tempo de duração (minutos). Calcule e mostre a velocidade média em km/h.
.data
	msg1: .asciiz"\nDigite o NUMERO de VOLTAS: "
	msg2: .asciiz"Digite a EXTENSAO do CIRCULO (metros): "
	msg3: .asciiz"E o TEMPO de DURACAO (min): "
	msg4: .asciiz"\nVelocidade MEDIA(km/h)= "
	msg5: .asciiz"\n"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	syscall
	mov.s $f2, $f0
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 6
	syscall
	mov.s $f3, $f0
	
	#Caculo Velocidade Média
	li.s $f6, 3.6
	
	mul.s $f4, $f1, $f2
	div.s $f4, $f4, $f3
	mul.s $f4, $f4, $f6
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	