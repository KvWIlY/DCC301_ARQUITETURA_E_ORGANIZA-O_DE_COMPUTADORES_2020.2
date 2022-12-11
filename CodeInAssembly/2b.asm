# 2 questão letra B
.data
  	A: .word 0, 1, 2, 3, 4,  5
	V: .word 0, 1, 2, 3, 4,  5
.text
	la $s1, A 
	la $s2, V 
	li $s3, 4

	lw  $t0, 16($s2)  

	add $t1, $s3, $s3 
	add $t1, $t1, $t1 
	add $t1, $t1, $s2 

	lw  $t2, 0($t1)   
	add $s2, $t0, $t2 
	sw  $s2, 20($s1)  
	la $v0, 1
	lw $a0, 20($s1)
	syscall
