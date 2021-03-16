include(mongoc.pri)

QT -= gui

DESTDIR = $$MONGOC_BIN

TARGET = mongoc
TEMPLATE = lib
CONFIG += staticlib
CONFIG += warn_off

win32 {
    QT += core
    DEFINES += _WINDOWS
    INCLUDEPATH += $$[QT_INSTALL_HEADERS]/QtZlib
} else {
    QT -= core
    LIBS += -lz
}

msvc {
    QMAKE_CXXFLAGS_WARN_OFF -= -W0
    QMAKE_CXXFLAGS += -W3 \
        /wd4146 /wd4056 /wd4267 /wd4018 /wd4028 /wd4244
    DEFINES -= UNICODE _UNICODE
    DEFINES += _CRT_SECURE_NO_WARNINGS
    DEFINES += _SCL_SECURE_NO_WARNINGS
}

DEFINES += MONGOC_COMPILATION

macx:DEFINES += MONGOC_OS_MAC
linux:DEFINES += MONGOC_OS_LINUX

HEADERS += \
    mongoc-config.h \
    mongoc-version.h \
    $$MONGOC_SRC_PATH/mongoc-apm-private.h \
    $$MONGOC_SRC_PATH/mongoc-apm.h \
    $$MONGOC_SRC_PATH/mongoc-array-private.h \
    $$MONGOC_SRC_PATH/mongoc-async-cmd-private.h \
    $$MONGOC_SRC_PATH/mongoc-async-private.h \
    $$MONGOC_SRC_PATH/mongoc-b64-private.h \
    $$MONGOC_SRC_PATH/mongoc-buffer-private.h \
    $$MONGOC_SRC_PATH/mongoc-bulk-operation-private.h \
    $$MONGOC_SRC_PATH/mongoc-bulk-operation.h \
    $$MONGOC_SRC_PATH/mongoc-client-pool-private.h \
    $$MONGOC_SRC_PATH/mongoc-client-pool.h \
    $$MONGOC_SRC_PATH/mongoc-client-private.h \
    $$MONGOC_SRC_PATH/mongoc-client.h \
    $$MONGOC_SRC_PATH/mongoc-cluster-cyrus-private.h \
    $$MONGOC_SRC_PATH/mongoc-cluster-private.h \
    $$MONGOC_SRC_PATH/mongoc-cluster-sasl-private.h \
    $$MONGOC_SRC_PATH/mongoc-cluster-sspi-private.h \
    $$MONGOC_SRC_PATH/mongoc-cmd-private.h \
    $$MONGOC_SRC_PATH/mongoc-collection-private.h \
    $$MONGOC_SRC_PATH/mongoc-collection.h \
    $$MONGOC_SRC_PATH/mongoc-compression-private.h \
    $$MONGOC_SRC_PATH/mongoc-counters-private.h \
    $$MONGOC_SRC_PATH/mongoc-crypto-cng-private.h \
    $$MONGOC_SRC_PATH/mongoc-crypto-common-crypto-private.h \
    $$MONGOC_SRC_PATH/mongoc-crypto-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc-crypto-private.h \
    $$MONGOC_SRC_PATH/mongoc-cursor-array-private.h \
    $$MONGOC_SRC_PATH/mongoc-cursor-cursorid-private.h \
    $$MONGOC_SRC_PATH/mongoc-cursor-private.h \
    $$MONGOC_SRC_PATH/mongoc-cursor-transform-private.h \
    $$MONGOC_SRC_PATH/mongoc-cursor.h \
    $$MONGOC_SRC_PATH/mongoc-cyrus-private.h \
    $$MONGOC_SRC_PATH/mongoc-database-private.h \
    $$MONGOC_SRC_PATH/mongoc-database.h \
    $$MONGOC_SRC_PATH/mongoc-errno-private.h \
    $$MONGOC_SRC_PATH/mongoc-error.h \
    $$MONGOC_SRC_PATH/mongoc-find-and-modify-private.h \
    $$MONGOC_SRC_PATH/mongoc-find-and-modify.h \
    $$MONGOC_SRC_PATH/mongoc-flags.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-list-private.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-list.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-page-private.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-page.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-private.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs-private.h \
    $$MONGOC_SRC_PATH/mongoc-gridfs.h \
    $$MONGOC_SRC_PATH/mongoc-handshake-compiler-private.h \
    $$MONGOC_SRC_PATH/mongoc-handshake-os-private.h \
    $$MONGOC_SRC_PATH/mongoc-handshake-private.h \
    $$MONGOC_SRC_PATH/mongoc-handshake.h \
    $$MONGOC_SRC_PATH/mongoc-host-list-private.h \
    $$MONGOC_SRC_PATH/mongoc-host-list.h \
    $$MONGOC_SRC_PATH/mongoc-index.h \
    $$MONGOC_SRC_PATH/mongoc-init.h \
    $$MONGOC_SRC_PATH/mongoc-iovec.h \
    $$MONGOC_SRC_PATH/mongoc-libressl-private.h \
    $$MONGOC_SRC_PATH/mongoc-linux-distro-scanner-private.h \
    $$MONGOC_SRC_PATH/mongoc-list-private.h \
    $$MONGOC_SRC_PATH/mongoc-log-private.h \
    $$MONGOC_SRC_PATH/mongoc-log.h \
    $$MONGOC_SRC_PATH/mongoc-macros.h \
    $$MONGOC_SRC_PATH/mongoc-matcher-op-private.h \
    $$MONGOC_SRC_PATH/mongoc-matcher-private.h \
    $$MONGOC_SRC_PATH/mongoc-matcher.h \
    $$MONGOC_SRC_PATH/mongoc-memcmp-private.h \
    $$MONGOC_SRC_PATH/mongoc-opcode.h \
    $$MONGOC_SRC_PATH/mongoc-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc-queue-private.h \
    $$MONGOC_SRC_PATH/mongoc-rand-private.h \
    $$MONGOC_SRC_PATH/mongoc-rand.h \
    $$MONGOC_SRC_PATH/mongoc-read-concern-private.h \
    $$MONGOC_SRC_PATH/mongoc-read-concern.h \
    $$MONGOC_SRC_PATH/mongoc-read-prefs-private.h \
    $$MONGOC_SRC_PATH/mongoc-read-prefs.h \
    $$MONGOC_SRC_PATH/mongoc-rpc-private.h \
    $$MONGOC_SRC_PATH/mongoc-sasl-private.h \
    $$MONGOC_SRC_PATH/mongoc-scram-private.h \
    $$MONGOC_SRC_PATH/mongoc-secure-channel-private.h \
    $$MONGOC_SRC_PATH/mongoc-secure-transport-private.h \
    $$MONGOC_SRC_PATH/mongoc-server-description-private.h \
    $$MONGOC_SRC_PATH/mongoc-server-description.h \
    $$MONGOC_SRC_PATH/mongoc-server-stream-private.h \
    $$MONGOC_SRC_PATH/mongoc-set-private.h \
    $$MONGOC_SRC_PATH/mongoc-socket-private.h \
    $$MONGOC_SRC_PATH/mongoc-socket.h \
    $$MONGOC_SRC_PATH/mongoc-ssl-private.h \
    $$MONGOC_SRC_PATH/mongoc-ssl.h \
    $$MONGOC_SRC_PATH/mongoc-sspi-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-buffered.h \
    $$MONGOC_SRC_PATH/mongoc-stream-file.h \
    $$MONGOC_SRC_PATH/mongoc-stream-gridfs.h \
    $$MONGOC_SRC_PATH/mongoc-stream-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-socket.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-libressl-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-libressl.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-openssl-bio-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-openssl.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-channel-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-channel.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-transport-private.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-transport.h \
    $$MONGOC_SRC_PATH/mongoc-stream-tls.h \
    $$MONGOC_SRC_PATH/mongoc-stream.h \
    $$MONGOC_SRC_PATH/mongoc-thread-private.h \
    $$MONGOC_SRC_PATH/mongoc-topology-description-apm-private.h \
    $$MONGOC_SRC_PATH/mongoc-topology-description-private.h \
    $$MONGOC_SRC_PATH/mongoc-topology-description.h \
    $$MONGOC_SRC_PATH/mongoc-topology-private.h \
    $$MONGOC_SRC_PATH/mongoc-topology-scanner-private.h \
    $$MONGOC_SRC_PATH/mongoc-trace-private.h \
    $$MONGOC_SRC_PATH/mongoc-uri-private.h \
    $$MONGOC_SRC_PATH/mongoc-uri.h \
    $$MONGOC_SRC_PATH/mongoc-util-private.h \
    $$MONGOC_SRC_PATH/mongoc-version-functions.h \
    $$MONGOC_SRC_PATH/mongoc-write-command-private.h \
    $$MONGOC_SRC_PATH/mongoc-write-concern-private.h \
    $$MONGOC_SRC_PATH/mongoc-write-concern.h \
    $$MONGOC_SRC_PATH/mongoc.h \
    $$MONGOC_SRC_PATH/utlist.h \
    $$MONGOC_SRC_PATH/mongoc-counters.defs \
    $$MONGOC_SRC_PATH/op-compressed.def \
    $$MONGOC_SRC_PATH/op-delete.def \
    $$MONGOC_SRC_PATH/op-get-more.def \
    $$MONGOC_SRC_PATH/op-header.def \
    $$MONGOC_SRC_PATH/op-insert.def \
    $$MONGOC_SRC_PATH/op-kill-cursors.def \
    $$MONGOC_SRC_PATH/op-msg.def \
    $$MONGOC_SRC_PATH/op-query.def \
    $$MONGOC_SRC_PATH/op-reply-header.def \
    $$MONGOC_SRC_PATH/op-reply.def \
    $$MONGOC_SRC_PATH/op-update.def


