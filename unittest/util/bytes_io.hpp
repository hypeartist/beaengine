#ifndef __BYTES_IO_HPP__
#define __BYTES_IO_HPP__

#include <string>

std::string print_bytes (unsigned char* code, 
			 size_t length, 
			 bool use_hex_id = true);

#endif
