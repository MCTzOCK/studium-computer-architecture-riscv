li t0 0b000101001100101

li t2 0

loop:
    # if t0 is 0, j to end
    beqz t0 end
    # t1 will be 1 if the LSB is set, otherwise it will be 0
    andi t1 t0 1
    # Add the bit to the counter
    add t2 t2 t1
    # shift t0 right by one bit
    srli t0 t0 1
    
    j loop
    
    
 
end:
    mv t0 t2
    nop
