.globl _start
.data 

 
.text

_start:
li a0, 3
jal ra, fatt
add t0, a0, zero

j exit

fatt:
addi sp, sp -24
sd a0, 16(sp)
sd ra, 8(sp)
sd fp, 0(sp)
addi fp, sp, 16

bne  a0, zero, ric
    addi a0, zero, 1
    j fine
ric:
    addi a0, a0, -1
    jal ra, fatt
    #---
    ld t0, 16(sp)
    mul a0, a0, t0
    j fine
    
fine:
    ld fp, 0(sp)
    ld ra, 8(sp)
    addi sp, sp, 24
    jr ra




exit:
    addi x17, x0, 10  # call number 10 = exit
    ecall