#!/usr/bin/env python3
# -*- coding:utf-8 -*

from pwn import *
from sys import argv
from time import sleep


context.terminal = ['tmux', 'sp', '-h']
context.log_level = "debug"

elf_name = "./chall"
#libc = ELF("./libc.so.6")
elf = ELF(elf_name)
context.binary = elf_name
context.binary.checksec()

if len(argv) >= 2 and argv[1] == "r":
    p = remote("example.com", 4444)
elif len(argv) >= 2 and argv[1] == "d":
	cmd = """
		b main
		c
	"""
	p = gdb.debug(elf_name,cmd)
else:
    p = process(elf_name)

def conv(x):
    if type(x) is bytes:
        return x
    else:
        return x.encode()

def sl(x):
    p.sendline(conv(x))

def se(x):
    p.send(conv(x))

def sla(delim, data):
    p.sendlineafter(conv(delim), conv(data))

def sa(delim, data):
    p.sendafter(conv(delim), conv(data))


payload = b""
payload +=b""

sla("", payload)

p.interactive()
