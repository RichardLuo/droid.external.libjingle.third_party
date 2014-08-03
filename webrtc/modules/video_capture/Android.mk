# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../android_common.mk

LOCAL_MODULE := libwebrtc_video_capture

LOCAL_MODULE_TAGS := optional

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
    video_capture_impl.cc \
    device_info_impl.cc \
    video_capture_factory.cc \
	linux/device_info_linux.cc \
	linux/video_capture_linux.cc

    # android/video_capture_android.cc \
    # android/device_info_android.cc

LOCAL_CFLAGS := \
    $(WEBRTC_CFLAGS) \


LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/android \
    $(path_webrtc) \
	$(path_third_party) \
	$(path_third_party)/webrtc/system_wrappers/interface \
    $(path_webrtc_modules)/interface \
    $(path_webrtc_modules)/source \
    $(path_webrtc_modules)/../../utility/interface \
    $(path_webrtc_modules)/../../audio_coding/main/interface \
    $(path_webrtc_modules)/../../.. \
    $(path_webrtc_modules)/../../../common_video/vplib/main/interface \
    $(path_webrtc_modules)/../../../system_wrappers/interface

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_common_video \
	libwebrtc_system_wrappers

LOCAL_LDLIBS := \
    -lcutils \
    -lrt \
    -ldl

include $(BUILD_SHARED_LIBRARY)
