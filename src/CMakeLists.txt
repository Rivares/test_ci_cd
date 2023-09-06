set(PACKAGES
    otus_main_point
    plugin_auto_lambda
    )

foreach(lib_package ${PACKAGES})
  add_subdirectory(${lib_package})
endforeach()
