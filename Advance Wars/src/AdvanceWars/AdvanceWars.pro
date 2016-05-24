TEMPLATE = app

QT += qml quick widgets
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    img.qrc \
    sounds.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

#DISTFILES += \
#    img/background.png

HEADERS += \
    building.h \
    cell.h \
    grid.h \
    unit.h

DISTFILES +=
