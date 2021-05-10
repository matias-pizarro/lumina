include("$${PWD}/../../OS-detect.pri")

TEMPLATE = app
#Don't need any Qt - just a simple C program
QT = 
CONFIG += console

TARGET = lumina-checkpass
target.path = $${L_BINDIR}

LIBS     += -lpam

SOURCES += main.c

perms.path = $${L_BINDIR}
perms.extra = "chmod 4555 $${L_BINDIR}/lumina-checkpass"

INSTALLS += target perms
