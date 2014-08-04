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

LOCAL_MODULE := libwebrtc_rtp_rtcp
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/rtp_rtcp/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/system_wrappers/interface \
	$(path_third_party)/webrtc/modules/remote_bitrate_estimator/include

LOCAL_SRC_FILES := \
	bitrate.cc \
	rtp_rtcp_impl.cc \
	rtcp_receiver.cc \
	rtcp_receiver_help.cc \
	rtcp_sender.cc \
	rtcp_utility.cc \
	rtp_header_extension.cc \
	rtp_receiver.cc \
	rtp_sender.cc \
	rtp_utility.cc \
	ssrc_database.cc \
	tmmbr_help.cc \
	dtmf_queue.cc \
	rtp_receiver_audio.cc \
	rtp_sender_audio.cc \
	forward_error_correction.cc \
	forward_error_correction_internal.cc \
	producer_fec.cc \
	rtp_packet_history.cc \
	rtp_payload_registry.cc \
	rtp_receiver_strategy.cc \
	rtp_receiver_video.cc \
	rtp_sender_video.cc \
	receiver_fec.cc \
	rtp_format_vp8.cc \
	vp8_partition_aggregator.cc

LOCAL_CFLAGS := $(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \

LOCAL_SHARED_LIBRARIES += \
	libpaced_sender \
	libwebrtc_system_wrappers \

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif


include $(BUILD_SHARED_LIBRARY)
