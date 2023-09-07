set(SOURCES
    main.cpp
    mainwindow.cpp
)
set(FORMS
    mainwindow.ui
    )
qt5_wrap_ui(MANUAL_GENERATED_FORM_UIS ${FORMS})
#set(RESOURCES resources/res_app.qrc )


include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${Qt5Sql_INCLUDE_DIRS})


link_directories(
    ${CMAKE_CURRENT_SOURCE_DIR})


add_executable(otus_main_point
    ${SOURCES}
    ${MANUAL_GENERATED_FORM_UIS}
#    ${RESOURCES}
    )




target_link_libraries(otus_main_point PUBLIC
            Qt5::Core
            Qt5::Gui
            Qt5::Widgets
            Qt5::Sql
            Qt5::PrintSupport
            common
            )



install(TARGETS otus_main_point DESTINATION
    ${CMAKE_INSTALL_BINDIR} COMPONENT
    ${COMPONENT_GEN})



set_target_properties(otus_main_point PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    WIN32_EXECUTABLE ON
    )


add_subdirectory(tests)


