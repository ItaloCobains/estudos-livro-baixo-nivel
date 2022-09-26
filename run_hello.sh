#!/bin/bash
nasm -felf64 hello.asm -o hello.o
ld -o hello hello.o 
chmod u+x hello
