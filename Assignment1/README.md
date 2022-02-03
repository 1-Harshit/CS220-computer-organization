# CS220-Computer-Organization

Assignment 1 submission of the semester 2021-22-II semester of CS220A at IIT Kanpur.

## How to run the code

```bash
# navigate to the directory where the code is present
cd Qx-...
# compile the code
iverilog <file_name>.v -o <output_file_name>
# run the code
vvp ./<output_file_name>
```

## Circuit Explanations

### Question 1

We first implement a one-bit adder in `A1Q1_one_bit_full_adder.v`. The adder takes the XOR of the two bits being added along with the carry-in, and gives it as the sum. It then takes the AND of the bits (two at a time) and takes their OR to give cout.  
The eight-bit full adder takes eight instances of the one-bit adder, with the cout of one instance serving as the cin for the next instance for the first 7 instances. The final sum is stored in an eight-bit vector  

### Question 2

We first implement a one-bit comparator. The comparator takes in five inputs, two being the bits being compared, and three being the outputs of the previous bits being compared:  

- For checking if the two bits are equal, we first check if the bits are equal. That would be true in two cases, :
- Both bits are zero
- Both bits are one
In that case we shall then check if the previous two bits were equal, then we'd assign the output for equal to be one. Else it would be zero.  
For the above calculation, we take the AND of a and b and the AND of NOT a and NOT b, then we take their OR and AND it with the in_equal bit.  
- The first bit will be less than the second for the cases when  
- the first bit is zero and the second is one  
- for the previous bit, in_less = 1  
We take the OR of these two cases and then finally take its AND with the NOT of in_more  
- The first bit will be more than the second for the cases when  
- the first bit is one and the second is zero  
- for the previous bit, in_more = 1  
We take the OR of these two cases and then finally take its AND with the NOT of in_less  
We finally implement the eight-bit comparator with eight instances of the one-bit comparator.

### Question 3

We first implement the 2-4 decoder, which takes in a 2 bit input and a 4 bit output, along with a one bit enabler.

- The first output bit must be the case when input is 00, hence we take the NOT of the inputs, take their AND, and then again take the AND with the enabler
- The second output bit must be the case when input is 01, hence we take the NOT of the first input, take its AND with the second, and then again take the AND with the enabler  
- The third output bit must be the case when input is 10, hence we take the NOT of the second input, take its AND with the first, and then again take the AND with the enabler
- The fourth output bit must be the case when input is 11, hence we take the inputs AND, and then again take the AND with the enabler  
Then the 3-8 decoder is implemented using two instances of the 2-4 decoder, first with the third input and second with the NOT of the third input.

### Question 4

After understanding the truth table and making the Karnaugh map of the circuit, we came up with the logic after extensive thought.

## notes

- All testbenches end with `_tb.v`
- markdown files are present in the sub folder containing information/assumption about implementation, wherever necessary.
