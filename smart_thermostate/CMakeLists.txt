cmake_minimum_required(VERSION 3.16)

project(smart_thermostate VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appsmart_thermostate
    main.cpp
)

qt_add_qml_module(appsmart_thermostate
    URI smart_thermostate
    VERSION 1.0
    QML_FILES Main.qml
    UI/HomeScreen/HomeScreen.qml
    UI/HomeScreen/TempertureControlSlider.qml

)

set_target_properties(appsmart_thermostate PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appsmart_thermostate
    PRIVATE Qt6::Quick
)

install(TARGETS appsmart_thermostate
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
