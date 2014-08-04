# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_yuv
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    webrtc_libyuv.cc \
    scaler.cc

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/../.. \
    $(LOCAL_PATH)/../../.. \
    $(LOCAL_PATH)/../../../libyuv/include \
    $(LOCAL_PATH)/../../../../libyuv/files/include

LOCAL_SHARED_LIBRARIES += libyuv_shared
LOCAL_SHARED_LIBRARIES += libwebrtc_common_video

include $(BUILD_SHARED_LIBRARY)