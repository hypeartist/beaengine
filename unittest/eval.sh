#!/bin/sh
echo "BITS 32" >> t_32.asm
cat table_32.dasm | sed -e 's/^.*)//g' >> t_32.asm
nasm -fbin -ot_32.bin t_32.asm
