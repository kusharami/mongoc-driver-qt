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

HEADERS += \
    mongoc/mongoc-config.h \
    mongoc/mongoc-version.h \
    $$MONGOC_SRC_PATH/mongoc/op-compressed.def \
    $$MONGOC_SRC_PATH/mongoc/op-delete.def \
    $$MONGOC_SRC_PATH/mongoc/op-get-more.def \
    $$MONGOC_SRC_PATH/mongoc/op-header.def \
    $$MONGOC_SRC_PATH/mongoc/op-insert.def \
    $$MONGOC_SRC_PATH/mongoc/op-kill-cursors.def \
    $$MONGOC_SRC_PATH/mongoc/op-msg.def \
    $$MONGOC_SRC_PATH/mongoc/op-query.def \
    $$MONGOC_SRC_PATH/mongoc/op-reply.def \
    $$MONGOC_SRC_PATH/mongoc/op-reply-header.def \
    $$MONGOC_SRC_PATH/mongoc/op-update.def \
    $$MONGOC_SRC_PATH/mongoc/mongoc-counters.defs \
    $$MONGOC_SRC_PATH/mongoc/mongoc.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-aggregate-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-apm.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-apm-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-array-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-async-cmd-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-async-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-buffer-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-bulk-operation.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-bulk-operation-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-change-stream.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-change-stream-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-pool.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-pool-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-session.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-session-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-side-encryption.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-side-encryption-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-aws-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-cyrus-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-sasl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-sspi-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cmd-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-collection.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-collection-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-compression-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-counters-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypt-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-cng-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-common-crypto-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cyrus-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-database.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-database-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-errno-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-error.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-error-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-find-and-modify.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-find-and-modify-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-flags.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-flags-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-bucket.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-bucket-file-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-bucket-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-list.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-list-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-page.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-page-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-handshake.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-handshake-compiler-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-handshake-os-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-handshake-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-host-list.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-host-list-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-http-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-index.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-init.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-interrupt-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-iovec.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-libressl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-linux-distro-scanner-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-list-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-log.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-log-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-macros.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-matcher.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-matcher-op-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-matcher-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-memcmp-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-ocsp-cache-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-opcode.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-opts-helpers-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-opts-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-prelude.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-queue-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rand.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rand-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-concern.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-concern-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-prefs.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-prefs-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rpc-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-sasl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-scram-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-secure-channel-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-secure-transport-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-description.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-description-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-monitor-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-stream-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-set-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-socket.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-socket-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-ssl.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-ssl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-sspi-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-buffered.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-file.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs-download-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs-upload-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-socket.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-libressl.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-libressl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-openssl.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-openssl-bio-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-openssl-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-channel.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-channel-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-transport.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-transport-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-thread-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-background-monitoring-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-description.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-description-apm-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-description-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-scanner-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-trace-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-uri.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-uri-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-util-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-version-functions.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-command-legacy-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-command-private.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-concern.h \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-concern-private.h \
    $$MONGOC_SRC_PATH/mongoc/utlist.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_b64.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_caller_identity_request.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_decrypt_request.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_encrypt_request.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_message.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_message_defines.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_request.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_request_opt.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_response.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message/kms_response_parser.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/hexlify.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_crypto.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_kv_list.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message_private.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_port.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_request_opt_private.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_request_str.h \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/sort.h


SOURCES += \
    $$MONGOC_SRC_PATH/mongoc/mongoc-aggregate.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-apm.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-array.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-async.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-async-cmd.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-buffer.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-bulk-operation.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-change-stream.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-pool.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-session.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-client-side-encryption.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-aws.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-cyrus.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-sasl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cmd.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-collection.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-compression.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-counters.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-common-crypto.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-array.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-change-stream.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-cmd.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-cmd-deprecated.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-find.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-find-cmd.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-find-opquery.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cursor-legacy.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cyrus.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-database.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-error.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-find-and-modify.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-bucket.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-bucket-file.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-list.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-gridfs-file-page.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-handshake.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-host-list.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-http.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-index.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-init.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-interrupt.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-list.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-log.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-matcher.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-matcher-op.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-memcmp.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-opts.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-opts-helpers.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-queue.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rand-common-crypto.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-concern.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-read-prefs.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rpc.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-sasl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-scram.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-secure-transport.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-description.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-monitor.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-server-stream.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-set.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-socket.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-ssl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-buffered.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-file.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs-download.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-gridfs-upload.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-socket.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-transport.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-background-monitoring.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-description.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-description-apm.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-topology-scanner.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-uri.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-util.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-version-functions.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-command.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-command-legacy.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-write-concern.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/hexlify.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_b64.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_caller_identity_request.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_decrypt_request.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_encrypt_request.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_kv_list.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_message.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_request.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_request_opt.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_request_str.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_response.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_response_parser.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/sort.c


linux:SOURCES += \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-openssl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-linux-distro-scanner.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-ocsp-cache.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-openssl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rand-openssl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-openssl.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-openssl-bio.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_crypto_libcrypto.c \


macx:SOURCES += \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_crypto_apple.c


win32:SOURCES += \
    $$MONGOC_SRC_PATH/mongoc/mongoc-cluster-sspi.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-crypto-cng.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-rand-cng.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-secure-channel.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-sspi.c \
    $$MONGOC_SRC_PATH/mongoc/mongoc-stream-tls-secure-channel.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_crypto_windows.c \
    $$MONGOC_KMS_MESSAGE_SRC_PATH/kms_port.c
