# This Makefile wraps SW generation for Freedom E300
#
# Test suites / generators:
# - riscv-tests      (static test suite, done)
# - riscv-arch-tests (static test suite, planned)
# - riscv-torture    (generator, planned)
# - csmith           (generator, planned)

.PHONY: all riscv-tests riscv-arch-tests

all: riscv-tests riscv-arch-tests

riscv-tests:
	make -C ./riscv-tests

riscv-arch-tests:
	make -C ./riscv-arch-tests run

clean:
	make -C ./riscv-tests clean
	make -C ./riscv-arch-tests clean
