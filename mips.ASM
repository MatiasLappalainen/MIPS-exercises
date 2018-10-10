.text
 add x0, zero, zero # x0 = 0
 add t0, a0, zero # t0 = a0
 addi t1, zero, 8 # t1 = 8
loop:
 lw t2, 0(t0) # shift bits
 sub x0, x0, t2 # 
 addi t0, t0, 4 # add 4 to t0
 addi t1, t1, -1 # add -1 to t1
 bne t1, zero, loop # Has loop finished
exit:
 addi a0, x0, 10 # add 10 to a0
 add a1, x0, x0 # a1 = 0
 ecall