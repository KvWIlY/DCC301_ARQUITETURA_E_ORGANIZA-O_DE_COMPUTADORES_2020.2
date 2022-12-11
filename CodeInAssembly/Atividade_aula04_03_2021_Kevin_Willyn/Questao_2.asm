# Title: Questão-2 Filename: Questão_2
# Author: Kevin Willyn Date: 08/03
# Description: Fatorial

# Input: Valor para encontrar o fatorial
# Output: valor do fatorial

################# Data segment #####################
.data
	msg: .asciiz "Digite o valor para calcular o Fatorial: "
	fatorial_zero: .asciiz "O Fatorial de Zero é igual a 1 "
	msg_saida: .asciiz  "O valor do Fatorial é: \n"
################# Code segment #####################
.text 
.globl main
main:
	li $t0, 0 # recebendo o valor 0 
	li $t1, 1 # recebendo o valor 1
	
	li $v0 , 4      #imprimir a  msg
	la $a0, msg
	syscall 
	
	li $v0, 5 	#Ler numero inteiro
	syscall 
	
	beqz $v0, caso_zero  #condição para caso o valor informado for 0
	move $t2, $v0	     # Movendo o valor de $v0 para $t1
	bne $v0, $zero, fat
		
	caso_zero:	     #Mensagem quando o usuario quiser o fatorial de 0
		li $v0, 4
		la $a0, fatorial_zero
		syscall 	
	
		li $v0,10
		syscall 
	fat:			# onde é calculado o fatorial
		addi $t0, $t0, 1
		mult $t1, $t0
		mflo $t1
		beq $t2, $t0, saida
		j fat	
	saida:			# mensagens de saida
		li $v0, 4
		la $a0, msg_saida
		syscall
		
		li, $v0,1	#saida do resultado
		move $a0,$t1       
        	syscall
        	
        	li,$v0,10       
        	syscall
