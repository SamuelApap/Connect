TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)


DISTFILES += \
project.properties \
    controls/CustomTextBox.qml\
    views/main.qml\
    views/MainForm.qml\
    scripts/rest-service.js\
    images/connect.png\
