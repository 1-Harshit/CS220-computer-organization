# CS220-computer-organization
Assignment submissions of the semester 2021-22-II semester of CS220A at IIT Kanpur
In this file, we shall describe the way the questions of the assignment have been classified into folders and all the necessary information related to the naming of various inputs, outputs and modules.
# Question 1: Write a Verilog code module to implement one-bit full adder. Write another module to implement eight-bit ripple carry adder that instantiates eight one-bit full adders and connects them properly. Now, add a test bench to test the eight-bit ripple carry adder. Write a test bench to test the eight-bit adder. Make sure to display your inputs, sum, and carry out. Your test bench must have fifteen different inputs. Put five-time unit delay between consecutive inputs. Place one module in one Verilog file i.e., you will have three Verilog files.
The files of the above question reside in the folder titled Q1-Eight-Bit-Ripple-Carry-Adder.
The bottom-most level module which implements a one-bit full adder is in the file titled A1Q1_one_bit_full_adder.v. The module is called "one_bit_full_adder", with
    a,b : 1-bit numbers to be added (INPUT)
    cin : 1-bit carry-in (INPUT)
    sum : sum of a and b (OUTPUT)
    cout : 1-bit carry-out (OUTPUT)
    
The top-level module implementing the ripple carry adder resides in the file A1Q1_eight_bit_ripple_carry_adder.v, with the module named as eight_bit_ripple_carry_adder, and
    a,b : 8-bit numbers to be added (INPUT)
    cin : 1-bit initial carry-in (INPUT)
    carry : 7-bit wire vector consisting of intermediate 1-bit carry-ins (INTERMEDIATE)
    sum : 8-bit sum of a and b (OUTPUT)
    cout : 1-bit final carry-out (OUTPUT)
    
The instances of the one-bit full adders are referred to as OFBAx, where x is the bit being focused on in that instance.
The test-bench (file: A1Q1_eight_bit_adder_top.v) has a single module called eight_bit_adder_top which has the same nomenclature as mentioned above.

# Question 2: Write a Verilog code to implement an eight-bit comparator using eight one-bit comparators. Follow the similar nomenclature as discussed in question 1. Your test bench must have fifteen different inputs. Put five-time unit delay between consecutive inputs. Place one module in one Verilog file i.e., you will have three Verilog files.
The files of the above question reside in the folder titled Q2-Eight-Bit-Comparator.
The bottom-most level module which implements a one-bit comparator is in the file titled A1Q2_one_bit_comparator.v. The module is called "one_bit_comparator", with
    a,b : 1-bit numbers to be compared (INPUT)
    in_less : 1-bit carry-in for checking if previous number was less (INPUT)
    in_equal : 1-bit carry-in for checking if previous number was equal  (INPUT)
    in_more : 1-bit carry-in for checking if previous number was more  (INPUT)
    out_less : 1-bit carry-out for checking if current number is less (OUTPUT)
    out_equal : 1-bit carry-out for checking if current number is equal (OUTPUT)
    out_more : 1-bit carry-out for checking if current number is more (OUTPUT)
    
The top-level module implementing the eight-bit comparator resides in the file A1Q2_eight_bit_comparator.v, with the module named as eight_bit_comparator, and
    a,b : 8-bit numbers to be compared (INPUT)
    cin : 1-bit initial carry-in (INPUT)
    in_less : 1-bit initial carry-in for checking if previous number was less (INPUT)
    in_equal : 1-bit initial carry-in for checking if previous number was equal  (INPUT)
    in_more : 1-bit initial carry-in for checking if previous number was more  (INPUT)
    g, e, l : 7-bit wire vectors consisting of intermediate 1-bit carry-ins for less, equal and more respectively (INTERMEDIATE)
    out_less : 1-bit final carry-out for checking if current number is less (OUTPUT)
    out_equal : 1-bit final carry-out for checking if current number is equal (OUTPUT)
    out_more : 1-bit final carry-out for checking if current number is more (OUTPUT)
    
The instances of the one-bit comparators are referred to as cx, where x is the bit being focused on in that instance.
The test-bench (file: A1Q2_eight_bit_comparator_top.v) has a single module called eight_bit_comparator_top which has the same nomenclature as mentioned above.

# Question 3: Write a Verilog code to implement a two-to-four decoder. Then a top module for three-to-eight decoder using two-to-four decoder. Write a test bench to test three-to eight decoder for all possible input with five-time delay.
The files of the above question reside in the folder titled Q3-2-4-Decoder.
The bottom-most level module which implements a 2-4 decoder is in the file titled A1Q3_two_to_four_decoder.v. The module is called "two_to_four_decoder", with
    inp : 2-bit number to be the input  (INPUT)
    enabler : 1-bit enabler (INPUT)
    op : 4-bit number to be the decoded output (OUTPUT)
    
The top-level module implementing the 3-8 decoder resides in the file A1Q3_three_to_eight_decoder.v, with the module named as three_to_eight_decoder, and
    inp : 3-bit number to be the input  (INPUT)
    enabler : 1-bit enabler (INPUT)
    op : 8-bit number to be the decoded output (OUTPUT)
    
The instances of the 2-4 decoders are referred to as dx, where x is the bit being focused on in that instance.
The test-bench (file: A1Q3_two_to_four_decoder_test.v) has a single module called two_to_four_decoder_test which has the same nomenclature as mentioned above.

# Question 4: write a Verilog code to implement an 8-to-3 priority encoder where priority is given to the least significant input position with a 1. For example, if the input is 11000000, the output would be 110 encoding the position of the least significant 1 in the input (leftmost bit is the most significant bit). Write a test bench to test encoder for at least five test cases. Put five-time unit delay between consecutive inputs.
The files of the above question reside in the folder titled Q4-8-3-bit-Priority-Encoder.
    
The top-level module implementing the 8-3 priority encoder resides in the file A1Q4_priority_encoder_8_3.v, with the module named as priority_encoder_8_3, and
    inp : 8-bit number to be the input  (INPUT)
    enabler : 1-bit enabler (INPUT)
    out : 3-bit number to be the decoded output (OUTPUT)
    
The test-bench (file: A1Q4_priority_encoder_8_3_tb.v) has a single module called priority_encoder_8_3_tb which has the same nomenclature as mentioned above.

