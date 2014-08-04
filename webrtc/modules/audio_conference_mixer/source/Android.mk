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

LOCAL_MODULE := libwebrtc_audio_conference_mixer
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/audio_conference_mixer/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/audio_processing/include \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
	audio_frame_manipulator.cc \
	level_indicator.cc \
	audio_conference_mixer_impl.cc \
	time_scheduler.cc

LOCAL_CFLAGS += $(WEBRTC_CFLAGS)

LOCAL_LDLIBS += \
	-lrt

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers \
	libwebrtc_apm \
	libwebrtc_utility \

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

include $(BUILD_SHARED_LIBRARY)
