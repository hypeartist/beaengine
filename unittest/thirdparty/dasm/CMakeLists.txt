set (dasm_src
nasmlib.c
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
prn_ins.c
)

set (dasm_hdr
insnsi.h  nasmlib.h  regdis.h  regs.h  sync.h disasm.h nasm.h
compiler.h opflags.h insns.h tables.h tokens.h version.h prn_ins.h
) 

add_library (micro_dasm STATIC ${dasm_src} ${dasm_hdr})

add_executable (ndisasm ndisasm.c)
target_link_libraries (ndisasm micro_dasm)

if (BEA_COMPILER STREQUAL gnu)
set_target_properties (micro_dasm PROPERTIES COMPILE_FLAGS "-w")
set_target_properties (ndisasm PROPERTIES COMPILE_FLAGS "-w")
endif ()
