#!/bin/bash
clang -fsanitize=thread -g main.c -o main
llvm-objdump -dS main > main.s
