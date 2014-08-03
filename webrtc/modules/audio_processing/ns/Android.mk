# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

#############################
# Build the non-neon library.
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../../android_common.mk

LOCAL_MODULE := libwebrtc_ns
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    noise_suppression_x.c \
    nsx_core.c

LOCAL_CFLAGS := $(WEBRTC_CFLAGS)		\
	'-DWEBRTC_AUDIOPROC_DEBUG_DUMP'		\
	'-DWEBRTC_NS_FIXED'					\
	'-DGOOGLE_PROTOBUF_NO_RTTI'			\
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DHAVE_SYS_UIO_H'					\
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1'	\
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1'

LOCAL_C_INCLUDES := \
	$(path_third_party) \
    $(LOCAL_PATH)/include \
    $(path_webrtc_modules)/utility \
    $(path_webrtc) \
    $(path_webrtc)/common_audio/signal_processing/include \
    $(path_webrtc)/system_wrappers/interface \

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers \
	libwebrtc_spl \

include $(BUILD_SHARED_LIBRARY)

#############################
# Build the neon library.
ifeq ($(WEBRTC_BUILD_NEON_LIBS),true)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := libwebrtc_ns_neon
LOCAL_MODULE_TAGS := optional
NS_ASM_HEADER := $(intermediates)/ns_core_neon_offsets.h
NS_ASM_HEADER_DIR := $(intermediates)

# Generate a header file nsx_core_neon_offsets.h which will be included in
# assembly file nsx_core_neon.S, from file nsx_core_neon_offsets.c.
$(NS_ASM_HEADER): $(path_webrtc)/build/generate_asm_header.py \
	    $(LOCAL_PATH)/nsx_core_neon_offsets.c
	@python $^ --compiler=$(TARGET_CC) --options="$(addprefix -I, \
		$(LOCAL_INCLUDES)) $(addprefix -isystem , $(TARGET_C_INCLUDES)) -S" \
		--dir=$(NS_ASM_HEADER_DIR)

LOCAL_GENERATED_SOURCES := $(NS_ASM_HEADER)
LOCAL_SRC_FILES := nsx_core_neon.S

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := \
    $(MY_WEBRTC_COMMON_DEFS) \
    -mfpu=neon \
    -mfloat-abi=softfp \
    -flax-vector-conversions

LOCAL_C_INCLUDES := \
    $(NS_ASM_HEADER_DIR) \
    $(LOCAL_PATH)/include \
    $(path_webrtc) \
    $(path_webrtc)/common_audio/signal_processing/include \
    external/webrtc

LOCAL_INCLUDES := $(LOCAL_C_INCLUDES)

ifndef NDK_ROOT
include external/stlport/libstlport.mk
endif
include $(BUILD_STATIC_LIBRARY)
endif # ifeq ($(WEBRTC_BUILD_NEON_LIBS),true)
