#include <fstream>
#include <iostream>
#include <iomanip>
#include <stdexcept>
#include <list>
#include <string.h>
#include <stdio.h>

#if !defined (WIN32)
#include <unistd.h>
#else
#include <io.h>
#define _unlink unlink
#endif

#include <beaengine/BeaEngine.h>

#include "unittest/util/table_reader.hpp"
#include "unittest/regression/dasm_sexp.hpp"
#include "unittest/regression/dasm_result.hpp"
#include "unittest/util/Timer.h"
#include "unittest/regression/zip_archive.hpp"
#include "unittest/regression/cmd_line.hpp"
#include "unittest/regression/temp_path.hpp"


static bool file_exists (const std::string& path)
{
  FILE* f = fopen (path.c_str (), "r");
  if (f)
    {
      fclose (f);
      return true;
    }
  return false;
}
// ------------------------------------------------------------

static bool copy_file (const std::string& src, const std::string& dst)
{
  FILE* fi = fopen (src.c_str (), "rb");
  FILE* fo = fopen (dst.c_str (), "wb");
  const unsigned int BUFSZ = 1024*1024;

  char   *buf;
  size_t amount;
  size_t written;
  bool   result;

  buf = new char[BUFSZ];

  result = true;
  if  ((fi == NULL) || (fo == NULL) )
    {
      result = false;
      if (fi != NULL) fclose(fi);
      if (fo != NULL) fclose(fo);
    }
  
  if (result)
    {
      do
	{
	  amount = fread( buf, sizeof(char), BUFSZ, fi );
	  if (amount)
	    {
	      written = fwrite( buf, sizeof(char), amount, fo );
	      if (written != amount)
		{
		  result = false;
		}
	    }
	} // when amount read is < BUFSZ, copy is done
      while ((result) && (amount == BUFSZ));
      fclose(fi);
      fclose(fo);
    }
  delete [] buf;
  return(result);
}

// ------------------------------------------------------------

static
void do_dasm_test (const std::string& table_file, dasm_result_c& result)
{

  table_reader_c reader (table_file.c_str ());
  char place [sizeof(DISASM)];

  for (size_t i=0; i<reader.items (); i++)
    {
      const table_item_c& ti = reader.at (i);

      memset (place, 0, sizeof(DISASM));
      DISASM* dasm = new (place) DISASM;
      dasm->Archi = ti.arch ();
      dasm->EIP = (UIntPtr) ti.bytes ();
      Timer timer;
      timer.start ();
      int len = Disasm (dasm);
      timer.stop ();
      double e = timer.getElapsedTimeInMicroSec ();
      result.add (dasm, ti, len, e);
    }
}

// ===================================================================

void show_zip_content (const char* zipfile)
{
  zip_iarchive_c zip (zipfile);
  int k = 0;
  std::cout << "# | NAME     | COMMENT" << std::endl;
  for (zip_iarchive_c::iterator_t i = zip.begin (); i != zip.end (); i++, k++)
    {
      std::cout << k << " | " << i->name () << "       | " << i->comment () << std::endl;
    }
}
// ----------------------------------------------------------
static
void do_dry_run (const std::string& table_file)
{
  std::cout << "Loading table from " << table_file << std::endl;
  dasm_result_c result ("dry run", "");
  do_dasm_test (table_file, result);
  std::cout << "Total time:" << result.total_time () << " msec" << std::endl
	    << "Avg time: " << result.avg_time () << " msec" << std::endl;
}
// ----------------------------------------------------------
static
void do_run_test (const std::string& table_file, const std::string& result_file,
		  const std::string& name,       const std::string& comment)
{
  std::cout << "Loading table from " << table_file << std::endl;
  dasm_result_c dasm_results (name.c_str (), comment.c_str ());
  std::cout << "Running test" << std::endl;
  do_dasm_test (table_file, dasm_results);

  std::string temp = get_temp_path ();
#if !defined (WIN32)
  temp += "/";
#else
  temp += "\\";
#endif
  temp += name;
  std::ofstream ofs;
  ofs.open (temp.c_str ());
  std::cout << "Saving temporary file " << temp << std::endl;
  dasm_to_sexp (ofs, dasm_results);
  ofs.close ();
  std::cout << "Updating ZIP database" << std::endl;
  zip_mode_t zip_mode = eAPPEND;

  std::string tmp_zip;

  if (!file_exists (result_file))
    {
      std::cout << "Database " << result_file << " is missing -- creating" << std::endl;
      zip_mode = eCREATE;
    }
  else
    {
      std::cout << "Database " << result_file << " exists -- updating" << std::endl;
      tmp_zip = temp + ".ZZZ";
      std::cout << "Storing copy of the old Database" << std::endl;
      copy_file (result_file, tmp_zip);
    }
  try
    {
      zip_oarchive_c zip (result_file.c_str (), zip_mode);
      zip.put (temp, comment);
    }
  catch (std::exception& e)
    {
      std::cerr << "Error in ZIP module: " << e.what () << std::endl;
      unlink (result_file.c_str ());
      if (!tmp_zip.empty ())
	{
	  copy_file (tmp_zip, result_file);
	}
    }
  std::cout << "Removing temporary file" << temp << std::endl;
  unlink (temp.c_str ());
  
}
// ----------------------------------------------------------
int main (int argc, char* argv [])
{
  try
    {
      cmd_line_c cl (argc, argv);
      if (cl.dry_run ())
	{
	  do_dry_run (cl.table_file ());
	  return 0;
	}
      if (cl.run_test ())
	{
	  do_run_test (cl.table_file (), cl.result_file (),
		       cl.name ()      , cl.comment ());
	  return 0;
	}
      if (cl.inspect_mode ())
	{
	  show_zip_content (cl.file_to_inspect ().c_str ());
	}
    }
  catch (std::exception& e)
    {
      std::cerr <<"Error: " << e.what () << std::endl;
      return 1;
    }
  return 0;
}
