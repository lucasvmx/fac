.data
	message: .asciiz "digite um numero:\n" 

.text
.globl main

main:
	# Lê o número duas vezes
	li $v0,5
	syscall
	
	# Salva o numero lido
	move $s0,$v0
	
	li $v0,5
	syscall
	move $s1,$v0

	# Faz a soma
	add $t0,$s0,$s1	
	
	# Imprime a soma
	li $v0,1
	move $a0,$t0
	syscall
	
	# Sai do programa
	li $v0,10
	syscall

	

