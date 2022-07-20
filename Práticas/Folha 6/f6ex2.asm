	.data
_msg1: .asciiz "The result is "
_msg2: .asciiz "\n"
squares:.word 0:100
	
	.text
_main:
	li	$v0, 5
	syscall
	move 	$s1, $v0
	li	$s0, 0
	la	$s2, squares
	
	
_loop:
	bge	$s0, $s1, _end
	mul	$t0, $s0, $s0
	sw	$t0, 0($s2)
	addiu 	$s2, $s2, 4
	addiu	$s0, $s0, 1
	j	_loop
	
_end:	
	li	$v0, 10
	syscall
