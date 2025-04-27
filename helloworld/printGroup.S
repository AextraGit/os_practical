.section .text
	.globl _start

_start:
	li a0, 0			#stdin
	la a1, input			#Loading address of buffer in a1
	li a2, 10			#Max amount of bytes 2 b read
	li a7, 63			# sys read
	ecall				#syscall

	mv t0, a0			#Anzahl an gelesenen Bytes

	li a0, 1			#stdout
1:	auipc a1, %pcrel_hi(msg)	#load msg lo
	addi a1, a1, %pcrel_lo(1b)	#load msg hi
	li a2, 24			#length of string
	li a7, 64			#_NR_sys_write
	ecall				#syscall

	li a0, 1			#Set file descriptor to 1 output
	la a1, input			#Loading address of buffer from a4 to a1
	mv a2, t0			#length of bytes to print
	li a7, 64			#sys_write
	ecall				#syscall

	li a0, 0
	li a7, 93			#_NR_sys_exit
	ecall				#syscall

.section .rodata
msg:
	.string "Hello Userspace, Group "
.section .bss
	.align 4
input:
	.skip 10
