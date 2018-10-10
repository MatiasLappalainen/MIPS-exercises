.data
list1: .word 3, 1, 4, 1, 5, 9, 0,
list2: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
.text
.globl main
main: 
la t0, list1 # Load adress list1
la t4, list2 # Load adress list2
li t1, 0
lbu t2, 0(t0)
loop:
sb t3, 0(t2)
beq t3, x0, done
addi t1, t1, 1
done:
addi a0, x0, 10 # add 10 to a0
add a1, x0, x0 # a1 = 0
ecall


