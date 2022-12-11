# Title: Questão-1 Filename: Questão_1
# Author: Kevin Willyn Date: 07/03
# Description: Encontrar o maior valor em vetor com 5 elementos.

# Input: Numeros para o vetor
# Output: O maior numero do vetor

.data
    msg1 : .asciiz "Digite um numero:  \n"
    msg2 : .asciiz "O Maior número é:  \n"
    
    Vetor : .align 2
           .space 20
.text
.globl main
main:
	la $a0,msg1 
	li $v0,4
	syscall 

	li $t0, 5
 	li $t1, -4
 	
 loop: 
        addi $t0, $t0, -1
	bltz $t0, exibir_numero
    	addi $t1, $t1, 4
    	jal ler_inteiro
    	sw $v0, Vetor($t1)
    	bgt $v0, $t2, troca    
    	j loop

troca:
	move $t2,$v0
        j loop
ler_inteiro:
        li $v0, 5
        syscall
        jr $ra
exibir_numero:
        la $a0,msg2
        li $v0, 4
        syscall 
	
        li $v0, 1
        move $a0, $t2
        syscall