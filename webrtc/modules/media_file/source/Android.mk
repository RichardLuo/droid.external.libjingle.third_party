# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_media_file
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    avi_file.cc \
    media_file_impl.cc \
    media_file_utility.cc

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := \
    '-DWEBRTC_MODULE_UTILITY_VIDEO'

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../interface \
    $(LOCAL_PATH)/../../.. \
    $(LOCAL_PATH)/../../../.. \
    $(LOCAL_PATH)/../../interface \
    $(LOCAL_PATH)/../../utility/interface \
    $(LOCAL_PATH)/../../audio_coding/main/interface \
    $(LOCAL_PATH)/../../../system_wrappers/interface 


LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers


ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif


include $(BUILD_SHARED_LIBRARY)
