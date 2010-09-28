#include <stdexcept>
#include <iostream>
#include <string.h>
#include <stdlib.h>

extern "C" {
#define HAVE_SNPRINTF
#define HAVE_VSNPRINTF
#include "unittest/thirdparty/dasm/nasm.h"
#include "unittest/thirdparty/dasm/disasm.h"
#include "unittest/thirdparty/dasm/nasmlib.h"
#include "unittest/thirdparty/dasm/sync.h"

}

#include "unittest/util/table_reader.hpp"
#include "unittest/util/bytes_io.hpp"
#include "unittest/util/my_snprintf.h"

#if defined(REG8)
#undef REG8
#endif

#include <beaengine/BeaEngine.h>

#define cinfo std::cerr << "[INFO] "
#define cerror std::cerr << "[ERROR] "
#define cbea std::cout << "[BEA] "
#define cnasm std::cout << "[NASM] "

static void ndisasm_verror(int severity, const char *fmt, va_list va)
{
  vfprintf(stderr, fmt, va);

  if (severity & ERR_FATAL)
    exit(1);
}
// ==============================================================

void print_bea_test_efl (UInt8 f, const char* name)
{
  if (f == 0)
    {
      return;
    }
  cbea << "\t" << name << " : ";
  if ((f & TE_) == TE_)
    {
      std::cout << "Te";
    }
  if ((f & MO_) == MO_)
    {
      std::cout << "Mo";
    }
  if ((f & RE_) == RE_)
    {
      std::cout << "Re";
    }
  if ((f & SE_) == SE_)
    {
      std::cout << "Se";
    }
  if ((f & UN_) == UN_)
    {
      std::cout << "Un";
    }
  if ((f & PR_) == PR_)
    {
      std::cout << "Pr";
    }
  std::cout << std::endl;
}

