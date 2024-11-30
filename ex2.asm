.data	
	msg: .asciiz "Digite um numero:\n"
	another: .asciiz "Digite outro numero:\n"
	msg1: .asciiz "Resultado da soma: "
	newline: .asciiz "\n"
.text

.globl main

main:
	# Imprime mensagem
	jal printf 	
	
	# Lê um número e armazena em t0
	li $v0,5
	syscall
	move $t0,$v0
	
	# Imprime outra mensagem e le o numero
	jal print_another

	li $v0,5
	syscall
	move $t1,$v0
	
	# Faz a soma
	add $t3,$t0,$t1

	# Exibe o resultado
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,1
	move $a0,$t3
	syscall
	
	jal print_newline

	# Sai do programa
	li $v0,10
	syscall

printf:
	li $v0,4
	la $a0, msg
	syscall
	jr $ra

print_another:
	li $v0,4
	la $a0, another
	syscall
	jr $ra

print_newline:
	li $v0,4
	la $a0,newline
	syscall
	jr $ra

