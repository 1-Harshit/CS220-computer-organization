.data
    newline: .asciiz "\n"
.text

main:
    addi $t1, $zero, 0
    addi $t2, $zero, 1

    addi $t3, $zero, 0

LOOP:
    slti $t0, $t1, 501
    beq $t0, $zero, EXIT
    add $t3, $t2, $t1,

    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, newline
    li $v0, 4
    syscall

    addi $t1, $t2, 0
    addi $t2, $t3, 0
    j LOOP
EXIT:
    li $v0, 10
    syscall
.end main

