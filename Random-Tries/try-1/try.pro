TEMPLATE = app

QT += qml quick core quickwidgets widgets
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = /opt/ros/kinetic/bin

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    main.h
