
# input value
li t0 20

# store '2' in t1
li t1 2
# store '5' in t2
li t2 5

# calculate and store the result of 't0 % t1' in t3
remu t3 t0 t1
# calculate and store the result of 't0 % t2' in t2
remu t4 t0 t2

# if both t3 and t4 are all zeros, t5 will also be all zeros
or t5 t3 t4
# to store all ones in t0 when the input is divisible by 2 & 5, we need to invert
# the intermediate result stored in t5
not t0 t5
