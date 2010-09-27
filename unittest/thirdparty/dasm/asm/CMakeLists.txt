project (asm)

set (src
nasm.c  parser.c regs.c nasmlib.c pptok.c tokhash.c
stdscan.c hashtbl.c quote.c crc64.c eval.c labels.c
regflags.c exprlib.c float.c strfunc.c
) 

set (hdr
my_ccode.h  my_opc.h  my_regs.h  nasm.h  parser.h
compiler.h insnsi.h regs.h nasmlib.h preproc.h directiv.h opflags.h
pptok.h insns.h tokens.h stdscan.h eval.h tables.h hashtbl.h quote.h
labels.h float.h 
)

add_executable (asm ${src} ${hdr})
