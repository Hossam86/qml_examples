# Description

Demonstrates various techniques for integrating C++ and QML.

Reference:
https://doc.qt.io/qt-6/qtqml-cppintegration-overview.html

## Defining QML Types from C++

When extending QML with C++ code, a C++ class can be registered with the QML type system to enable the class to be used as a data type within QML code. While the properties, methods and signals of any QObject-derived class are accessible from QML, as discussed in Exposing Attributes of C++ Types to QML, such a class cannot be used as a data type from QML until it is registered with the type system. Additionally registration can provide other features, such as allowing a class to be used as an instantiable QML object type from QML, or enabling a singleton instance of the class to be imported and used from QML.
