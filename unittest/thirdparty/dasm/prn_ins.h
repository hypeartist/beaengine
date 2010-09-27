#ifndef __PRN_INS_H__
#define __PRN_INS_H__

#include <stdio.h>

#include "unittest/thirdparty/dasm/nasm.h"

extern void print_ins (FILE* f, struct insn* insn, char* orig, uint8_t *data,
                       int datalen);


#endif

