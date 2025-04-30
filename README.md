# OS Practical


To compile the program, the riscv toolchain is required.

```riscv64-unknown-elf-gcc -ffreestanding -nostdlib  -o kernel.elf main.c printGroup.S```

To run the program after compiling it, use 

```qemu-riscv64 ./kernel.elf```
