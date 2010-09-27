set (src
table_reader.cpp
Timer.cpp
sexp_writer.cpp
bytes_io.cpp
)

set (hdr
table_reader.hpp
shared_ptr.hpp
Timer.h
sexp_writer.hpp
my_snprintf.h
bytes_io.hpp
)

add_library (unittest_util ${src} ${hdr})
