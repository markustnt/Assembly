.globl _start
.data 

 
.text

_start:

li t0, 51
li t1, 57
li t2, 58

add t3, zero, t0     #t3 will hold the max

bge t3, t1 end1     
    add t3, zero, t1 #t1 is the max
    
end1: 
    bge t3, t2, end2
    add t3, zero, t2  #t2 is the max
end2:


 
#<assembler code here>
   

exit:
    addi x17, x0, 10  # call number 10 = exit
    ecall
