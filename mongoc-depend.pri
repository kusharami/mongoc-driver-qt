include(mongoc.pri)

msvc {
    PRE_TARGETDEPS += $$MONGOC_BIN/mongoc.lib
} else {
    PRE_TARGETDEPS += $$MONGOC_BIN/libmongoc.a
}

LIBS += -lmongoc

win32:LIBS += -lws2_32 -lsecur32 -lcrypt32 -lDnsapi -lBcrypt
macx:LIBS += -framework Security -lsasl2
