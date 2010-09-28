add_executable (filter_table main.cpp)

target_link_libraries (filter_table unittest_util micro_dasm ${BEA_TARGET})

if (NOT optBUILD_DLL)
  set_target_properties (filter_table PROPERTIES COMPILE_FLAGS "-DBEA_ENGINE_STATIC") 
endif ()
