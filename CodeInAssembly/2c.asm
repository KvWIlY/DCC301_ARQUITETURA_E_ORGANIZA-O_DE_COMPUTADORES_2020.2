# 2 questão letra C
.text
	li $t0, 12 # Variavel A recebendo o valor 12
	li $t1, 5  # Variavel B recebendo o valor 5
	
	bgt $t0, $t1, Maior
	
	Maior:	
		# Vai atribuir o valor de $t0 ao $t1
		move $t1, $t0
	
		# Finaliza o programa
		li $v0, 10 
		syscall