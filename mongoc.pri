include(bson-depend.pri)

DEFINES += MONGOC_STATIC

MONGOC_SRC_PATH = $$MONGOC_ROOT_SRC_PATH/mongoc

INCLUDEPATH += $$MONGOC_SRC_PATH
