# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../android_common.mk

LOCAL_MODULE := libwebrtc_voe_core
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/voice_engine/include \
	$(path_third_party)/webrtc/modules/audio_device \
	$(path_third_party)/webrtc/common_audio/resampler/include \
	$(path_third_party)/webrtc/common_audio/signal_processing/include \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/audio_conference_mixer/interface \
	$(path_third_party)/webrtc/modules/audio_device/include \
	$(path_third_party)/webrtc/modules/audio_processing/include \
	$(path_third_party)/webrtc/modules/media_file/interface \
	$(path_third_party)/webrtc/modules/rtp_rtcp/interface \
	$(path_third_party)/webrtc/modules/udp_transport/interface \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
	channel.cc \
	channel_manager.cc \
	channel_manager_base.cc \
	dtmf_inband.cc \
	dtmf_inband_queue.cc \
	level_indicator.cc \
	monitor_module.cc \
	output_mixer.cc \
	output_mixer_internal.cc \
	shared_data.cc \
	statistics.cc \
	transmit_mixer.cc \
	utility.cc \
	voe_audio_processing_impl.cc \
	voe_base_impl.cc \
	voe_call_report_impl.cc \
	voe_codec_impl.cc \
	voe_dtmf_impl.cc \
	voe_encryption_impl.cc \
	voe_external_media_impl.cc \
	voe_file_impl.cc \
	voe_hardware_impl.cc \
	voe_neteq_stats_impl.cc \
	voe_network_impl.cc \
	voe_rtp_rtcp_impl.cc \
	voe_video_sync_impl.cc \
	voe_volume_control_impl.cc \
	voice_engine_impl.cc

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
    '-DWEBRTC_ANDROID_OPENSLES' \


ifeq ($(TARGET_OS)-$(TARGET_SIMULATOR),linux-true)
LOCAL_LDLIBS += -ldl -lpthread
endif

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_SHARED_LIBRARIES += libdl
endif

LOCAL_SHARED_LIBRARIES += \
    libwebrtc_audio_coding \
    libwebrtc_system_wrappers \
    libwebrtc_apm \
	libwebrtc_audio_conference_mixer \
	libwebrtc_utility \
	libwebrtc_rtp_rtcp \
	libwebrtc_spl \
	libwebrtc_resampler \
	libwebrtc_media_file \

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
else
LOCAL_LDLIBS += \
	-lrt

endif

include $(BUILD_SHARED_LIBRARY)
