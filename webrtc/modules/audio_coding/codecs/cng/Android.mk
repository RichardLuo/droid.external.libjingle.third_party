# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_cng
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_GENERATED_SOURCES :=

LOCAL_SRC_FILES := \
    webrtc_cng.c \
    cng_helpfuns.c

path_third_party := $(LOCAL_PATH)/../../../../..

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/cng/include \
	$(path_third_party)/webrtc/common_audio/signal_processing/include

OBJS := \
	webrtc_cng.c \
	cng_helpfuns.c

LOCAL_SHARED_LIBRARIES := \
	libwebrtc_spl



include $(BUILD_SHARED_LIBRARY)
