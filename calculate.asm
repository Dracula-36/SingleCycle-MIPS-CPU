ori $sp, $0, 1023
ori $fp, $0, 1023
jal main
ori $v0, $0, 10
syscall
######   Execute from "main"   ######

getSum:
sw $ra, 0($sp)
sw $fp, -4($sp)
addu $fp, $sp, $0
ori $1, $0, 48
sw $1, -44($sp)
sub $sp, $sp, $1
######   Correspond to source file line   3   ######
######   Correspond to source file line   3   ######
lw $t0, -36($fp)
ori $t0, $0, 0
sw $t0, -36($fp)
######   Correspond to source file line   7   ######
lw $t1, -40($fp)
ori $t1, $0, 1
sw $t1, -40($fp)
######   Correspond to source file line   8   ######
label6:
######   Correspond to source file line   8   ######
lw $t2, -32($fp)
addu $t2, $t1, $0
sw $t2, -32($fp)
######   Correspond to source file line   8   ######
lw $t3, -28($fp)
addu $t3, $a0, $0
sw $t3, -28($fp)
######   Correspond to source file line   8   ######
beq $t2, $t3, label7
slt $1, $t2, $t3
addi, $1, $1, -1
beq $1, $0, label7
######   Correspond to source file line   8   ######
j label8
######   Correspond to source file line   8   ######
label7:
######   Correspond to source file line   8   ######
lw $t4, -24($fp)
addu $t4, $t0, $0
sw $t4, -24($fp)
######   Correspond to source file line   9   ######
lw $t5, -20($fp)
addu $t5, $t1, $0
sw $t5, -20($fp)
######   Correspond to source file line   9   ######
add $t0, $t4, $t5
sw $t0, -36($fp)
######   Correspond to source file line   9   ######
lw $t6, -16($fp)
addu $t6, $t1, $0
sw $t6, -16($fp)
######   Correspond to source file line   8   ######
lw $t7, -12($fp)
ori $t7, $0, 1
sw $t7, -12($fp)
######   Correspond to source file line   8   ######
add $t1, $t6, $t7
sw $t1, -40($fp)
######   Correspond to source file line   8   ######
j label6
######   Correspond to source file line   8   ######
label8:
######   Correspond to source file line   8   ######
lw $s0, -8($fp)
addu $s0, $t0, $0
sw $s0, -8($fp)
######   Correspond to source file line  10   ######
lw $1, 4($sp)
add $sp, $sp, $1
lw $ra, 0($sp)
lw $fp, -4($sp)
addu $v0, $s0, $0
jr $ra
######   Correspond to source file line  10   ######

getMul:
sw $ra, 0($sp)
sw $fp, -4($sp)
addu $fp, $sp, $0
ori $1, $0, 48
sw $1, -44($sp)
sub $sp, $sp, $1
######   Correspond to source file line  13   ######
######   Correspond to source file line  13   ######
lw $t0, -36($fp)
ori $t0, $0, 1
sw $t0, -36($fp)
######   Correspond to source file line  17   ######
lw $t1, -40($fp)
ori $t1, $0, 1
sw $t1, -40($fp)
######   Correspond to source file line  18   ######
label3:
######   Correspond to source file line  18   ######
lw $t2, -32($fp)
addu $t2, $t1, $0
sw $t2, -32($fp)
######   Correspond to source file line  18   ######
lw $t3, -28($fp)
addu $t3, $a0, $0
sw $t3, -28($fp)
######   Correspond to source file line  18   ######
beq $t2, $t3, label4
slt $1, $t2, $t3
addi, $1, $1, -1
beq $1, $0, label4
######   Correspond to source file line  18   ######
j label5
######   Correspond to source file line  18   ######
label4:
######   Correspond to source file line  18   ######
lw $t4, -24($fp)
addu $t4, $t0, $0
sw $t4, -24($fp)
######   Correspond to source file line  19   ######
lw $t5, -20($fp)
addu $t5, $t1, $0
sw $t5, -20($fp)
######   Correspond to source file line  19   ######
addi $sp, $sp, -8
sw $a0, 4($sp)
sw $a1, 8($sp)
addu $a0, $t4, $0
addu $a1, $t5, $0
sll $a0, $a0, 16
sll $a1, $a1, 16
jal booth_mul
addu $t0, $v0, $0
lw $a0, 4($sp)
lw $a1, 8($sp)
addi $sp, $sp, 8
sw $t0, -36($fp)
######   Correspond to source file line  19   ######
lw $t6, -16($fp)
addu $t6, $t1, $0
sw $t6, -16($fp)
######   Correspond to source file line  18   ######
lw $t7, -12($fp)
ori $t7, $0, 1
sw $t7, -12($fp)
######   Correspond to source file line  18   ######
add $t1, $t6, $t7
sw $t1, -40($fp)
######   Correspond to source file line  18   ######
j label3
######   Correspond to source file line  18   ######
label5:
######   Correspond to source file line  18   ######
lw $s0, -8($fp)
addu $s0, $t0, $0
sw $s0, -8($fp)
######   Correspond to source file line  20   ######
lw $1, 4($sp)
add $sp, $sp, $1
lw $ra, 0($sp)
lw $fp, -4($sp)
addu $v0, $s0, $0
jr $ra
######   Correspond to source file line  20   ######

