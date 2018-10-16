.data
year: .word 1999
true: .word 1
false: .word 0
.text
.globl main
main:
la t0, year # Load adress year
addi t1, x0, 4 # add 4 to t1
rem t2, t0, t1 # get remainder of division of t0 and t1
addi t3, x0, 100 # add 100 to t3
addi t4, x0, 400 # add 400 to t4
rem t5, t0, t3 # get remainder of division of t0 and t3
rem t6, t0, t4 # get remainder of division of t0 and t4
initial:
beq t2, x0, yes # if remainder of t2 is 0 go to "no"
second:
beq t5, x0, third # if remainder of t5 is 0 go to "third"
third:
beq t6, x0, yes # if remainder of t6 is 0 go to "no"
yes:
la a0, true 
j exit
no:
la a0, false
exit:
