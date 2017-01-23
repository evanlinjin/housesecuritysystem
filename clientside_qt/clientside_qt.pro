QT += qml quick network core quickcontrols2 svg

CONFIG += c++11

HEADERS += ../c-core/qt/pubnub_qt.h \
    messagereceiver.h \
    keys.h \
    newusermanager.h \
    sessionmanager.h \
    keyreceiver.h

SOURCES += main.cpp ../c-core/qt/pubnub_qt.cpp ../c-core/core/pubnub_ccore.c ../c-core/core/pubnub_assert_std.c ../c-core/core/pubnub_json_parse.c ../c-core/core/pubnub_helper.c \
    messagereceiver.cpp \
    newusermanager.cpp \
    sessionmanager.cpp \
    keyreceiver.cpp

RESOURCES += qml.qrc

INCLUDEPATH += ../c-core/core ../c-core/qt
DEPENDPATH += ../c-core/core ../c-core/qt


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    qtquickcontrols2.conf
