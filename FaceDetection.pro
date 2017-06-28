QT += core
QT -= gui

TARGET = FaceDetection
CONFIG += console c++11
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp #CascadeFaceDetection.cpp \


#HEADERS += CascadeFaceDetection.h

unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += opencv
LIBS += -lcaffe \
        -lglog \
        -lprotobuf \
        -lpthread \
        -lboost_system \
        -lboost_filesystem \
        -lvisionworks
