#!/bin/bash
clang -fsanitize=thread -g main.c -o main
llvm-objdump -d main > main.s
clang -fsanitize=thread -O2 -g main.c -o main-O2
llvm-objdump -d main-O2 > main-O2.s
clang -g -O2 main.c -o main-tsano-O2
llvm-objdump -d main-tsano-O2 > main-tsano-O2.s
clang -g main.c -o main-tsano
llvm-objdump -d main-tsano > main-tsano.s

