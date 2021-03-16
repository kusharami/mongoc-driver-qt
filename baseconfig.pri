MONGOC_BIN = $$PWD/bin

macx:MONGOC_BIN = $$MONGOC_BIN-macx
linux:MONGOC_BIN = $$MONGOC_BIN-linux
win32 {
    MONGOC_BIN = $$MONGOC_BIN-win32
    msvc:MONGOC_BIN = $$MONGOC_BIN-msvc$$QMAKE_MSC_VER
}
emscripten:MONGOC_BIN = $$MONGOC_BIN-emscripten
clang:MONGOC_BIN = $$MONGOC_BIN-clang
else::gcc:MONGOC_BIN = $$MONGOC_BIN-gcc

MONGOC_BIN = $$MONGOC_BIN-$$QT_ARCH

CONFIG(debug, debug|release) {
    MONGOC_BIN = $$MONGOC_BIN/debug
}

LIBS += -L$$MONGOC_BIN

MONGOC_ROOT_SRC_PATH = $$PWD/mongo-c-driver/src

INCLUDEPATH += $$PWD

!msvc:INCLUDEPATH += $$MONGOC_ROOT_SRC_PATH/libbson/build/cmake/bson