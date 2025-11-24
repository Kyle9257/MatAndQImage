QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
TEMPLATE = app

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

jason_Dir = $$PWD/thirdpart/nlohmann
opencv_Dir = $$PWD/thirdpart/opencv454
ffmpaeg_Dir = $$PWD/ffmpeg6

INCLUDEPATH += $$opencv_Dir/include/
INCLUDEPATH += $$ffmpaeg_Dir/include/
INCLUDEPATH += $$jason_Dir

LIBS += -L$$PWD/thirdPart/win_x64/ -lDbgHelp
LIBS += -L$$FFmpegPATH/lib -lavcodec    \
                           -lavdevice   \
                           -lavfilter   \
                           -lavformat   \
                           -lavutil     \
                           -lpostproc   \
                           -lswresample \
                           -lswscale

CONFIG(debug, debug|release){
                           TARGET = ImageConfigD
                           LIBS += -L$$opencv_Dir/lib        -lopencv_world454d
}
CONFIG(release, debug|release){
                           TARGET = ImageConfig
                           LIBS += -L$$opencv_Dir/lib        -lopencv_world454
}


SOURCES += \
    main.cpp \
    imageconfig.cpp

HEADERS += \
    ImageConfig.h

FORMS += \
    ImageConfig.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
