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
    nodes.qml \
    node_des1.qml \
    reconfig.qml \
    alpha.qml \
    remote.qml \
    build/Alpha3 \
    auv \
    down.png \
    logo .png \
    up.png \
    README.md \
    logo .png \
    Remote/remote_sway.qml \
    Remote/remote_vrward.qml \
    Remote/remote_forward.qml \
    logo .png \
    remote/remote_forward.qml \
    remote/remote_sway.qml \
    remote/remote_vrward.qml
