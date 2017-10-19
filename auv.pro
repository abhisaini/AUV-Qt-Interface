TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    welcome.qml \
    tab2.qml \
    sensor_name.qml \
    sensor_topics.qml \
    sensor_stats.qml \
    monitor.qml \
    nodes.qml
