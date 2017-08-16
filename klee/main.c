#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <assert.h>
#include <klee/klee.h>

int main(int argc, char *argv[]) {
	//e1000_read_nvm(var_40, rax & 0xffff, 0x1, & var_2A);
	//e1000_read_nvm(var_40, r12 & 0xffff, 0x1, & var_2C);

	//int8_t var_2A = argv[1];
	//int8_t var_2C = argv[2];
	int8_t r8 = 0, rcx = 0, rdx = 0, rbx = 0, rsi = 0;

	int8_t var_2A = 0xffff;
	int8_t var_2C = 0x0000;
	//klee_make_symbolic(&var_2A, sizeof(var_2A), "var_2A");
	klee_make_symbolic(&var_2C, sizeof(var_2C), "var_2C");

	int8_t rax = var_2A;
	r8 = rax & 0xffff;
	rcx = 0x0;
	do {
		rdx = (rbx + rcx * 0x2 + 0x385) & 0xff;
		rsi = (rbx + rcx * 0x2 + 0x386) & 0xff;
		rsi = rsi | rdx << 0x8;
		rdx = rax & 0xffff;
		rax = -rsi;
		if ((rdx & 0x1) == 0x0) {
			rax = rsi;
		}
		rax = rax + rdx;
		rcx = rcx + 0x1;
	} while (rcx != 0x3);

	if ((var_2C & 0xffff) == (rax & 0xffff)) {
		printf("Good!");
		klee_assert(0);
		printf("SmallTreeIntel82576: Valid EEPROM 0x%04x 0x%04x\n", var_2A, var_2C);
	} else {
		printf("Bad");
		// printf("SmallTreeIntel82576 %s: Invalid EEPROM 0x%04x 0x%04x 0x%04x 0x%04x\n", rsi, * (int16_t * )(rbx + 0xd74) & 0xffff, * (int16_t * )(rbx + 0xd70) & 0xffff, r8, r9);
	}
}

