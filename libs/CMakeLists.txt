set(PACKAGES
    common    
    )

foreach(lib_package ${PACKAGES})
  add_subdirectory(${lib_package})
endforeach()
