# Receba 4 notas bimestrais de um aluno. Calcule e mostre a média aritmética. Mostre a mensagem de acordo com a média:
# a. Se a média for >= 6,0 exibir “APROVADO”;
# b. Se a média for >= 3,0 ou < 6,0 exibir “EXAME”;
# c. Se a média for < 3,0 exibir “RETIDO”.
.data
	msg: .asciiz"\n"
	msg1: .asciiz"Digite suas 4 notas bimestrais: "
	msg2: .asciiz"\nAPROVADO! "
	msg3: .asciiz"\nEXAME! "
	msg4: .asciiz"\nRETIDO! "
	msg5: .asciiz"Media = "
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
	
	li $v0, 6
	syscall
	mov.s $f3, $f0
	
	li $v0, 6
	syscall
	mov.s $f4, $f0
	
	li.s $f7, 4.0
	#MEDIA DAS NOTAS
	add.s $f5, $f1, $f2
	add.s $f5, $f5, $f3
	add.s $f5, $f5, $f4
	div.s $f5, $f5, $f7
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	
	#
	
	li.s $f9, 6.0
	li.s $f15, 3.0
	
	c.lt.s $f5, $f15
	bc1t se
	bc1f senao
	
	se:
	li $v0, 4
	la $a0, msg4
	syscall
	j fimse	

	senao:
	c.lt.s $f5, $f9
	bc1t see
	bc1f senaoo
	
	
	see:
	li $v0, 4
	la $a0, msg3
	syscall
	j fimse
	
	senaoo:
	li $v0, 4
	la $a0, msg2
	syscall
	
	fimse:
	
	
	
	