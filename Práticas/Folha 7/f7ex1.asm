	.data
_msg1: .asciiz "fib("
_msg2: .asciiz ") = "
_msg3: .asciiz "\n"
	
	.text
_main:
	li $v0, 5
	syscall
	move $s0, $v0
	la $a0, _msg1
	li $v0, 4
	syscall
	move $a0, $s0
	li $v0, 1
	syscall
	la $a0, _msg2
	li $v0, 4
	syscall
	
_fib:
	bge $a0, 2, _end
	jr $ra
	move $s1, $a0
	li $s2, 0
	
		
	

	
	