getMulSum:
sw $ra, 0($sp)
sw $fp, -4($sp)
addu $fp, $sp, $0
ori $1, $0, 60
sw $1, -56($sp)
sub $sp, $sp, $1
######   Correspond to source file line  23   ######
######   Correspond to source file line  23   ######
lw $t0, -48($fp)
ori $t0, $0, 1
sw $t0, -48($fp)
######   Correspond to source file line  28   ######
lw $t1, -52($fp)
ori $t1, $0, 1
sw $t1, -52($fp)
######   Correspond to source file line  29   ######
label0:
######   Correspond to source file line  29   ######
lw $t2, -24($fp)
addu $t2, $t1, $0
sw $t2, -24($fp)
######   Correspond to source file line  29   ######
lw $t3, -20($fp)
addu $t3, $a0, $0
sw $t3, -20($fp)
######   Correspond to source file line  29   ######
beq $t2, $t3, label1
slt $1, $t2, $t3
addi, $1, $1, -1
beq $1, $0, label1
######   Correspond to source file line  29   ######
j label2
######   Correspond to source file line  29   ######
label1:
######   Correspond to source file line  29   ######
lw $t4, -40($fp)
addu $t4, $t0, $0
sw $t4, -40($fp)
######   Correspond to source file line  31   ######
lw $t5, -36($fp)
addu $t5, $t1, $0
sw $t5, -36($fp)
######   Correspond to source file line  31   ######
addi $sp, $sp, -8
sw $a0, 4($sp)
sw $a1, 8($sp)
addu $a0, $t4, $0
addu $a1, $t5, $0
sll $a0, $a0, 16
sll $a1, $a1, 16
jal booth_mul
addu $t0, $v0, $0
lw $a0, 4($sp)
lw $a1, 8($sp)
addi $sp, $sp, 8
sw $t0, -48($fp)
######   Correspond to source file line  31   ######
lw $t6, -44($fp)
lw $t7, -32($fp)
addu $t7, $t6, $0
sw $t7, -32($fp)
######   Correspond to source file line  32   ######
lw $s0, -28($fp)
addu $s0, $t0, $0
sw $s0, -28($fp)
######   Correspond to source file line  32   ######
add $t6, $t7, $s0
sw $t6, -44($fp)
######   Correspond to source file line  32   ######
lw $s1, -16($fp)
addu $s1, $t1, $0
sw $s1, -16($fp)
######   Correspond to source file line  29   ######
lw $s2, -12($fp)
ori $s2, $0, 1
sw $s2, -12($fp)
######   Correspond to source file line  29   ######
add $t1, $s1, $s2
sw $t1, -52($fp)
######   Correspond to source file line  29   ######
j label0
######   Correspond to source file line  29   ######
label2:
######   Correspond to source file line  29   ######
lw $s3, -8($fp)
addu $s3, $t6, $0
sw $s3, -8($fp)
######   Correspond to source file line  34   ######
lw $1, 4($sp)
add $sp, $sp, $1
lw $ra, 0($sp)
lw $fp, -4($sp)
addu $v0, $s3, $0
jr $ra
######   Correspond to source file line  34   ######

