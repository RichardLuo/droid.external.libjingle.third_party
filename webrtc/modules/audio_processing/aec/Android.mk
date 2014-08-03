# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../../android_common.mk

LOCAL_MODULE := libwebrtc_aec
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := \
    echo_cancellation.c \
    aec_resampler.c \
    aec_core.c \
    aec_rdft.c \

# ifeq ($(TARGET_ARCH),x86)
# LOCAL_SRC_FILES += \
#     aec_core_sse2.c \
#     aec_rdft_sse2.c
# endif

LOCAL_CFLAGS := $(WEBRTC_CFLAGS) \
	'-DWEBRTC_AUDIOPROC_DEBUG_DUMP' \
	'-DWEBRTC_NS_FIXED' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include		\
    $(LOCAL_PATH)/../utility	\
	$(path_third_party)/		\
    $(path_webrtc) \
    $(path_webrtc)/ common_audio/signal_processing/include \

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_apm_utility \
	libwebrtc_spl \
	libwebrtc_system_wrappers

include $(BUILD_SHARED_LIBRARY)