void print_bea_efl (const EFLStruct& efl)
{
  cbea << "Instruction.Flags" << std::endl;

  print_bea_test_efl (efl.OF_, "OF");
  print_bea_test_efl (efl.SF_, "SF");
  print_bea_test_efl (efl.ZF_, "ZF");
  print_bea_test_efl (efl.AF_, "AF");
  print_bea_test_efl (efl.PF_, "PF");
  print_bea_test_efl (efl.CF_, "CF");
  print_bea_test_efl (efl.TF_, "TF");
  print_bea_test_efl (efl.IF_, "IF");
  print_bea_test_efl (efl.DF_, "DF");
  print_bea_test_efl (efl.NT_, "NT");
  print_bea_test_efl (efl.RF_, "RF");

}
// --------------------------------------------------------------
#define PRN_BEA_CATEGORY(X) if ((cat & X) == X) std::cout << #X << " "
void print_bea_category (Int32 cat)
{
  cbea << "Instruction.Category: ";
  PRN_BEA_CATEGORY (GENERAL_PURPOSE_INSTRUCTION);
  PRN_BEA_CATEGORY (FPU_INSTRUCTION);
  PRN_BEA_CATEGORY (MMX_INSTRUCTION);
  PRN_BEA_CATEGORY (SSE_INSTRUCTION);
  PRN_BEA_CATEGORY (SSE2_INSTRUCTION);
  PRN_BEA_CATEGORY (SSE3_INSTRUCTION);
  PRN_BEA_CATEGORY (SSSE3_INSTRUCTION);
  PRN_BEA_CATEGORY (SSE41_INSTRUCTION);
  PRN_BEA_CATEGORY (SSE42_INSTRUCTION);
  PRN_BEA_CATEGORY (SYSTEM_INSTRUCTION);
  PRN_BEA_CATEGORY (VM_INSTRUCTION);
  PRN_BEA_CATEGORY (UNDOCUMENTED_INSTRUCTION);
  PRN_BEA_CATEGORY (AMD_INSTRUCTION);
  PRN_BEA_CATEGORY (ILLEGAL_INSTRUCTION);
  PRN_BEA_CATEGORY (AES_INSTRUCTION);
  PRN_BEA_CATEGORY (CLMUL_INSTRUCTION);
  PRN_BEA_CATEGORY (DATA_TRANSFER);
  PRN_BEA_CATEGORY (ARITHMETIC_INSTRUCTION);
  PRN_BEA_CATEGORY (LOGICAL_INSTRUCTION);
  PRN_BEA_CATEGORY (SHIFT_ROTATE);
  PRN_BEA_CATEGORY (BIT_UInt8);
  PRN_BEA_CATEGORY (CONTROL_TRANSFER);
  PRN_BEA_CATEGORY (STRING_INSTRUCTION);
  PRN_BEA_CATEGORY (InOutINSTRUCTION);
  PRN_BEA_CATEGORY (ENTER_LEAVE_INSTRUCTION);
  PRN_BEA_CATEGORY (FLAG_CONTROL_INSTRUCTION);
  PRN_BEA_CATEGORY (SEGMENT_REGISTER);
  PRN_BEA_CATEGORY (MISCELLANEOUS_INSTRUCTION);
  PRN_BEA_CATEGORY (COMPARISON_INSTRUCTION);
  PRN_BEA_CATEGORY (LOGARITHMIC_INSTRUCTION);
  PRN_BEA_CATEGORY (TRIGONOMETRIC_INSTRUCTION);
  PRN_BEA_CATEGORY (UNSUPPORTED_INSTRUCTION);
  PRN_BEA_CATEGORY (LOAD_CONSTANTS);
  PRN_BEA_CATEGORY (FPUCONTROL);
  PRN_BEA_CATEGORY (STATE_MANAGEMENT);
  PRN_BEA_CATEGORY (CONVERSION_INSTRUCTION);
  PRN_BEA_CATEGORY (SHUFFLE_UNPACK);
  PRN_BEA_CATEGORY (PACKED_SINGLE_PRECISION);
  PRN_BEA_CATEGORY (SIMD128bits);
  PRN_BEA_CATEGORY (SIMD64bits);
  PRN_BEA_CATEGORY (CACHEABILITY_CONTROL);
  PRN_BEA_CATEGORY (FP_INTEGER_CONVERSION);
  PRN_BEA_CATEGORY (SPECIALIZED_128bits);
  PRN_BEA_CATEGORY (SIMD_FP_PACKED);
  PRN_BEA_CATEGORY (SIMD_FP_HORIZONTAL);
  PRN_BEA_CATEGORY (AGENT_SYNCHRONISATION);
  PRN_BEA_CATEGORY (PACKED_ALIGN_RIGHT);
  PRN_BEA_CATEGORY (PACKED_SIGN);
  PRN_BEA_CATEGORY (PACKED_BLENDING_INSTRUCTION);
  PRN_BEA_CATEGORY (PACKED_TEST);
  PRN_BEA_CATEGORY (PACKED_MINMAX);
  PRN_BEA_CATEGORY (HORIZONTAL_SEARCH);
  PRN_BEA_CATEGORY (PACKED_EQUALITY);
  PRN_BEA_CATEGORY (STREAMING_LOAD);
  PRN_BEA_CATEGORY (INSERTION_EXTRACTION);
  PRN_BEA_CATEGORY (DOT_PRODUCT);
  PRN_BEA_CATEGORY (SAD_INSTRUCTION);
  PRN_BEA_CATEGORY (ACCELERATOR_INSTRUCTION);
  PRN_BEA_CATEGORY (ROUND_INSTRUCTION);

  std::cout << std::endl;
}
// -------------------------------------------------------------
#define PRN_BEA_BRANCH(X) case X: std::cout << #X << std::endl; break;
void print_bea_branch (Int32 branch)
{
  cbea << "Instruction.BranchType: ";
  switch (branch)
    {
      PRN_BEA_BRANCH (JO);
      PRN_BEA_BRANCH (JC);
      PRN_BEA_BRANCH (JE);
      PRN_BEA_BRANCH (JA);
      PRN_BEA_BRANCH (JS);
      PRN_BEA_BRANCH (JP);
      PRN_BEA_BRANCH (JL);
      PRN_BEA_BRANCH (JG);
      PRN_BEA_BRANCH (JB);
      PRN_BEA_BRANCH (JECXZ);
      PRN_BEA_BRANCH (JmpType);
      PRN_BEA_BRANCH (CallType);
      PRN_BEA_BRANCH (RetType);
      PRN_BEA_BRANCH (JNO);
      PRN_BEA_BRANCH (JNC);
      PRN_BEA_BRANCH (JNE);
      PRN_BEA_BRANCH (JNA);
      PRN_BEA_BRANCH (JNS);
      PRN_BEA_BRANCH (JNP);
      PRN_BEA_BRANCH (JNL);
      PRN_BEA_BRANCH (JNG);
      PRN_BEA_BRANCH (JNB);
    };
}
// -------------------------------------------------------------
void print_bea (const DISASM* dasm)
{
  cbea << "mnemonics: " << dasm->CompleteInstr << std::endl;
  cbea << "--------- INSTRTYPE ---------" << std::endl;
  const INSTRTYPE& inst = dasm->Instruction;
  print_bea_category (inst.Category);
  if ( (inst.Category & CONTROL_TRANSFER) == CONTROL_TRANSFER)
    {
      print_bea_branch (inst.BranchType);
    }
  print_bea_efl (inst.Flags);
}
// ==============================================================
#define PRN_CCODE(X)  std::cout << #X << std::endl; break
void print_nasm (const insn& ins)
{
  if (ins.condition == C_none)
    {
      return;
    }
  cnasm << "insn.condition ";
  switch (ins.condition)
    {
      #include "unittest/thirdparty/dasm/my_ccode.h"
    default: PRN_CCODE(UNDEFINED);
    }
}
// --------------------------------------------------------------
bool do_inspect (const table_item_c& ti)
{
  unsigned char* q = ti.bytes ();
  int qlen = (int)ti.length ();
  char outbuf [128];
  int bits = ti.arch ();
  struct insn ins;
  int lendis = 0;
  int offset = 0;
  bool autosync = false;
  int format = 0; // INTEL

  cinfo << "Given: " << ti.mnemonics () 
	<< " arch " << bits
	<< std::endl;

  memset (outbuf, 0, sizeof (outbuf));
  lendis = disasm2 (q, 
		    outbuf, 
		    sizeof(outbuf), 
		    bits,
		    offset, 
		    autosync, 
		    format, 
		    &ins);

  
  char place [sizeof(DISASM)];
  memset (place, 0, sizeof(DISASM));
  DISASM* dasm = new (place) DISASM;
  dasm->Archi = ti.arch ();
  dasm->EIP = (UIntPtr) ti.bytes ();
  int len = Disasm (dasm);
  cinfo << "NASM len = " << lendis 
	<< " BEA len = " << len 
	<< " INSTRUCTION len = " << qlen
	<< std::endl;
  if (len - lendis + qlen != qlen)
    {
      cerror << "Parsed instruction length error" << std::endl;
      return false;
    }
  print_bea (dasm);
  std::cout << std::endl;

  print_nasm (ins);
  return true;
}
// -------------------------------------------------------------
int main (int argc, char* argv [])
{
  if (argc != 3)
    {
      std::cerr << "USAGE: " << argv [0] << " <table.dasm> [row]" 
		<< std::endl;
      return 1;
    }
  
  const char* fname = argv [1];
  const int index = atoi (argv [2]);

  try
    {
      tolower_init();
      nasm_set_verror(ndisasm_verror);
      nasm_init_malloc_error();
      
      init_sync();
  
      table_reader_c tbl (fname);
      const table_item_c& ti = tbl.at (index);

      cinfo << "Inspect row " << index << " from " << fname << std::endl;
      do_inspect (ti);
    }
  catch (std::exception& e)
    {
      std::cerr << "Exception raised: " << e.what () << std::endl;
      return 1;
    }
  return 0;
}
