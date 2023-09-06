    set(SOURCES
    common.cpp
    common.hpp
)


link_directories(
    ${CMAKE_CURRENT_SOURCE_DIR})




add_library(common common.cpp)



set_target_properties(common PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    )
#target_link_libraries(test_cmake PRIVATE Qt5::Core)
#target_link_libraries(test_cmake PRIVATE Qt5::Widgets)
#target_link_libraries(test_cmake PRIVATE Qt5::Pdf)
#target_link_libraries(test_cmake PRIVATE Qt5::PrintSupport)


#target_include_directories(test_cmake PUBLIC "/home/astrauser/Devel/2_libs/libharu-2.4.3/include")
#target_link_directories(test_cmake PUBLIC "/home/astrauser/Devel/2_libs/libharu-2.4.3/build/src/")
#target_link_libraries(test_cmake PUBLIC hpdf)





