#include <stdexcept>
#include <iostream>
#include <string.h>
#include <stdlib.h>

#include <map>
#include <set>
#include <list>

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

static void ndisasm_verror(int severity, const char *fmt, va_list va)
{
  vfprintf(stderr, fmt, va);

  if (severity & ERR_FATAL)
    exit(1);
}

bool do_dasm (const table_item_c& ti, 
	      std::string& new_mnemonics, 
	      struct insn& ins,
	      int& bits,
	      int bits_mode)
{
  unsigned char* q = ti.bytes ();
  size_t qlen = ti.length ();
  char outbuf [128];
  
  if (bits_mode == 0)
    {
      bits = 16;
    }
  else
    {
      bits = bits_mode;
    }

  unsigned int lendis = 0;
  int offset = 0;
  bool autosync = false;
  int format = 0; // INTEL
  bool parsed = false;
  while (true)
    {
      memset (outbuf, 0, sizeof (outbuf));
      lendis = disasm2 (q, 
			outbuf, 
			sizeof(outbuf), 
			bits,
			offset, 
			autosync, 
			format, 
			&ins);
      if (lendis == qlen)
	{
	  parsed = true;
	  break;
	}
      if (bits_mode != 0)
	{
	  char ebuff [1024];
	  my_snprintf (ebuff, 1024, "Inconsistent bits mode for line %d",
		       ti.line_number ());
	  throw std::runtime_error (ebuff);
	}
      if (bits == 64)
	{
	  parsed = false;
	  break;
	}
      bits = bits * 2;
    }
  if (parsed)
    {
      new_mnemonics = outbuf;
    }
  return parsed;
}
// -------------------------------------------------------------
struct opc_s
{
  struct insn* instruction;
  std::string  opcode;
  std::string  bytes;
  int bits;
};

typedef std::set < std::pair <std::string,int> > opc_set_t;
typedef std::map <opcode, std::list <opc_s*>* > opc_dict_t;

// -------------------------------------------------------------
int main (int argc, char* argv [])
{
  if (argc > 3 || argc == 1)
    {
      std::cerr << "USAGE: " << argv [0] << " <table.dasm> [bits]" 
		<< std::endl;
      return 1;
    }
  
  const char* fname = argv [1];
  int bits_mode = 0;
  if (argc == 3)
    {
      bits_mode = atoi (argv [2]);
      switch (bits_mode)
	{
	case 16:
	case 32:
	case 64:
	  break;
	default:
	  std::cerr << "Unknown bits mode " << argv [2] << std::endl;
	  return 1;
	}
    }
  
  try
    {
      tolower_init();
      nasm_set_verror(ndisasm_verror);
      nasm_init_malloc_error();
      
      init_sync();
  
      table_reader_c tbl (fname);
      const size_t items = tbl.items ();
      opc_set_t opc_set;
      opc_dict_t opc_dict;
      size_t max_len = 0;
      for (size_t i=0; i<items; i++)
	{
	  const table_item_c& ti = tbl.at (i);
	  std::string opcode;
	  int bits;
	  struct insn* instruction = new insn;
	  if (do_dasm (ti, opcode, *instruction, bits, bits_mode))
	    {
	      const std::string bytes = 
		print_bytes_array (ti.bytes (), ti.length ());
	      opc_s* opc = new opc_s;
	      opc->bytes = bytes;
	      opc->instruction = instruction;
	      opc->opcode = opcode;
	      opc->bits = bits;
	      opc_set_t::value_type k (bytes, bits);
	      if (opc_set.find (k) == opc_set.end ())
		{
		  opc_set.insert (k);
		  
		  opc_dict_t::iterator itr = 
		    opc_dict.find (instruction->opcode);
		  std::list <opc_s*>* data = 0;
		  if (opc->bytes.length () > max_len)
		    {
		      max_len = opc->bytes.length ();
		    }
		  if (itr == opc_dict.end ())
		    {
		      data = new std::list <opc_s*>;
		      opc_dict_t::value_type v (instruction->opcode, data);
		      opc_dict.insert (v);
		    }
		  else
		    {
		      data = itr->second;
		    }
		  data->push_back (opc);
		}
	    }
	  else
	    {
	      delete instruction;
	    }
	}
      
      for (opc_dict_t::iterator i = opc_dict.begin ();
	   i != opc_dict.end (); i++)
	{
	  std::list <opc_s*>* opc_list = i->second;
	  for (std::list <opc_s*>::iterator j = opc_list->begin ();
	       j != opc_list->end (); j++)
	    {
	      opc_s* opc = *j;
	      size_t len = opc->bytes.length ();
	      std::string padd (max_len + 1 - len, ' ');
	      std::cout << opc->bytes << padd
			<< "(" << opc->bits << ")" 
			<< opc->opcode << std::endl;
	    }
	    
	}
    }
  catch (std::exception& e)
    {
      std::cerr << "Exception raised: " << e.what () << std::endl;
      return 1;
    }
  return 0;
}
