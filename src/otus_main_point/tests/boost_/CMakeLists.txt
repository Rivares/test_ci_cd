set(package_name "test_main_boost")

set(SOURCES
    test_main_boost.cpp
    test_main_boost.hpp
)


add_executable(${package_name} ${SOURCES})

set_target_properties(otus_main_point PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    COMPILE_DEFINITIONS BOOST_TEST_DYN_LINK
    INCLUDE_DIRECTORIES ${Boost_INCLUDE_DIR}
)


target_link_libraries(${package_name}
    ${Boost_LIBRARIES}
    common
)

# install(TARGETS ${package_name} DESTINATION
#             ${CMAKE_INSTALL_LIBDIR}/otus_main_point COMPONENT
#             ${COMPONENT_PLUGINS})

