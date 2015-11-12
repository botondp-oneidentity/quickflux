INCLUDEPATH += $$PWD

DISTFILES += \
    $$PWD/README.md

HEADERS += \
    $$PWD/qfappdispatcher.h \
    $$PWD/qfapplistener.h \
    $$PWD/qfappscript.h \
    $$PWD/priv/qfappscriptrunnable.h \
    $$PWD/priv/qfappscriptdispatcherwrapper.h \
    $$PWD/priv/qflistener.h

SOURCES += \
    $$PWD/qfapplistener.cpp \
    $$PWD/qfappdispatcher.cpp \
    $$PWD/qfappscript.cpp \
    $$PWD/qfappscriptrunnable.cpp \
    $$PWD/qfappscriptdispatcherwrapper.cpp \
    $$PWD/qflistener.cpp \
    $$PWD/qfqmltypes.cpp
