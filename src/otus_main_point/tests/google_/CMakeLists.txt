set(package_name "test_main_google")

set(SOURCES
    test_main_google_fmain.cpp
    test_main_google.cpp
    test_main_google.hpp
)


add_executable(${package_name} ${SOURCES})

set_target_properties(otus_main_point PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)


target_link_libraries(${package_name} PUBLIC
    gtest
    gmock
    pthread
    common
)

# install(TARGETS ${package_name} DESTINATION
#             ${CMAKE_INSTALL_LIBDIR}/otus_main_point COMPONENT
#             ${COMPONENT_PLUGINS})

