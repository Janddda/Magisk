LOCAL_PATH:= $(call my-dir)
EXTERNAL := $(LOCAL_PATH)

# libsqlite.so (stub)
include $(CLEAR_VARS)
LOCAL_MODULE:= libsqlite
LOCAL_SRC_FILES := stubs/sqlite3_stub.c
include $(BUILD_SHARED_LIBRARY)

# libselinux.so (stub)
include $(CLEAR_VARS)
LOCAL_MODULE:= libselinux
LOCAL_C_INCLUDES := $(LIBSELINUX)
LOCAL_SRC_FILES := stubs/selinux_stub.c
include $(BUILD_SHARED_LIBRARY)

# libsepol, static library
include $(SELINUX_PATH)/libsepol/Android.mk

# Compression libraries for magiskboot
include $(COMPRESS_LIB)/zlib/Android.mk
include $(COMPRESS_LIB)/xz/src/liblzma/Android.mk
include $(COMPRESS_LIB)/lz4/lib/Android.mk
include $(COMPRESS_LIB)/bzip2/Android.mk
