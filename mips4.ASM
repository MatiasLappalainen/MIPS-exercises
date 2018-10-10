.data
year: .word 1999
true: .word 1
false: .word 0
.text
.globl main
main:
la t0, year
addi t1, x0, 4
rem t2, t0, t1
addi t3, x0, 100
addi t4, x0, 400
rem t5, t0, t3
rem t6, t0, t4
initial:
bne t2, x0, no
second:
bne t5, x0, third
third:
beq t6, x0, no
yes:
la a0, true
j exit
no:
la a0, false
exit:
