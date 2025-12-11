# input values
li t0 1400
li t1 3

# init counter
li t2 1
# temporary register
mv t4 t0

loop:
    # if t2 == t1, end
    beq t2 t1 end
    # check if it fits in 32 bits, if the upper bits are not zeroes,
    # the value is too large for a 32-bit register
    mulhu t3 t0 t2
    bnez t3 overflow
    
    # perform the actual multiplication
    mul t0 t0 t4
    # add 1 to the counter (needed for the loop to end)
    addi t2 t2 1
    # jump to the beginning of the loop
    j loop

overflow:
    # store -1 in t1
    li t1 -1
    # jump to end (not really needed here, but good for redability)
    j end

end:
    nop
    
