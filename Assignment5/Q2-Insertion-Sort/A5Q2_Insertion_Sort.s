.data
  space:	.asciiz " "		# a space string.
  new_line:	.asciiz	"\n"		# a newline string.
  colon_and_space:	.asciiz ": "	# a colon string with space.
  close_bracket:    .asciiz "]"     # closing square bracket for array representation
  array:	.word	0 : 1000	# an array of word, for storing values.
  size:	.word	10		# actual count of the elements in the array.

  
  read_values_loop_info_string:	.asciiz	"Input all the ten values of the array one by one: "
  read_values_loop_iter_string:	.asciiz	"Array element["
  sorted_array_string:	.asciiz "Sorted Array:"

.text
.globl	main
main:
  read_values_loop_info:
    li	$v0, 4
    la	$a0, read_values_loop_info_string
    syscall
    li	$v0, 4
    la	$a0, new_line
    syscall
  read_values_loop_prep:
    la	$t0, array		# load array to $t0.
    lw	$t1, size		# load size to $t1.
    li	$t2, 0			# index of array, starting from 0.
  read_values_loop:
    bge	$t2, $t1, read_values_end	# while index < size
    li	$v0, 4
    la	$a0, read_values_loop_iter_string
    syscall				# issue a system call.
    li	$v0, 1
    add	$a0, $t2, $zero
    syscall				# print index of array
    li    $v0, 4
    la    $a0, close_bracket
    syscall                # print closing bracket
    li	$v0, 4
    la	$a0, colon_and_space
    syscall				# print colon and space

    li	$v0, 5
    syscall
    sw	$v0, 0($t0)     # read input

    addi	$t0, $t0, 4		# increment array pointer by 4.
    addi	$t2, $t2, 1		# increment index by 1.
    j	read_values_loop	# jump back to the beginning of the loop.
  read_values_end:
    jal	print			# call print routine.
  sort_prep:
    la	$t0, array		# load array to $t0.
    lw	$t1, size		# load array size to $t1.
    li	$t2, 1			# loop iterator, starting from 1.
  sort_xloop:
    la	$t0, array		# load array to $t0.
    bge	$t2, $t1, sort_xloop_end	# while iterator < size.
    move	$t3, $t2		# copy $t2 to $t3.
  sort_iloop:
    la	$t0, array		# load array to $t0.
    mul	$t5, $t3, 4		# multiply $t3 with 4, and store in $t5
    add	$t0, $t0, $t5		# add the array address with $t5, which is the index multiplied with 4.
    ble	$t3, $zero, sort_iloop_end	# while ($t3 > 0).
    lw	$t7, 0($t0)		# load array[$t3] to $t7.
    lw	$t6, -4($t0)		# load array[$t3 - 1] to $t6.
    bge	$t7, $t6, sort_iloop_end	# while (array[$t3] < array[$t3 - 1]).
    lw	$t4, 0($t0)
    sw	$t6, 0($t0)
    sw	$t4, -4($t0)
    addi	$t3, $t3, -1
    j	sort_iloop		# jump back to the beginning of the sort_iloop.
  sort_iloop_end:
    addi	$t2, $t2, 1		# increment loop runner by 1.
    j	sort_xloop		# jump back to the beginning of the sort_xloop.
  sort_xloop_end:
    li	$v0, 4
    la	$a0, sorted_array_string
    syscall
    li	$v0, 4
    la	$a0, new_line
    syscall
    jal	print			# call print routine.
  exit:
    li	$v0, 10
    syscall

  print:
    print_loop_prep:
      la	$t0, array
      lw	$t1, size
      li	$t2, 0
    print_loop:
      bge	$t2, $t1, print_end
      li	$v0, 1
      lw	$a0, 0($t0)
      syscall
      li	$v0, 4
      la	$a0, space
      syscall
      addi	$t0, $t0, 4
      addi	$t2, $t2, 1
      j	print_loop
    print_end:
      li	$v0, 4
      la	$a0, new_line
      syscall
      jr	$ra
