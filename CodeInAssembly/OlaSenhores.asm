.data
	#area para dados na memoria principal
	msg: .asciiz "Ola caros senhores" #mensagem que vai ser exibida para o usuario

.text
	#área para instrução do programa
		
	li $v0, 4     #instrução para exibir a String
	la $a0, msg   # indicar o endereço em que esta a mensagem
	syscall       #comando para exibir a mensagem indicada