include(bson-depend.pri)

DEFINES += \
    MONGOC_STATIC \
    KMS_MESSAGE_ENABLE_CRYPTO \
    KMS_MSG_STATIC

win32:DEFINES += KMS_MESSAGE_ENABLE_CRYPTO_CNG
else:macx:DEFINES += \
    MONGOC_OS_MAC \
    KMS_MESSAGE_ENABLE_CRYPTO_COMMON_CRYPTO
else:linux:DEFINES += \
    MONGOC_OS_LINUX \
    KMS_MESSAGE_ENABLE_CRYPTO_LIBCRYPTO

MONGOC_SRC_PATH = $$MONGOC_ROOT_SRC_PATH/libmongoc/src
MONGOC_KMS_MESSAGE_SRC_PATH = $$MONGOC_ROOT_SRC_PATH/kms-message/src

INCLUDEPATH += \
    $$PWD/mongoc \
    $$MONGOC_KMS_MESSAGE_SRC_PATH \
    $$MONGOC_SRC_PATH
