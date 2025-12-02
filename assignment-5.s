# input values
li t0 128
li t1 512

# if t0 < t1, jmp to less
bltu t0, t1, less
# if t0 > t1, jmp to end, as t0 already has the max number
bgtu t0, t1, end
# if t0 = t1, set t0 to -1
li t0 -1
j end


less:
    # set the value of t0 to t1 as t1 is the max
    mv t0, t1
    j end
    
end:
    nop
