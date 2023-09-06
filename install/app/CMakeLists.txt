set(SOURCES
    main.cpp
    mainwindow.cpp
    mainwindow.ui
)


link_directories(
    ${CMAKE_CURRENT_SOURCE_DIR})


add_executable(test_cmake
    ${SOURCES}
    )


target_link_libraries(test_cmake PRIVATE Qt5::Core)
target_link_libraries(test_cmake PRIVATE Qt5::Widgets)
target_link_libraries(test_cmake PRIVATE Qt5::Pdf)
target_link_libraries(test_cmake PRIVATE Qt5::PrintSupport)


#target_include_directories(test_cmake PUBLIC "/home/astrauser/Devel/2_libs/libharu-2.4.3/include")
#target_link_directories(test_cmake PUBLIC "/home/astrauser/Devel/2_libs/libharu-2.4.3/build/src/")
#target_link_libraries(test_cmake PUBLIC hpdf)







set_target_properties(test_cmake PROPERTIES
    WIN32_EXECUTABLE ON
    )
