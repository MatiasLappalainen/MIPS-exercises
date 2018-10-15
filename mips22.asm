.data
A: .word 0,1,2,3,4,5,6,7,8,9
B: .word 9,8,7,6,5,4,3,2,1,0
C: .word 0,0,0,0,0,0,0,0,0,0
.text

la t0, A
la t1, B
la t2, C
li s1, 10 #load addresses into registers and s1 = 10

Loop:
beq s1, zero, Exit #if s1 = 0, the loop ends
lw t4, 0(t0)
lw t5, 0(t1)
add t6, t4, t5 #t6 = A[i] + B[i]
sw t6, 0(t2)  #C[i] = t6
#add offsets and subtract one from s1
addi t0, t0, 4
addi t1, t1, 4
addi t2, t2, 4
addi s1, s1, -1
beq x0, x0, Loop

Exit:


