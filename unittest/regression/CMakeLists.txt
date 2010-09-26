set (target regression)

set (src 
  main.cpp 
  dasm_sexp.cpp 
  dasm_result.cpp 
  temp_path.cpp 
  zip_archive.cpp
  cmd_line.cpp)

set (hdr 
  dasm_sexp.hpp 
  dasm_result.hpp 
  temp_path.hpp 
  zip_archive.hpp
  cmd_line.hpp)

add_executable (${target} ${src} ${hdr})

target_link_libraries (${target} unittest_util microzip z ${BEA_TARGET})

if (NOT optBUILD_DLL)
  set_target_properties (${target} PROPERTIES COMPILE_FLAGS "-DBEA_ENGINE_STATIC") 
endif ()

