# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../../../android_common.mk

LOCAL_MODULE := libwebrtc_video_coding

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/video_coding/main/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/interface \
	$(path_third_party)/webrtc/common_video/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/i420/main/interface \
	$(path_third_party)/webrtc/common_video/jpeg/include \
	$(path_third_party)/webrtc/common_video/libyuv/include \
	$(path_third_party)/webrtc/system_wrappers/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/vp8/include \
	$(path_third_party)/webrtc/common_video/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/interface

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
	codec_database.cc \
	codec_timer.cc \
	content_metrics_processing.cc \
	decoding_state.cc \
	encoded_frame.cc \
	exp_filter.cc \
	frame_buffer.cc \
	frame_dropper.cc \
	generic_decoder.cc \
	generic_encoder.cc \
	inter_frame_delay.cc \
	jitter_buffer.cc \
	jitter_buffer_common.cc \
	jitter_estimator.cc \
	media_opt_util.cc \
	media_optimization.cc \
	packet.cc \
	qm_select.cc \
	receiver.cc \
	rtt_filter.cc \
	session_info.cc \
	timestamp_extrapolator.cc \
	timestamp_map.cc \
	timing.cc \
	video_coding_impl.cc

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \

LOCAL_SHARED_LIBRARIES := \
	libwebrtc_common_video	\
	libwebrtc_i420 \
	libwebrtc_system_wrappers

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
else
LOCAL_LDFLAGS += -lrt
endif

include $(BUILD_SHARED_LIBRARY)
