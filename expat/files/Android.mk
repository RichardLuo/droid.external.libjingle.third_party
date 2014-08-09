LOCAL_PATH:= $(call my-dir)

# We need to build this for both the device (as a shared library)
# and the host (as a static library for tools to use).

common_SRC_FILES := \
	lib/xmlparse.c \
	lib/xmlrole.c \
	lib/xmltok.c

common_CFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes -fexceptions -DHAVE_EXPAT_CONFIG_H

# common_CFLAGS +=  -DXML_MIN_SIZE

common_C_INCLUDES += \
	$(LOCAL_PATH)/lib

common_COPY_HEADERS_TO := libexpat_jingle
common_COPY_HEADERS := \
	lib/expat.h \
	lib/expat_external.h

# For the host
# =====================================================

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_C_INCLUDES += $(common_C_INCLUDES)

ifeq ($(HOST_OS),darwin)
	LOCAL_CFLAGS += -fno-common
endif

LOCAL_MODULE:= libexpat_jingle
LOCAL_MODULE_TAGS := optional
LOCAL_COPY_HEADERS_TO := $(common_COPY_HEADERS_TO)
LOCAL_COPY_HEADERS := $(common_COPY_HEADERS)

include $(BUILD_HOST_STATIC_LIBRARY)


# For the device
# =====================================================

# Device static library
include $(CLEAR_VARS)

# ifeq ($(TARGET_ARCH),arm)
# LOCAL_NDK_VERSION := 4
# LOCAL_SDK_VERSION := 8
# endif

LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_C_INCLUDES += $(common_C_INCLUDES)

LOCAL_MODULE:= libexpat_jingle_static
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

# Device shared library
include $(CLEAR_VARS)

# ifeq ($(TARGET_ARCH),arm)
# LOCAL_NDK_VERSION := 4
# LOCAL_SDK_VERSION := 8
# endif

LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_C_INCLUDES += $(common_C_INCLUDES)

LOCAL_MODULE:= libexpat_jingle
LOCAL_MODULE_TAGS := optional
LOCAL_COPY_HEADERS_TO := $(common_COPY_HEADERS_TO)
LOCAL_COPY_HEADERS := $(common_COPY_HEADERS)

include $(BUILD_SHARED_LIBRARY)

