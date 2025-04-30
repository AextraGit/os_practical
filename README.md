# OS Practical

##Prerequisites

Install the riscv toolchain and qemu.

```apt-get install qemu-system```

And for running in userspace:

```apt-get install qemu-user-static```

##Compilation and Execution

To compile the program, use the following command:

```riscv64-unknown-elf-gcc -ffreestanding -nostdlib  -o kernel.elf main.c printGroup.S```

To run the program after compiling it, use 

```qemu-riscv64 ./kernel.elf```
