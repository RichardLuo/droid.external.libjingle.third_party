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

LOCAL_MODULE := libwebrtc_agc
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	analog_agc.c \
	digital_agc.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/audio_processing/aec/include \
	$(path_third_party)/webrtc/modules/audio_processing/aecm/include \
	$(path_third_party)/webrtc/modules/audio_processing/agc/include \
	$(path_third_party)/webrtc/modules/audio_processing/include \
	$(path_third_party)/webrtc/modules/audio_processing/ns/include \
	$(path_third_party)/webrtc/modules/audio_processing/utility \
	$(path_third_party)/webrtc/common_audio/signal_processing/include \
	$(path_third_party)/webrtc/common_audio/vad/include \
	$(path_third_party)/webrtc/system_wrappers/interface \
	$(path_third_party)/protobuf \
	$(path_third_party)/protobuf/src

LOCAL_CFLAGS := $(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-DWEBRTC_AUDIOPROC_DEBUG_DUMP' \
	'-DWEBRTC_NS_FIXED' \

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_spl

include $(BUILD_SHARED_LIBRARY)
