li t0, 0 # this value is to be interchanged with 'n'

li t1, 1 # t0 = 1
j prog

prog:
    # if t0 < 1, exit
    blt t0, t1, end
    
    # t2 = t1 * t1
    mul t2, t1, t1

    # if t2 > t0, exit
    bgt t2, t0 end
    
    # else, t1 += 1
    addi t1, t1, 1
    j prog


end:
    # back up one step: t1 -= 1
    addi t1, t1, -1
    
    # result back into t0
    mv t0, t1
