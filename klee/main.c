e1000_read_nvm(var_40, rax & 0xffff, 0x1, & var_2A);
e1000_read_nvm(var_40, r12 & 0xffff, 0x1, & var_2C);
rax = var_2A;
r8 = rax & 0xffff;
rcx = 0x0;
do {
  rdx = * (int8_t * )(rbx + rcx * 0x2 + 0x385) & 0xff;
  rsi = * (int8_t * )(rbx + rcx * 0x2 + 0x386) & 0xff;
  rsi = rsi | rdx << 0x8;
  rdx = rax & 0xffff;
  rax = -rsi;
  if ((rdx & 0x1) == 0x0) {
    rax = rsi;
  }
  rax = rax + rdx;
  rcx = rcx + 0x1;
} while (rcx != 0x3);
rsi = var_48;
if ((var_2C & 0xffff) == (rax & 0xffff)) {
  r15 = ( * 0x2f460)(rbx, r15, r14); * (int32_t * ) r14 = * (int32_t * ) r14 + 0x2000;
} else {
  r15 = 0x0;
  _IOLog("SmallTreeIntel82576 %s: Invalid EEPROM 0x%04x 0x%04x 0x%04x 0x%04x\n", rsi, * (int16_t * )(rbx + 0xd74) & 0xffff, * (int16_t * )(rbx + 0xd70) & 0xffff, r8, r9);
}
