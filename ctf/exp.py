#!/usr/bin/env python3
# -*- coding:utf-8 -*

from pwn import *
from sys import argv
from time import sleep


if __name__ == '__main__':
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


    payload = b""
    payload +=b""

    p.recvuntil("")
    sleep(0.5)
    p.send(payload)

    p.interactive()