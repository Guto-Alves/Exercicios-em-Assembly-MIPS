# 28. Receba o preço atual e a média mensal de um produto. Calcule e mostre o novo preço sabendo que: 
# Venda Mensal                Preço Atual                   Preço Novo 
#    < 500                                 < 30                               + 10% 
#   >= 500 e < 1000               >= 30 e < 80                 +15% 
 #  >= 1000                             >= 80                             - 5% 
# Obs.: para outras condições, preço novo será igual ao preço atual.

.data
	msg: .asciiz"\n"
	msg1: .asciiz"Digite o PRECO ATUAL: "
	msg2: .asciiz"Digite o MEDIA MENSAL do produto: "
	msg3: .asciiz"\nNOVO PRECO DO PRODUTO = "
.text
main:
	#MENSAGENS
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg
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
	
	#FIM
	#....
	li $v0, 4
	la $a0, msg3
	syscall
	
	li.s $f5, 30.0
	li.s $f6, 500.0
	li.s $f7, 0.10
	li.s $f8, 80.0
	li.s $f9, 1000.0
	li.s $f15, 0.15
	li.s $f16, 0.05
	
	
	#condicao P < 30 ee M < 500
	c.lt.s $f1, $f5
	bc1t se
	bc1f senao
	
	se:
	c.lt.s $f2, $f6
	bc1t seyes
	bc1f senaoo
	
	seyes:
	mul.s $f3, $f1, $f7
	add.s $f3, $f3, $f1
	
	li $v0, 2
	mov.s $f12, $f3
	syscall
	j fimse
	
	
	#condicao (P >= 30 e < 80) && (M >= 500 e < 1000)
	senao:
	senaoo:
	c.lt.s $f1, $f5
	bc1t outrosi
	bc1f senaoooo
	senaoooo:
	c.lt.s $f1, $f8
	bc1t simm
	bc1f nao

	simm:
	c.lt.s $f2, $f6
	bc1t outrosiii
	bc1f ousim
	
	ousim:
	c.lt.s $f2, $f9
	bc1t novo
	bc1f outrsi

	novo:
	mul.s $f3, $f1, $f15
	add.s $f3, $f3, $f1
	
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	j fimse
	outrosi:
	outrsi:
	outrosiii:
	outrosii:
	oucon:
	nao:
	see:
	outrose:
	#condicao (P >= 80) && (M >= 80)
	c.lt.s $f1, $f8
	bc1t condnao
	bc1f condsim
	
	condsim:
	c.lt.s $f2, $f9
	bc1t condnott
	bc1f agora
	
	agora:
	mul.s $f3, $f1, $f16
	sub.s $f3, $f1, $f3
	
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	
	condnott:
	condnao:
	
	li $v0, 2
	mov.s $f12, $f1
	syscall
	fimse:
	
	
	
	
	
	
	
	
	
	
	
	
	