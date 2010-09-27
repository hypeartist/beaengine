#include "unittest/util/bytes_io.hpp"
#include "unittest/util/my_snprintf.h"

std::string print_bytes (unsigned char* code, 
			 size_t length,
			 bool use_hex_id)
{
  const char* fmt = use_hex_id ? "0x%02X" : "%02X";

  char bytes [6];
  std::string result;
  size_t i;
  for (i=0; i<length; i++)
    {
      unsigned int x = (code [i] & 0xFF);
      my_snprintf (bytes, 6, fmt, x);
      result = result + (const char*)bytes;
      if (i < length - 1)
	{
	  result = result + " ";
	}
    }
  return result;
}

std::string print_bytes_array (unsigned char* code, 
			       size_t length)
{
 const char* fmt = "%02X";

  char bytes [6];
  std::string result;
  size_t i;
  for (i=0; i<length; i++)
    {
      unsigned int x = (code [i] & 0xFF);
      my_snprintf (bytes, 6, fmt, x);
      result = result + (const char*)bytes;
    }
  return result;

}
