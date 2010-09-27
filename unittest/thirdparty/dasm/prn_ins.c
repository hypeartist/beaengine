#include "unittest/thirdparty/dasm/prn_ins.h"

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
      #include "unittest/thirdparty/dasm/my_opc.h"
    }
}
#define PRN_CCODE(X)  fprintf (f, "</condition value=\"%s\">\n", #X); break
void print_ccode (FILE* f, struct insn* insn)
{
  switch (insn->condition)
    {
      #include "unittest/thirdparty/dasm/my_ccode.h"
    default: PRN_CCODE(UNDEFINED);
    }
}

#define PRN_OPTYPE(X) if ((p->type & X) == X) fprintf (f, "<type value=\"%s\"/>\n", #X);

#define PRN_REG(X) fprintf (f, "<%s value=\"%s\"/>\n", name, #X); break

void print_reg (FILE* f, char* name, enum reg_enum r)
{
  switch (r)
    {
      #include "unittest/thirdparty/dasm/my_regs.h"
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
if (x->type == EOT_NOTHING)
{
	return;
}
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

void print_ins (FILE* f, struct insn* insn, char* orig, uint8_t *data,
                       int datalen)
{
	int i=0;
	fprintf (f, "<instruction>\n");
	fprintf (f, "<assembly>%s</assembly>\n", orig);
	fprintf (f, "<opcode>\n");
	i = 0;
	while (datalen > 0) {
        fprintf(f, "<byte value=\"%02X\" index=\"%d\"/>\n", *data++, i++);
        datalen--;
    }
	i = 0;
	fprintf (f, "</opcode>\n");
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

