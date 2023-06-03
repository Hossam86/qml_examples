cmake_minimum_required(VERSION 3.16)

project(tesla_dashboard VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(apptesla_dashboard
    main.cpp
)

qt_add_qml_module(apptesla_dashboard
    URI tesla_dashboard
    VERSION 1.0
    QML_FILES Main.qml
    ui/ButtomBar/ButtomBar.qml
    ui/RightScreen/RightScreen.qml
    ui/LeftScreen/LeftScreen.qml


)

set_target_properties(apptesla_dashboard PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptesla_dashboard
    PRIVATE Qt6::Quick
)

install(TARGETS apptesla_dashboard
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
