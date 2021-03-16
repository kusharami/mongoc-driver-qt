include(baseconfig.pri)

DEFINES += BSON_STATIC

MONGOC_BSON_PATH = $$MONGOC_ROOT_SRC_PATH/libbson/src

INCLUDEPATH += \
    $$MONGOC_BSON_PATH \
    $$MONGOC_BSON_PATH/bson
