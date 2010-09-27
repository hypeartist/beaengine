#include <iostream>
#include <string>
#include <stdio.h>
#include <list>
#include "unittest/regression/dasm_sexp.hpp"
#include "unittest/util/sexp_writer.hpp"
#include "unittest/util/my_snprintf.h"
#include "unittest/util/bytes_io.hpp"

// ---------------------------------------------------------------------
static item_list_c* print_memory_info (const MEMORYTYPE* m)
{
  item_list_c* elt = new item_list_c ("Memory");

  elt->append (elem ("BaseRegister" , m->BaseRegister))
    ->append  (elem ("IndexRegister", m->IndexRegister))
    ->append  (elem ("Scale"        , m->Scale))
    ->append  (elem ("Displacement" , m->Displacement));
  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* print_arg_type (const ARGTYPE* a, const char* name)
{
  item_list_c* elt = new item_list_c (name);
  elt->append ( elem ( "ArgMnemonic", a->ArgMnemonic))
    ->append  ( elem ( "ArgType"    , a->ArgType))
    ->append  ( elem ( "ArgSize"    , a->ArgSize))
    ->append  ( elem ( "AccessMode" , a->AccessMode))
    ->append  ( elem ( "SegmentReg" , a->SegmentReg))
    ->append  ( print_memory_info (&a->Memory));
  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* print_efl_struct (const EFLStruct* e)
{
  item_list_c* elt = new item_list_c ("efl");
  elt->append ( elem ( "OF_", e->OF_))
    ->append ( elem ( "SF_", e->SF_))
    ->append ( elem ( "ZF_", e->ZF_))
    ->append ( elem ( "AF_", e->AF_))
    ->append ( elem ( "PF_", e->PF_))
    ->append ( elem ( "CF_", e->CF_))
    ->append ( elem ( "TF_", e->TF_))
    ->append ( elem ( "IF_", e->IF_))
    ->append ( elem ( "DF_", e->DF_))
    ->append ( elem ( "NT_", e->NT_))
    ->append ( elem ( "RF_", e->RF_))
    ->append ( elem ( "alignment", e->alignment));
  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* print_instr_type (const INSTRTYPE* i)
{
  item_list_c* elt = new item_list_c ("Instruction");

  elt->append ( elem ( "Category"            , i->Category))
    ->append  ( elem ( "Opcode"              , i->Opcode))
    ->append  ( elem ( "Mnemonic"            , i->Mnemonic))
    ->append  ( elem ( "BranchType"          , i->BranchType))
    ->append  ( elem ( "AddrValue"           , i->AddrValue))
    ->append  ( elem ( "Immediat"            , i->Immediat))
    ->append  ( elem ( "ImplicitModifiedRegs", i->ImplicitModifiedRegs))
    ->append  ( print_efl_struct (&i->Flags)); 
  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* print_rex (const REX_Struct* e)
{
  item_list_c* elt = new item_list_c ("REX");
  elt->append ( elem ( "W_", e->W_))
    ->append ( elem ( "R_", e->R_))
    ->append ( elem ( "X_", e->X_))
    ->append ( elem ( "B_", e->B_))
    ->append ( elem ( "state", e->state));

  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* print_prefix_info (const PREFIXINFO* e)
{
  item_list_c* elt = new item_list_c ("Prefix");
  elt
    ->append ( elem ( "Number"        , e->Number))
    ->append ( elem ( "NbUndefined"   , e->NbUndefined))
    ->append ( elem ( "LockPrefix"    , e->LockPrefix))
    ->append ( elem ( "OperandSize"   , e->OperandSize))
    ->append ( elem ( "AddressSize"   , e->AddressSize))
    ->append ( elem ( "RepnePrefix"   , e->RepnePrefix))
    ->append ( elem ( "RepPrefix"     , e->RepPrefix))
    ->append ( elem ( "FSPrefix"      , e->FSPrefix))
    ->append ( elem ( "SSPrefix"      , e->SSPrefix))
    ->append ( elem ( "GSPrefix"      , e->GSPrefix))
    ->append ( elem ( "ESPrefix"      , e->ESPrefix))
    ->append ( elem ( "CSPrefix"      , e->CSPrefix))
    ->append ( elem ( "DSPrefix"      , e->DSPrefix))
    ->append ( elem ( "BranchTaken"   , e->BranchTaken))
    ->append ( elem ( "BranchNotTaken", e->BranchNotTaken))
    ->append (print_rex (&e->REX));
  return elt;
}
// ---------------------------------------------------------------------
static item_list_c* dump_dasm (const DISASM& dasm, int dasm_len, const table_item_c& expected)
{
  item_list_c* elt = new item_list_c ("asm");
  elt->append (elem ("expected", expected.mnemonics ()))
    ->append (elem ("opcode", print_bytes (expected.bytes (), expected.length ())));
     
  if (dasm_len == UNKNOWN_OPCODE)
    {
      elt->append ( elem ( "status", "failed"));
      return elt;
    }
  if ((size_t) dasm_len != expected.length ())
    {
      std::string v (dasm.CompleteInstr);
      elt ->append ( elem ( "status", "failed"))
	->append ( elem ( "mnemonics", v));
      return elt;
    }
  elt ->append ( elem ( "options", dasm.Options))
    ->append (print_instr_type  (&dasm.Instruction))
    ->append (print_arg_type    (&dasm.Argument1, "Argument1"))
    ->append (print_arg_type    (&dasm.Argument2, "Argument2"))
    ->append (print_arg_type    (&dasm.Argument3, "Argument3"))
    ->append (print_prefix_info (&dasm.Prefix));
  return elt;
}
// ---------------------------------------------------------------------
static void dasm_to_sexp_helper (std::ostream& os, const item_c* item, unsigned int level)
{
  std::string ident;
  for (unsigned int i = 0; i<level; i++)
    {
      ident = ident + '\t';
    }
  if (item->is_list ())
    {
      os << OS_STR (ident) << "('" << OS_STR (item->name ()) << std::endl;
      const item_list_c* lst = (const item_list_c*) item;
      for (item_list_c::iterator_t itr = lst->begin (); itr != lst->end (); itr++)
	{
	  const item_c* itm = *itr;
	  dasm_to_sexp_helper (os, itm, level + 1);
	}
      os << OS_STR (ident) << ")" << std::endl;
    }
  else
    {
      const name_value_c* v = (const name_value_c*) item;
      os << OS_STR (ident) << "('" << OS_STR (v->name ()) 
	 << " \"" << OS_STR (v->value ()) << "\")" << std::endl;
    }
}
// ---------------------------------------------------------------------
void dasm_to_sexp (std::ostream& os, const dasm_result_c& rl)
{
  item_list_c* elt = new item_list_c ("disasm");
  item_list_c* md  = new item_list_c ("metadata");
  md->append  (elem ("name"      , rl.name ()))
    ->append  (elem ("comment"   , rl.comment ()))
    ->append  (elem ("entries"   , rl.size ()))
    ->append  (elem ("total-time", rl.total_time ()))
    ->append  (elem ("avg-time"  , rl.avg_time ()));
  elt->append (md);
  for (dasm_result_c::iterator_t i = rl.begin (); i!=rl.end (); i++)
    {
      elt->append (dump_dasm (*i->m_dasm, i->m_dasm_len, i->m_input));
    }
  dasm_to_sexp_helper (os, elt, 0);
  delete elt;
}
