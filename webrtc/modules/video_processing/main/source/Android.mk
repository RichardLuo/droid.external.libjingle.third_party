# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_video_processing
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc

include $(LOCAL_PATH)/../../../../../../android_common.mk

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/video_processing/main/interface \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/common_audio/signal_processing/include \
	$(path_third_party)/webrtc/common_video/interface \
	$(path_third_party)/webrtc/common_video/jpeg/include \
	$(path_third_party)/webrtc/common_video/libyuv/include \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
    brighten.cc \
    brightness_detection.cc \
    color_enhancement.cc \
    content_analysis.cc \
    deflickering.cc \
    denoising.cc \
    frame_preprocessor.cc \
    spatial_resampler.cc \
    video_decimator.cc \
    video_processing_impl.cc

# ifeq ($(TARGET_ARCH),x86)
# LOCAL_SRC_FILES += \
#     content_analysis_sse2.cc
# endif

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := $(WEBRTC_CFLAGS)

LOCAL_SHARED_LIBRARIES += \
    libwebrtc_common_video \
    libwebrtc_spl \
    libwebrtc_system_wrappers \

LOCAL_LDLIBS += -lrt

include $(BUILD_SHARED_LIBRARY)
