include(baseconfig.pri)

DEFINES += BSON_STATIC

MONGOC_BSON_PATH = $$MONGOC_ROOT_SRC_PATH/libbson/src

INCLUDEPATH += \    
    $$PWD/bson \
    $$MONGOC_BSON_PATH \
    $$MONGOC_BSON_PATH/../../common
