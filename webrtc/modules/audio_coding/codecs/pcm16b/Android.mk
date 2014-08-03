# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../../../android_common.mk

LOCAL_MODULE := libwebrtc_pcm16b
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/pcm16b/include

LOCAL_SRC_FILES := \
	pcm16b.c

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := $(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1'

include $(BUILD_SHARED_LIBRARY)
