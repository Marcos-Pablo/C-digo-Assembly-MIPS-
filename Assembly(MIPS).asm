.data
	mensagem:.asciiz "Estes sao os 6 primeiros numeros multiplos de 3: \n"
	quebraLinha: .asciiz "\n"
.text
main:	la $a0,mensagem
	li $v0,4
	syscall

	li $s2,3
	sub $s0,$s0,$s0
	sub $s1,$s1,$s1

while: 	slti $t1, $s0, 6
	beq $t1, $zero, fimwhile
	rem $t2, $s1, $s2
	bne $t2, $zero, fimif
	
	add $a0, $s1, $zero
	li $v0, 1
	syscall

	la $a0,quebraLinha
	li $v0,4
	syscall

	addi $s0, $s0, 1

fimif: 	addi $s1, $s1, 1
	j while
fimwhile: jr $ra