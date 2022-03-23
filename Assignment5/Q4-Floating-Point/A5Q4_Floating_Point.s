            .data
vector:     .space 40
msg:        .asciiz "Result is: "
msgstart:   .asciiz "Enter size of vector followed by every floating number on new line :"
            .text
            .globl main
main:       li $v0,4
            la $a0,msgstart
            syscall
            
            li $v0,5 # read number
            syscall
            addi $t0,$v0,0
            addi $t2,$v0,0
            la $t1,vector

read:       li $v0,6 # read float
            syscall
            swc1 $f0,0($t1)
            addi $t1,$t1,4
            addi $t0,$t0,-1
            bne $t0,$0,read

            la $t1,vector
            mtc1 $0,$f3
            addi $t0,$t0,0
            addi $t6,$0,2

algo:       lwc1 $f1,0($t1)
            div $t0,$t6
            mfhi $t7
            beq $t7,$0,sum
            sub.s $f3,$f3,$f1
            j end

sum:        add.s $f3,$f3,$f1   

end:        addi $t1,$t1,4
            addi $t0,$t0,1
            bne $t0,$t2,algo    

            mov.s $f12,$f3

            li $v0,4
            la $a0,msg
            syscall

            li $v0,2
            syscall

            jr $ra