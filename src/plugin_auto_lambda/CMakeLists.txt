get_filename_component(package_name ${CMAKE_CURRENT_LIST_DIR} NAME)

set(SOURCES
    plugin_auto_lambda.cpp
    plugin_auto_lambda.h
)
#set(FORMS
#    plugin_auto_lambda.ui
#    )
#qt5_wrap_ui(MANUAL_GENERATED_FORM_UIS ${FORMS})
#set(RESOURCES resources/res_${package_name}.qrc )



add_library(${package_name} SHARED
            ${SOURCES}
#            ${MANUAL_GENERATED_FORM_UIS}
#            ${RESOURCES}
            )
target_link_libraries(${package_name} PUBLIC
            Qt5::Core
            Qt5::Gui
            Qt5::Widgets
            Qt5::Sql
            Qt5::PrintSupport
            Qt5::Svg
            )

install(TARGETS ${package_name} DESTINATION
            ${CMAKE_INSTALL_LIBDIR}/otus_main_point COMPONENT
            ${COMPONENT_PLUGINS})



set_target_properties(otus_main_point PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    )




