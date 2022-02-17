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

Implemented using D Flip-Flop.

### Question 2

**Q:** Construct a finite state machine for the 3-bit odd parity bit generator.  A serial parity-bit generator is a two-terminal circuit that receives coded messages and adds a parity bit to every m bits of the message so that the resulting outcome is an error detecting code. The inputs are assumed to arrive in strings of three symbols(m=3) and the string is spaced apart by single time units (i.e., the fourth place is blank). The parity bits are inserted in the appropriate spaces so that the resulting outcome is a continuous string of symbols without spaces. For even parity, a parity bit 1 is inserted, if and only if the numbers of 1s in the preceding string of three symbols are odd. For odd parity, a parity bit 1 is inserted, if and only if the numbers of 1s in the preceding string of three symbols is even. Here we will focusing on designing only odd parity generator. 

Implemented using T Flip-Flop.

## Notes

- A detailed `report.pdf` is also attached.
- All testbenches end with `_tb.v`
