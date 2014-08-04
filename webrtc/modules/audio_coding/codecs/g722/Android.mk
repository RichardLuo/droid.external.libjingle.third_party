# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_g722
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional

path_third_party := $(LOCAL_PATH)/../../../../..

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/g722/include

LOCAL_SRC_FILES := \
    g722_interface.c \
    g722_encode.c \
    g722_decode.c

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := \

include $(BUILD_SHARED_LIBRARY)
