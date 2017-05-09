.text
.globl __start
__start:
la $a1, vector1
la $a2, vector2
l.d $f12, result
l.d $f0,8($a1)
l.d $f2,16($a1)
l.d $f4,0($a1)
l.d $f6,16($a1)
l.d $f8,0($a1)
l.d $f10,8($a1)
l.d $f14,0($a2)
l.d $f16,8($a2)
l.d $f18,16($a2)
mul.d $f0,$f0,$f18
mul.d $f2,$f2,$f16
mul.d $f4,$f4,$f18
mul.d $f6,$f6,$f14
mul.d $f8,$f8,$f16
mul.d $f10,$f10,$f14
sub.d $f0,$f0,$f2
sub.d $f4,$f4,$f6
sub.d $f8,$f8,$f10
mov.d $f12,$f0
li $v0,3
syscall

mov.d $f12,$f4
li $v0,3
syscall

mov.d $f12,$f8
li $v0,3
syscall

li $v0,10
syscall
.data
result: .double 0
vector1: .double 2.3,5.5,7.1
vector2: .double 1.5,4.1,3.2
endl: .ascii "\n"