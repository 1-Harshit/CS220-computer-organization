# truth table

```
INPUT: q0 - q7
OUTPUT: y0 - y2
The Truth Table:
<-----------INPUT------------>      <-OUTPUT->
MSB>>>>>>>>>>>>>>>>>>>>>>>>>LSB     MSB>>>>>LSB

q7	q6	q5	q4	q3	q2	q1	q0      y2	y1	y0
1	0	0	0	0	0	0	0	    1	1	1
x	1	0	0	0	0	0	0	    1	1	0
x	x	1	0	0	0	0	0	    1	0	1
x	x	x	1	0	0	0	0	    1	0	0
x	x	x	x	1	0	0	0	    0	1	1
x	x	x	x	x	1	0	0	    0	1	0
x	x	x	x	x	x	1	0	    0	0	1
x	x	x	x	x	x	x	1	    0	0	0
```

# assumption

- `8'b00000000` is an invalid input in our implementation the output for same is `100`
