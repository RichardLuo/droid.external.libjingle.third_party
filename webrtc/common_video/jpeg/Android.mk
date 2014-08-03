# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_jpeg
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    jpeg.cc \


LOCAL_C_INCLUDES :=				\
    $(LOCAL_PATH)/..			\
    $(LOCAL_PATH)/../..			\
    $(LOCAL_PATH)/../../../		\
    $(LOCAL_PATH)/include		\
    $(LOCAL_PATH)/../interface	\
    $(LOCAL_PATH)/../../../../	\
	$(LOCAL_PATH)/../../../libyuv/include		\
    external/jpeg				\

LOCAL_LDFLAGS := \
    -lcutils \
    -ldl

include $(BUILD_SHARED_LIBRARY)
