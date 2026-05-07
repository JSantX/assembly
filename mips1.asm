.data
	msg1: .asciiz "Digite a altura: "
	msg2: .asciiz "Digite a largura: "
	msg3: .asciiz "Digite o comprimento: "
	
.text
main:
	#printa mensagem 1
	li $v0,4
	la $a0,msg1
	syscall
	
	#digitar na mensagem 2
	li $v0,5
	syscall
	move $t0,$a0
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	move $t1,$a0
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,5
	syscall
	move $t2,$a0

	mul $t3,$t0,$t1
	mul $t3,$t3,$t2
	
	li $v0,1
	move $a0,$t3
	syscall