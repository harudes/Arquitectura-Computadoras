.text
.globl __start
__start:
	la $a1, vector1
	la $a2, vector2
	lw $t2, tam
	l.d $f4, suma
loop:
	l.d $f6,($a1)
	l.d $f8,($a2)
	mul.d $f6,$f6,$f8
	add.d $f4,$f4,$f6
	add $a1,$a1,8
	add $a2,$a2,8
	add $t2,$t2,-1
	bnez $t2,loop
	mov.d $f12,$f4
	li $v0, 3
	syscall
		li $v0,10
		syscall
.data
tam: .word 3
suma: .double 0
vector1: .double 2.3,5.5,7.1
vector2: .double 1.5,4.1,3.2