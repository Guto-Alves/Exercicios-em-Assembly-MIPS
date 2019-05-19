# Receba a quantidade de horas trabalhadas, o valor por hora, o percentual de desconto e o número de descendentes. Calcule o salário que serão as horas trabalhadas x o valor por hora. Calcule o salário líquido (= Salário Bruto – desconto). A cada dependente será acrescido R$ 100 no Salário Líquido. Exiba o salário a receber.
.data
	msg1: .asciiz"\nDigite a QDTE HORAS TRABALHADAS: "
	msg2: .asciiz"\nDigite o VALOR POR HORA: "
	msg3: .asciiz"\nDigite o PERCENTUAL DE DESC (sem %): "
	msg4: .asciiz"\nDigite o NUMERO DE DESCENDENTES: " 
	msg5: .asciiz"\nSALARIO A RECEBER = "
.text
main:
	#HORAS TRABALHADAS
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#VALOR POR HORA
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#PERCENTUAL DE DESC
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#NUMERO DE DESCENDENTES
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t4, $v0, 0
	#FIM MSG S
	
	#Calculo SALARIO BRUTO t5
	mul $t5, $t1, $t2
	
	#Calculo DESCONTO
	mul $t6, $t3, $t5
	div $t6, $t6, 100
	
	#Calculo SALARIO LIQUIDO
	sub $t7, $t5, $t6
	
	#Calculo SALARIO A RECEBER
	mul $t8, $t4, 100
	add $t8, $t8, $t7
	
	#EXIBIR SALARIO A RECEBER
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t8, $zero
	syscall
	
	
	
	
	