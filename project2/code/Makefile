CC:=/comelec/softs/bin/riscv64-unknown-elf-gcc
OBJDUMP:=/comelec/softs/bin/riscv64-unknown-elf-gcc-objdump

RISCV_GCC := $(shell which riscv64-unknown-elf-gcc 2>/dev/null)
ifeq ($(RISCV_GCC),)
  $(shell echo "Please install riscv64-unknown-elf-gcc toolchain")
  $(error riscv64-unknown-elf-gcc not found in PATH)
else
  CC      := $(RISCV_GCC)
  OBJDUMP := $(RISCV_GCC)-objdump
endif

CFLAGS:=-O -g -fno-pic -fno-inline -mcmodel=medlow -mabi=ilp32 -march=rv32im -Wall -static -nostdinc -nostartfiles -nodefaultlibs -nostdlib 

.PHONY: all clean

all: insertion-sort.elf

insertion-sort.elf: insertion-sort.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f insertion-sort.elf
