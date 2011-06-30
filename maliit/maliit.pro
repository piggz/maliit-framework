include(../config.pri)

VERSION = 0.1.0
TEMPLATE = lib
TARGET = $${MALIIT_LIB}

INCLUDEPATH += . .. ../src

QT = core gui

OBJECTS_DIR = .obj
MOC_DIR = .moc

HEADERSINSTALL = \
    minputmethodstate.h \
    mpreeditinjectionevent.h \

FRAMEWORKHEADERSINSTALL = \
    namespace.h

HEADERS += \
    $$HEADERSINSTALL \
    $$FRAMEWORKHEADERSINSTALL \
    minputmethodstate_p.h \
    mpreeditinjectionevent_p.h \

SOURCES += \
    minputmethodstate.cpp \
    mpreeditinjectionevent.cpp \

target.path += $$M_IM_INSTALL_LIBS

headers.path += $$M_IM_INSTALL_HEADERS/$$MALIIT_HEADER
headers.files += $$HEADERSINSTALL

frameworkheaders.path += $$M_IM_INSTALL_HEADERS/$$MALIIT_FRAMEWORK_HEADER/maliit
frameworkheaders.files += $$FRAMEWORKHEADERSINSTALL

outputFiles(maliit-$${MALIIT_INTERFACE_VERSION}.pc, maliit-framework-$${MALIIT_FRAMEWORK_INTERFACE_VERSION}.pc)

install_pkgconfig.path = $${M_IM_INSTALL_LIBS}/pkgconfig
install_pkgconfig.files = $$OUT_PWD/maliit-$${MALIIT_INTERFACE_VERSION}.pc $$OUT_PWD/maliit-framework-$${MALIIT_FRAMEWORK_INTERFACE_VERSION}.pc

INSTALLS += \
    target \
    headers \
    frameworkheaders \
    install_pkgconfig \
