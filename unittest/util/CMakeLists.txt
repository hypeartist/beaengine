set (src
table_reader.cpp
Timer.cpp
)

set (hdr
table_reader.hpp
shared_ptr.hpp
Timer.h
)

add_library (unittest_util ${src} ${hdr})
