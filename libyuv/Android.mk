# This is the Android makefile for libyuv for both platform and NDK.
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
    source/compare.cc           \
    source/compare_common.cc    \
    source/compare_posix.cc     \
    source/convert.cc           \
    source/convert_argb.cc      \
    source/convert_from.cc      \
    source/convert_from_argb.cc \
    source/cpu_id.cc            \
    source/format_conversion.cc \
    source/planar_functions.cc  \
    source/rotate.cc            \
    source/rotate_argb.cc       \
    source/row_any.cc           \
    source/row_common.cc        \
    source/row_mips.cc          \
    source/row_posix.cc         \
    source/scale.cc             \
    source/scale_argb.cc        \
    source/scale_mips.cc        \
    source/mjpeg_decoder.cc		\
    source/video_common.cc      \

# TODO(fbarchard): Enable mjpeg encoder.
ifeq ($(TARGET_CPU_ABI),armeabi-v7a)
    LOCAL_CFLAGS += -DLIBYUV_NEON
    LOCAL_SRC_FILES += \
	source/compare_neon.cc    \
	source/rotate_neon.cc     \
	source/row_neon.cc        \
	source/scale_argb_neon.cc \
	source/scale_neon.cc
endif

LOCAL_CFLAGS += -DHAVE_JPEG

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include \
					external/jpeg

LOCAL_MODULE := libyuv_shared
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES += $(path_third_party)/libjpeg_turbo
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

