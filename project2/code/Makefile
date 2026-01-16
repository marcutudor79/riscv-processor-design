CC:=/comelec/softs/bin/riscv64-unknown-elf-gcc
OBJDUMP:=/comelec/softs/bin/riscv64-unknown-elf-gcc-objdump

CFLAGS:=-O -g -fno-pic -fno-inline -mcmodel=medlow -mabi=ilp32 -march=rv32im -Wall -static -nostdinc -nostartfiles -nodefaultlibs -nostdlib

.PHONY: all clean

all: insertion-sort.elf

insertion-sort.elf: insertion-sort.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f insertion-sort.elf
