include(bson.pri)

QT -= core gui

DESTDIR = $$MONGOC_BIN

TARGET = bson
TEMPLATE = lib
CONFIG += staticlib
CONFIG += warn_off

win32:DEFINES += _WINDOWS

msvc {
    QMAKE_CXXFLAGS_WARN_OFF -= -W0
    QMAKE_CXXFLAGS += -W3 \
        /wd4146 /wd4056 /wd4267 /wd4018 /wd4028 /wd4244
    DEFINES -= UNICODE _UNICODE
    DEFINES += _CRT_SECURE_NO_WARNINGS
    DEFINES += _SCL_SECURE_NO_WARNINGS
}

DEFINES += BSON_COMPILATION

HEADERS += \
    bson-config.h \
    bson-version.h \
    $$MONGOC_BSON_PATH/bson/b64_ntop.h \
    $$MONGOC_BSON_PATH/bson/b64_pton.h \
    $$MONGOC_BSON_PATH/bson/bcon.h \
    $$MONGOC_BSON_PATH/bson/bson-atomic.h \
    $$MONGOC_BSON_PATH/bson/bson-clock.h \
    $$MONGOC_BSON_PATH/bson/bson-compat.h \
    $$MONGOC_BSON_PATH/bson/bson-context-private.h \
    $$MONGOC_BSON_PATH/bson/bson-context.h \
    $$MONGOC_BSON_PATH/bson/bson-decimal128.h \
    $$MONGOC_BSON_PATH/bson/bson-endian.h \
    $$MONGOC_BSON_PATH/bson/bson-error.h \
    $$MONGOC_BSON_PATH/bson/bson-iso8601-private.h \
    $$MONGOC_BSON_PATH/bson/bson-iter.h \
    $$MONGOC_BSON_PATH/bson/bson-json.h \
    $$MONGOC_BSON_PATH/bson/bson-keys.h \
    $$MONGOC_BSON_PATH/bson/bson-macros.h \
    $$MONGOC_BSON_PATH/bson/bson-md5.h \
    $$MONGOC_BSON_PATH/bson/bson-memory.h \
    $$MONGOC_BSON_PATH/bson/bson-oid.h \
    $$MONGOC_BSON_PATH/bson/bson-private.h \
    $$MONGOC_BSON_PATH/bson/bson-reader.h \
    $$MONGOC_BSON_PATH/bson/bson-string.h \
    $$MONGOC_BSON_PATH/bson/bson-thread-private.h \
    $$MONGOC_BSON_PATH/bson/bson-timegm-private.h \
    $$MONGOC_BSON_PATH/bson/bson-types.h \
    $$MONGOC_BSON_PATH/bson/bson-utf8.h \
    $$MONGOC_BSON_PATH/bson/bson-value.h \
    $$MONGOC_BSON_PATH/bson/bson-version-functions.h \
    $$MONGOC_BSON_PATH/bson/bson-writer.h \
    $$MONGOC_BSON_PATH/bson/bson.h \
    $$MONGOC_BSON_PATH/jsonsl/jsonsl.h

msvc:HEADERS += \
    $$MONGOC_BSON_PATH/bson/bson-stdint-win32.h
else:HEADERS += \
    $$MONGOC_BSON_PATH/bson/bson-stdint.h

SOURCES += \
    $$MONGOC_BSON_PATH/bson/bcon.c \
    $$MONGOC_BSON_PATH/bson/bson-clock.c \
    $$MONGOC_BSON_PATH/bson/bson-context.c \
    $$MONGOC_BSON_PATH/bson/bson-decimal128.c \
    $$MONGOC_BSON_PATH/bson/bson-error.c \
    $$MONGOC_BSON_PATH/bson/bson-iso8601.c \
    $$MONGOC_BSON_PATH/bson/bson-iter.c \
    $$MONGOC_BSON_PATH/bson/bson-json.c \
    $$MONGOC_BSON_PATH/bson/bson-keys.c \
    $$MONGOC_BSON_PATH/bson/bson-md5.c \
    $$MONGOC_BSON_PATH/bson/bson-memory.c \
    $$MONGOC_BSON_PATH/bson/bson-oid.c \
    $$MONGOC_BSON_PATH/bson/bson-reader.c \
    $$MONGOC_BSON_PATH/bson/bson-string.c \
    $$MONGOC_BSON_PATH/bson/bson-timegm.c \
    $$MONGOC_BSON_PATH/bson/bson-utf8.c \
    $$MONGOC_BSON_PATH/bson/bson-value.c \
    $$MONGOC_BSON_PATH/bson/bson-version-functions.c \
    $$MONGOC_BSON_PATH/bson/bson-writer.c \
    $$MONGOC_BSON_PATH/bson/bson.c \
    $$MONGOC_BSON_PATH/jsonsl/jsonsl.c