SOURCES += \
    $$MONGOC_SRC_PATH/mongoc-apm.c \
    $$MONGOC_SRC_PATH/mongoc-array.c \
    $$MONGOC_SRC_PATH/mongoc-async-cmd.c \
    $$MONGOC_SRC_PATH/mongoc-async.c \
    $$MONGOC_SRC_PATH/mongoc-b64.c \
    $$MONGOC_SRC_PATH/mongoc-buffer.c \
    $$MONGOC_SRC_PATH/mongoc-bulk-operation.c \
    $$MONGOC_SRC_PATH/mongoc-client-pool.c \
    $$MONGOC_SRC_PATH/mongoc-client.c \
    $$MONGOC_SRC_PATH/mongoc-cluster-cyrus.c \
    $$MONGOC_SRC_PATH/mongoc-cluster-sasl.c \
    $$MONGOC_SRC_PATH/mongoc-cluster.c \
    $$MONGOC_SRC_PATH/mongoc-cmd.c \
    $$MONGOC_SRC_PATH/mongoc-collection.c \
    $$MONGOC_SRC_PATH/mongoc-compression.c \
    $$MONGOC_SRC_PATH/mongoc-counters.c \
    $$MONGOC_SRC_PATH/mongoc-crypto-common-crypto.c \
    $$MONGOC_SRC_PATH/mongoc-crypto.c \
    $$MONGOC_SRC_PATH/mongoc-cursor-array.c \
    $$MONGOC_SRC_PATH/mongoc-cursor-cursorid.c \
    $$MONGOC_SRC_PATH/mongoc-cursor-transform.c \
    $$MONGOC_SRC_PATH/mongoc-cursor.c \
    $$MONGOC_SRC_PATH/mongoc-cyrus.c \
    $$MONGOC_SRC_PATH/mongoc-database.c \
    $$MONGOC_SRC_PATH/mongoc-find-and-modify.c \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-list.c \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file-page.c \
    $$MONGOC_SRC_PATH/mongoc-gridfs-file.c \
    $$MONGOC_SRC_PATH/mongoc-gridfs.c \
    $$MONGOC_SRC_PATH/mongoc-handshake.c \
    $$MONGOC_SRC_PATH/mongoc-host-list.c \
    $$MONGOC_SRC_PATH/mongoc-index.c \
    $$MONGOC_SRC_PATH/mongoc-init.c \
    $$MONGOC_SRC_PATH/mongoc-list.c \
    $$MONGOC_SRC_PATH/mongoc-log.c \
    $$MONGOC_SRC_PATH/mongoc-matcher-op.c \
    $$MONGOC_SRC_PATH/mongoc-matcher.c \
    $$MONGOC_SRC_PATH/mongoc-memcmp.c \
    $$MONGOC_SRC_PATH/mongoc-queue.c \
    $$MONGOC_SRC_PATH/mongoc-rand-common-crypto.c \
    $$MONGOC_SRC_PATH/mongoc-read-concern.c \
    $$MONGOC_SRC_PATH/mongoc-read-prefs.c \
    $$MONGOC_SRC_PATH/mongoc-rpc.c \
    $$MONGOC_SRC_PATH/mongoc-sasl.c \
    $$MONGOC_SRC_PATH/mongoc-scram.c \
    $$MONGOC_SRC_PATH/mongoc-secure-transport.c \
    $$MONGOC_SRC_PATH/mongoc-server-description.c \
    $$MONGOC_SRC_PATH/mongoc-server-stream.c \
    $$MONGOC_SRC_PATH/mongoc-set.c \
    $$MONGOC_SRC_PATH/mongoc-socket.c \
    $$MONGOC_SRC_PATH/mongoc-ssl.c \
    $$MONGOC_SRC_PATH/mongoc-stream-buffered.c \
    $$MONGOC_SRC_PATH/mongoc-stream-file.c \
    $$MONGOC_SRC_PATH/mongoc-stream-gridfs.c \
    $$MONGOC_SRC_PATH/mongoc-stream-socket.c \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-transport.c \
    $$MONGOC_SRC_PATH/mongoc-stream-tls.c \
    $$MONGOC_SRC_PATH/mongoc-stream.c \
    $$MONGOC_SRC_PATH/mongoc-topology-description-apm.c \
    $$MONGOC_SRC_PATH/mongoc-topology-description.c \
    $$MONGOC_SRC_PATH/mongoc-topology-scanner.c \
    $$MONGOC_SRC_PATH/mongoc-topology.c \
    $$MONGOC_SRC_PATH/mongoc-uri.c \
    $$MONGOC_SRC_PATH/mongoc-util.c \
    $$MONGOC_SRC_PATH/mongoc-version-functions.c \
    $$MONGOC_SRC_PATH/mongoc-write-command.c \
    $$MONGOC_SRC_PATH/mongoc-write-concern.c

win32:SOURCES += \
    $$MONGOC_SRC_PATH/mongoc-secure-channel.c \
    $$MONGOC_SRC_PATH/mongoc-stream-tls-secure-channel.c \
    $$MONGOC_SRC_PATH/mongoc-cluster-sspi.c \
    $$MONGOC_SRC_PATH/mongoc-sspi.c \
    $$MONGOC_SRC_PATH/mongoc-crypto-cng.c \
    $$MONGOC_SRC_PATH/mongoc-rand-cng.c
