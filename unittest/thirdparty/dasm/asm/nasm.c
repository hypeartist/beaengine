/* ----------------------------------------------------------------------- *
 *
 *   Copyright 1996-2010 The NASM Authors - All Rights Reserved
 *   See the file AUTHORS included with the NASM distribution for
 *   the specific copyright holders.
 *
 *   Redistribution and use in source and binary forms, with or without
 *   modification, are permitted provided that the following
 *   conditions are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *
 *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * ----------------------------------------------------------------------- */

/*
 * The Netwide Assembler main program module
 */

#include "compiler.h"

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <inttypes.h>
#include <limits.h>
#include <time.h>

#include "nasm.h"
#include "nasmlib.h"


void dummy(char *label, int32_t segment, int64_t offset,
		  char *special, bool is_norm, bool isextrn)
{

}


extern void parser_global_info(struct location * locp);


#define PRN_PREFIX(X) fprintf (f, "</prefix value=\"%s\">\n", #X); break

void print_prefixes (FILE* f, struct insn* insn)
{
  int i=0;

  fprintf (f, "<prefixes>\n");
  
  for (i=0; i<MAXPREFIX; i++)
    {
      switch (insn->prefixes [i])
	{
	case P_A16: PRN_PREFIX (P_A16);
	case P_A32: PRN_PREFIX (P_A32);
	case P_A64: PRN_PREFIX (P_A64);
	case P_ASP: PRN_PREFIX (P_ASP);
	case P_LOCK: PRN_PREFIX (P_LOCK);
	case P_O16: PRN_PREFIX (P_O16);
	case P_O32: PRN_PREFIX (P_O32);
	case P_O64: PRN_PREFIX (P_O64);
	case P_OSP: PRN_PREFIX (P_OSP);
	case P_REP: PRN_PREFIX (P_REP);
	case P_REPE: PRN_PREFIX (P_REPE);
	case P_REPNE: PRN_PREFIX (P_REPNE);
	case P_REPNZ: PRN_PREFIX (P_REPNZ);
	case P_REPZ: PRN_PREFIX (P_REPZ);
	case P_TIMES: PRN_PREFIX (P_TIMES);
	case P_WAIT: PRN_PREFIX (P_WAIT);
	}
    }
  fprintf (f, "</prefixes>\n");
}

#define PRN_OPCODE(X)  fprintf (f, "</opcode value=\"%s\">\n", #X); break

void print_opcode (FILE* f, struct insn* insn)
{
  switch (insn->opcode)
    {
      #include "my_opc.h"
    }
}
#define PRN_CCODE(X)  fprintf (f, "</condition value=\"%s\">\n", #X); break
void print_ccode (FILE* f, struct insn* insn)
{
  switch (insn->condition)
    {
      #include "my_ccode.h"
    default: PRN_CCODE(UNDEFINED);
    }
}

#define PRN_OPTYPE(X) if ((p->type & X) == X) fprintf (f, "<type value=\"%s\"/>\n", #X);

#define PRN_REG(X) fprintf (f, "<%s value=\"%s\"/>\n", name, #X); break

void print_reg (FILE* f, char* name, enum reg_enum r)
{
  switch (r)
    {
      #include "my_regs.h"
    }
}

#define PRN_EAL(X) if (ea & X == X) fprintf (f, "<ea value=\"%s\"/>\n", #X)

void print_eal (FILE* f, int ea)
{
  fprintf (f , "<eaflags>\n");
  PRN_EAL(EAF_BYTEOFFS);
  PRN_EAL(EAF_WORDOFFS);
  PRN_EAL(EAF_TIMESTWO);
  PRN_EAL(EAF_TIMESTWO);
  PRN_EAL(EAF_REL);
  PRN_EAL(EAF_ABS);
  PRN_EAL(EAF_FSGS);
  fprintf (f , "</eaflags>\n");
}

