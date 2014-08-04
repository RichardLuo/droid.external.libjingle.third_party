# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../../android_common.mk

LOCAL_MODULE := libwebrtc_utility
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES := \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/media_file/interface \
	$(path_third_party)/webrtc/modules/video_coding/main/interface \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/common_audio/resampler/include \
	$(path_third_party)/webrtc/system_wrappers/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/interface

LOCAL_SRC_FILES := \
	audio_frame_operations.cc \
	coder.cc \
	file_player_impl.cc \
	file_recorder_impl.cc \
	process_thread_impl.cc \
	rtp_dump_impl.cc \
	frame_scaler.cc \
	video_coder.cc \
	video_frames_queue.cc

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-DWEBRTC_MODULE_UTILITY_VIDEO' \

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers \
	libwebrtc_audio_coding \
	libwebrtc_resampler \
	libwebrtc_common_video \
	libwebrtc_media_file \
	libwebrtc_video_coding \
	libwebrtc_audio_coding \


ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

LOCAL_LDLIBS += -lrt

include $(BUILD_SHARED_LIBRARY)


