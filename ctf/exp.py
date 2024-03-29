#!/usr/bin/env python3
# -*- coding:utf-8 -*

from pwn import *
from sys import argv
from time import sleep


context.terminal = ['tmux', 'sp', '-h']
context.log_level = "debug"

chall = "./chall"
#libc = ELF("./libc.so.6")
elf = ELF(chall)
context.binary = chall
context.binary.checksec()

if len(argv) >= 2 and argv[1] == "r":
    p = remote("example.com", 4444)
elif len(argv) >= 2 and argv[1] == "d":
	cmd = """
		b main
		c
	"""
	p = gdb.debug(chall,cmd)
else:
    p = process(chall)

def conv(x):
    if type(x) is bytes:
        return x
    else:
        return x.encode()

def sl(x):
    p.sendline(conv(x))

def sla(delim, data):
    p.sendlineafter(conv(delim), conv(data))


payload = b""
payload +=b""

p.recvuntil("")
sleep(0.5)
p.send(payload)

p.interactive()
