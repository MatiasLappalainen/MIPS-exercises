.data
list1: .word 3, 1, 4, 1, 5, 9, 0
list2: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
.text
.globl main
main: 
la t0, list1 # Load adress list1
la t4, list2 # Load adress list2
add t1, x0, x0
add t0, t0, t1
loop:
lw t3, 0(t0) # Substitute
beq t3, x0, done # check if t3 is 0 go to done
addi t1, t1, 1 # i++
done:
addi a0, x0, 10 # add 10 to a0
add a1, x0, x0 # a1 = 0
ecall