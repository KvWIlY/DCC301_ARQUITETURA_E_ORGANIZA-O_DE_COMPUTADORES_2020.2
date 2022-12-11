# 2 questão letra A
.text
	li $t0, 12 # Variavel A recebendo o valor 12
	li $t1, 5  # Variavel B recebendo o valor 5
	
	add $s0, $t0, $t0 # Valor da soma ($t0 + $t0) sendo atribuida no $s0
	add $s1, $t0, $t1 # Valor da soma ($t0 + $t1) sendo atribuida no $s1
	sub $s2, $s0, $s1 # Valor da subtração ($s0 - $s1) sendo atribuida a $s2
	
	li $v0, 10        # Encerra o programa