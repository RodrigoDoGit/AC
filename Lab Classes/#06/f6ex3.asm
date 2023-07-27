	.data
squares:.word 0:100
_msg1: .asciiz "The result is "
_msg2: .asciiz "\n"  


	.text
_main:
	li   $v0, 5
	syscall
	move $s1, $v0
	move $a0, $s1
	jal  _svalues
	li   $v0, 4
	la   $a0, _msg1
	syscall
	move $a0, $s1
	jal  _csum
	move $a0, $s3
	li   $v0, 1
	syscall
	li $v0, 4
	la $a0, _msg2
	syscall
	li	$v0, 10
	syscall
	
_svalues:
	li $s0, 0
	la $t1, squares
	
_loop:
	bge	$s0, $a0, _end
	mul	$t0, $s0, $s0
	sw	$t0, 0($t1)
	addiu 	$t1, $t1, 4
	addiu	$s0, $s0, 1
	j	_loop
	
_end:
	jr $ra
	
_csum:
	li $s0, 0
	li $s3, 0
	la $t1, squares
	
_loop1:
	bge   $s0, $a0, _end1
	lw    $t0, 0($t1)
	add   $s3, $s3, $t0
	addiu $t1, $t1, 4
	addiu $s0, $s0, 1
	j     _loop1
	
_end1:
	jr $ra
	