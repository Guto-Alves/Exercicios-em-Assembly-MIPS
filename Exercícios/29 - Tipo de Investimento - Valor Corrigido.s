# 29. Receba o tipo de investimento (1 = poupança e 2 = renda fixa) e o valor do investimento. 
# Calcule e mostre o valor corrigido em 30 dias sabendo que a poupança = 3% e a renda fixa = 5%. Demais tipos não serão considerados.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"\nDigite o TIPO de investimento (1 ou 2): "
	msg3: .asciiz"Digite o VALOR do investimento: "
	msg2: .asciiz"\nERRO - TIPO DE INVESTIMENTO INVALIDO! "
	msg4: .asciiz"\n- Valor CORRIGIDO = "
.text
main:
	li.s $f17, 1.0
	li.s $f18, 2.0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	j inves
	tipo:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f1, $f0
	
	inves:
	c.eq.s $f1, $f17
	bc1t cont
	c.eq.s $f1, $f18
	bc1t contt
	bc1f tipo
	
	cont:
	contt:
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0,6
	syscall
	mov.s $f2, $f0
	
	li.s $f13, 1.03
	li.s $f15, 1.05
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	#CONDICOES(Tipo =1)
	c.eq.s $f1, $f17
	bc1t tipoum
	bc1f tipodois
	
	tipoum:
	mul.s $f5, $f2, $f13
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	j fimse
	
	#(tipo = 2)
	tipodois:
	mul.s $f5, $f2, $f15
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	
	fimse:
	
	
	
	
	
	
	
	
	