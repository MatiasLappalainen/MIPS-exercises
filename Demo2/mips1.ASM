.data
sana: .asciiz "saippuakauppias"
true: .word 1
false: .word 0

.text
la t0, sana
li t1, -1

Length:
lb t2, 0(t0)
addi t1, t1, 1
addi t0, t0, 1
bne t2, zero, Length  #t0 zero after word, t1 = 4 (length)

la t3, sana
addi t0, t0, -2 #now points to the last character

Loop:
lb t4, 0(t0) #load last byte
lb t5, 0(t3) #load first byte
addi t0, t0, -1
addi t3, t3, 1
beq t4, t5, CheckLoop #if t4=t5 --> CheckLoop
li a0, 0 #if the loop breaks, t4!=t5, a0 = false
beq x0, x0, Exit

CheckLoop: #checks if indexes overlap
blt t3, t0, Loop 
#if this loop breaks, a0 = true
li a0, 1

Exit: