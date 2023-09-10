cmake_minimum_required(VERSION 3.13)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_INSTALL_PREFIX           /usr/local)
set(CPACK_PACKAGING_INSTALL_PREFIX /usr/local)

message(" * CMAKE_INSTALL_FULL_DATAROOTDIR         -- ${CMAKE_INSTALL_FULL_DATAROOTDIR}")
message(" * CMAKE_INSTALL_FULL_BINDIR              -- ${CMAKE_INSTALL_FULL_BINDIR}")
message(" * CMAKE_INSTALL_FULL_LIBDIR              -- ${CMAKE_INSTALL_FULL_LIBDIR}")
message(" * CMAKE_INSTALL_PREFIX                   -- ${CMAKE_INSTALL_PREFIX}")
message(" * CPACK_PACKAGING_INSTALL_PREFIX         -- ${CPACK_PACKAGING_INSTALL_PREFIX}")




set(PROJECT_NAME "otus_main_point")
set(PATCH_VERSION "68" CACHE INTERNAL "Patch version")
set(PROJECT_VERSION 0.0.${PATCH_VERSION})
set(PROJECT_VERSION_PATCH ${PATCH_VERSION})
project(${PROJECT_NAME} VERSION ${PROJECT_VERSION} LANGUAGES CXX)


find_package(Boost COMPONENTS unit_test_framework REQUIRED)
find_package(Qt5 REQUIRED COMPONENTS
                    Core # Creating target Qt5::Core
                    Gui
                    Widgets
                    PrintSupport
                    Xml
                    Sql
                    Concurrent
                    )

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON) # error if version <
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -O0")


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)


#set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_BUILD_TYPE "Debug")






set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_VERBATIM_VARIABLES ON)

set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_VERSION_MAJOR "${PROJECT_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${PROJECT_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION_PATCH "${PROJECT_VERSION_PATCH}")
set(CPACK_PACKAGE_DESCRIPTION "Configure test_ci_cd and launch")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Maintainer <mm@example.com>")

set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "${CMAKE_CURRENT_SOURCE_DIR}/Debian/postinst")

set(CPACK_DEBIAN_PACKAGE_DEPENDS libc6 libstdc++6 libgcc-s1 libgtest-dev libgmock-dev libtbb-dev libgl1-mesa-dev libqt5widgets5 libqt5svg5)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)




configure_file(${CMAKE_CURRENT_SOURCE_DIR}/version/version.h.in
               ${CMAKE_CURRENT_SOURCE_DIR}/libs/common/version.h)

set(COMPONENT_GEN ${PROJECT_NAME})
set(COMPONENT_PLUGINS plugins)


add_subdirectory(libs)
add_subdirectory(src)





install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)

set(CPACK_GENERATOR DEB)



include(CPack)



enable_testing()


add_test(NAME test_main_boost COMMAND test_main_boost)
add_test(NAME test_main_google COMMAND test_main_google)
