include(baseconfig.pri)

DEFINES += BSON_STATIC

MONGOC_BSON_PATH = $$MONGOC_ROOT_SRC_PATH/libbson/src
mingw:clang:DEFINES += __USE_MINGW_ANSI_STDIO=1

INCLUDEPATH += \    
    $$PWD/bson \
    $$MONGOC_BSON_PATH \
    $$MONGOC_BSON_PATH/../../common
