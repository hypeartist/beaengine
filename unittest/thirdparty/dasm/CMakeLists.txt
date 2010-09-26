project (nasm)
cmake_minimum_required(VERSION 2.8)
set (CMAKE_BUILD_TYPE Debug)

set (dasm_src
nasmlib.c
ndisasm.c
disasm.c
insnsd.c 
insnsb.c 
insnsn.c
ver.c
sync.c
insnsd.c
insnsn.c
regs.c
regdis.c
)

set (dasm_hdr
insnsi.h  nasmlib.h  regdis.h  regs.h  sync.h disasm.h nasm.h
compiler.h opflags.h insns.h tables.h tokens.h version.h
) 

include_directories (.)

add_executable (dasm ${dasm_src} ${dasm_hdr})