main:
sw $ra, 0($sp)
sw $fp, -4($sp)
addu $fp, $sp, $0
ori $1, $0, 60
sw $1, -56($sp)
sub $sp, $sp, $1
######   Correspond to source file line  40   ######
ori $a0, $0, 73
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 112
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 117
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 119
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $a0, $0, 13
ori $v0, $0, 11
syscall
######   Correspond to source file line  48   ######
ori $v0, $0, 5
syscall
lw $t0, -52($fp)
addu $t0, $v0, $0
######   Correspond to source file line   0   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 100
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 103
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 119
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
ori $a0, $0, 13
ori $v0, $0, 11
syscall
######   Correspond to source file line  50   ######
lw $t1, -32($fp)
addu $t1, $t0, $0
sw $t1, -32($fp)
######   Correspond to source file line  51   ######
######   Correspond to source file line  51   ######
addu $a0, $t1, $0
sw $t0, -52($fp)
sw $t1, -32($fp)
jal getMulSum
lw $t0, -48($fp)
addu $t0, $v0, $0
######   Correspond to source file line  51   ######
lw $t1, -28($fp)
addu $t1, $t0, $0
sw $t1, -28($fp)
######   Correspond to source file line  52   ######
addu $a0, $t1, $0
ori $v0, $0, 1
syscall
######   Correspond to source file line   0   ######
ori $a0, $0, 84
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 104
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 101
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 97
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 108
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 102
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 97
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 99
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 114
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 97
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 108
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 100
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 103
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
ori $a0, $0, 13
ori $v0, $0, 11
syscall
######   Correspond to source file line  53   ######
lw $t2, -52($fp)
lw $t3, -24($fp)
addu $t3, $t2, $0
sw $t3, -24($fp)
######   Correspond to source file line  54   ######
######   Correspond to source file line  54   ######
addu $a0, $t3, $0
sw $t0, -48($fp)
sw $t1, -28($fp)
sw $t2, -52($fp)
sw $t3, -24($fp)
jal getSum
lw $t0, -44($fp)
addu $t0, $v0, $0
######   Correspond to source file line  54   ######
lw $t1, -20($fp)
addu $t1, $t0, $0
sw $t1, -20($fp)
######   Correspond to source file line  55   ######
addu $a0, $t1, $0
ori $v0, $0, 1
syscall
######   Correspond to source file line   0   ######
ori $a0, $0, 84
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 104
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 101
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 117
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 109
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 100
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 103
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
ori $a0, $0, 13
ori $v0, $0, 11
syscall
######   Correspond to source file line  56   ######
lw $t2, -52($fp)
lw $t3, -16($fp)
addu $t3, $t2, $0
sw $t3, -16($fp)
######   Correspond to source file line  57   ######
######   Correspond to source file line  57   ######
addu $a0, $t3, $0
sw $t0, -44($fp)
sw $t1, -20($fp)
sw $t2, -52($fp)
sw $t3, -16($fp)
jal getMul
lw $t0, -40($fp)
addu $t0, $v0, $0
######   Correspond to source file line  57   ######
lw $t1, -12($fp)
addu $t1, $t0, $0
sw $t1, -12($fp)
######   Correspond to source file line  58   ######
addu $a0, $t1, $0
ori $v0, $0, 1
syscall
######   Correspond to source file line   0   ######
ori $a0, $0, 84
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 104
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 101
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 102
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 97
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 99
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 114
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 97
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 108
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 111
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 110
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 32
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 100
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 103
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 105
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 116
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 115
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
ori $a0, $0, 13
ori $v0, $0, 11
syscall
######   Correspond to source file line  59   ######
lw $t2, -8($fp)
ori $t2, $0, 0
sw $t2, -8($fp)
######   Correspond to source file line  60   ######
lw $1, 4($sp)
add $sp, $sp, $1
lw $ra, 0($sp)
lw $fp, -4($sp)
addu $v0, $t2, $0
jr $ra
######   Correspond to source file line  60   ######

booth_mul:
srl  $a0, $a0, 16
addi $a2, $0, 16
add  $v0, $0, $a0
addi $a3, $0, 0
booth_loop:
andi $t2, $a0, 1
beq  $a3, $t2, booth_l1
slt  $t3, $t2, $a3
beq  $t3, $0, booth_l2
add  $v0, $v0, $a1
j    booth_l1
booth_l2:
sub  $v0, $v0, $a1
booth_l1:
sra  $v0, $v0, 1
add  $a3, $t2, $0
sra  $a0, $a0, 1
addi $a2, $a2, -1
bne  $a2, $0, booth_loop
add  $s0, $v0, $0
jr   $ra
######   Use booth multipy to replace instrunction "mul"   ######
