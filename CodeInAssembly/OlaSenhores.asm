.data
	#area para dados na memoria principal
	msg: .asciiz "Ola caros senhores" #mensagem que vai ser exibida para o usuario

.text
	#�rea para instru��o do programa
		
	li $v0, 4     #instru��o para exibir a String
	la $a0, msg   # indicar o endere�o em que esta a mensagem
	syscall       #comando para exibir a mensagem indicada