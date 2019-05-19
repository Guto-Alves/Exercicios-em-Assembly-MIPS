# Receba 3 valores obrigatoriamente em ordem crescente e um 4º valor não necessariamente em ordem. Mostre os 4 números em ordem crescente.
.data
	msg1: .asciiz"\nDigite tres valores em ordem crescente! "
	msg2: .asciiz"\nERRO - os valores nao estao em ordem crescente! "
	msg4: .asciiz"Os valores em ordem crescente: "
	msg5: .asciiz"\n"
	msg6: .asciiz"\Digite o quarto valor nao necessariamente em ordem: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	ble $t2, $t1, se
	j senaocontinua
	
	se:
	li $v0, 4
	la $a0, msg2
	syscall
	j fimseacabou
	
	senaocontinua:
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	
	ble $t3, $t2, erro
	j senao
	
	erro:
	li $v0, 4
	la $a0, msg2
	syscall
	j fimseacabou
	
	senao:
	li $v0, 4
	la $a0, msg6
	syscall
	li $v0, 5
	syscall
	add $t4, $v0, $zero
	
	blt $t4, $t1, if
	j ifnot
	
	if:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	j fimseacabou
	
	ifnot:
	blt $t4, $t2, yes
	j bot
	
	yes:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	j fimseacabou
	
	bot:
	blt $t4, $t3, y
	j nt
	
	
	y:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	j fimseacabou
	
	nt:
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	j fimseacabou

	
	fimseacabou:
	