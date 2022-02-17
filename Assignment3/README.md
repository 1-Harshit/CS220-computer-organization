# CS220-computer-organization

Assignment 2 submissions of the semester 2021-22-II semester of CS220A at IIT Kanpur

## How to run the code

```bash
# navigate to the directory where the code is present
cd Qx-...
# compile the code
iverilog <file_name>.v -o <output_file_name>
# run the code
vvp ./<output_file_name>
```

## Circuit Explanation

### Question 1

**Q:**  Construct a finite state machine for a sequence detector that detects the sequence 1010.  The FSM should permit overlapping too. For example if the input sequence is 01101010, the corresponding output sequence is 00000101.

We implement an eight bit Carry-Look-Ahead-Counter in the file `A2Q2_eight_bit_look_ahead_carry_adder.v`. For this a unit adder is used which is in the file `A2Q1_look_ahead_adder_unit.v`.

### Question 2

**Q:** Write detailed description of 8-bit Johnson Counter and its working with the proper circuit diagram and truth table in a PDF file. Then write the Verilog code module to implement 8-bit Johnson Counter. Now, add a test bench to test all the states of the 8-bit Johnson Counter.

We implement the 8-bit Johnson Counter in `A2Q2_johnson_counter.v`. We use d flip-flops for the same, the module for which is stored in `A2Q2_d_flip_flop.v`. We instantiate the d flip-flop eight times:

- For the first one, the input is the NOT of the output of the last one
- For the rest, the output of previous flip-flop is the input for current

## Notes

- A detailed `report.pdf` is also attached.
- All testbenches end with `_tb.v`
