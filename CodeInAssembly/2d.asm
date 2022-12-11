# 2 questão letra D
.text
	li $t0, 12 # Variavel A recebendo o valor 12
	li $t1, 5  # Variavel B recebendo o valor 5
	
	blt $t0, $t1, Menor
	bge $t0, $t1, Maior_ou_igual
	
	
	Menor:
		# Vai atribuir o valor de $t0 ao $t1
		move $t1, $t0
		
		# Finaliza o programa
		li $v0, 10 
		syscall
		
	Maior_ou_igual:
		# A = A + 1
		addi $s1, $t0, 1 # esta somando $t0 + 1
		move $t0, $s1	 # esta atribuindo o valor de $s1 ao $t0
		
		# Finaliza o programa
		li $v0, 10 
		syscall
		