void print_operand (FILE* f, struct insn* insn, int opidx)
{
  struct operand* p = insn->oprs + opidx;
  fprintf (f, "<operand index=\"%d\">\n", opidx);
  fprintf (f, "<types>\n");
  PRN_OPTYPE (REGISTER);
  PRN_OPTYPE (IMMEDIATE);
  PRN_OPTYPE (MEMORY);
  PRN_OPTYPE (REGMEM);  /* for r/m, ie EA, operands */
  fprintf (f, "</types>\n");
  fprintf (f, "</disp_size value=\"%d\">\n", p->disp_size);
  print_reg (f, "base_reg", p->basereg);
  print_reg (f, "index_reg", p->indexreg);
  fprintf (f, "<scale value=\"%d\"/>\n", p->scale);
  fprintf (f, "<scale hintbase=\"%d\"/>\n", p->hintbase);
  fprintf (f, "<segment value=\"%d\"/>\n", p->segment);
  fprintf (f, "<imm value=\"%lld\"/>\n", p->offset);
  fprintf (f, "<wrt value=\"%d\"/>\n", p->wrt);
  print_eal (f, p->eaflags);
  fprintf (f, "<opflags value=\"%d\"/>\n", p->opflags);
  fprintf (f, "</operand>\n");
}

void print_operands (FILE* f, struct insn* insn)
{
  int i=0;
  fprintf (f, "<operands count=\"%d\">\n", insn->operands);
  fprintf (f, "<address_size value=\"%d\"/>\n", insn->addr_size);
  for (i=0; i<insn->operands; i++)
    {
      print_operand (f, insn, i);
    }
  fprintf (f, "</operands>\n");
}

#define PRN_EXTOP(X) if (x->type == X) fprintf (f, "<extop_type value=\"%s\"/>\n", #X)

void print_eop (FILE* f, struct extop* x, int idx)
{
  fprintf (f, "<eop index = \"%d\">\n", idx);
  fprintf (f, "<stringval value=\"%s\"/>\n", x->stringval);
  fprintf (f, "<offset value=\"%lld\"/>\n", x->offset);
  fprintf (f, "<segment value=\"%d\"/>\n", x->segment);
  fprintf (f, "<wrt value=\"%d\"/>\n", x->wrt);
  PRN_EXTOP(EOT_NOTHING);
  PRN_EXTOP(EOT_DB_STRING);
  PRN_EXTOP(EOT_DB_STRING_FREE);
  PRN_EXTOP(EOT_DB_NUMBER);
  fprintf (f, "<eop>\n");
}

void print_eops (FILE* f, struct insn* insn)
{
  struct extop* x;
  int idx  = 0;
  fprintf (f, "<ext_operands>\n");
  x = insn->eops;
  while (x)
    {
      print_eop (f, x, idx++);
      x = x->next;
    }
  fprintf (f, "</ext_operands>\n");
}

#define PRN_FLD(X) fprintf (f, "<%s value=\"%d\"/>\n", #X, insn->X)

void debug_instruction (FILE* f, struct insn* insn, char* orig)
{
	int i=0;
	fprintf (f, "<instruction>\n");
	fprintf (f, "<assembly>%s</assembly>\n", orig);
	print_prefixes (f, insn);
	print_opcode (f, insn);
	print_ccode (f, insn);
	print_operands (f, insn);
	print_eops (f, insn);
	PRN_FLD (eops_float);
	PRN_FLD (times);
	PRN_FLD (forw_ref);
	PRN_FLD (rex);
	PRN_FLD (drexdst);
	PRN_FLD (vex_cm);
	PRN_FLD (vex_wlp);
	fprintf (f, "</instruction>\n");
}


void do_parse (char* line, FILE* f)
{
  int pass1 = 0;
  struct insn instruction;
  struct location loc;
  loc.known = 1;
  loc.segment = 0xFF;
  loc.offset = 0xAA;
  parser_global_info (&loc);
  parse_line(pass1, line, &instruction, dummy);
  debug_instruction (f, &instruction, line);
}

int main_parse (int argc, char* argv [])
{
  do_parse (argv [1], stdout);
  return 0;
}


int main (int argc, char* argv [])
{
  tolower_init ();
  //return main_nasm (argc, argv);
  return main_parse (argc, argv);
}


int pass0 = 0, passn;
bool tasm_compatible_mode = false;
int64_t global_offset_changed = 0;
int in_abs_seg = 0;
int optimizing = 0;

int32_t abs_seg = 1;
int32_t abs_offset = 1;

int globalrel = 1;           /* default to relative addressing? */
int maxbits = 256;             /* max bits supported by output */
struct ofmt *ofmt = 0;
