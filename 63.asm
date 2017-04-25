.text
.globl __start
__start:
	ld $t0, array
mspfx:  addi $v0, $zero, 0	
	addi $v1, $zero, 0
	addi $t0, $zero, 0
	addi $t1, $zero, 0
loop:   add $t2, $t0, $t0
	add $t2, $t2, $t2
	addi $t3, $t2, 4
	lw $t4, 0($t3)
	add $t1, $t1, $t4
	slt $t5, $v1, $t1
	bne $t5, $zero, mdfy
	j test
mdfy:   addi $v0, $t0, 1
	addi $v1, $t1, 0
test:   addi $t0, $t0, 1
	slt $t5, $t0, $a1
	bne $t5, $zero, loop
done:   jr $ra
	li $v1, 4
	syscall
.data
i: .word 4
array: .word 1,5,2,4,5,2,3
