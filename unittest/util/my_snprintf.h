#ifndef __MY_SNPRINTF_H__
#define __MY_SNPRINTF_H__

#include <stdio.h>
#if !defined(BEA_LACKS_SNPRINTF)
  #define my_snprintf snprintf 
#else
#if defined (_MSC_VER)
  #define my_snprintf _snprintf 
#else
#error "Define MY_SNPRINTF"
#endif
#endif

#if defined(_MSC_VER)
#define I64_FMT "I64"
#elif defined(__APPLE__)
#define I64_FMT "q"
#else
#define I64_FMT "ll"
#endif


#endif
