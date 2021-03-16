include(bson.pri)

msvc {
    PRE_TARGETDEPS += $$MONGOC_BIN/bson.lib
} else {
    PRE_TARGETDEPS += $$MONGOC_BIN/libbson.a
}

LIBS += -lbson