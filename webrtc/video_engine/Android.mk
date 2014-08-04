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

LOCAL_MODULE := libwebrtc_vie_core
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    vie_base_impl.cc \
    vie_capture_impl.cc \
    vie_codec_impl.cc \
    vie_encryption_impl.cc \
    vie_external_codec_impl.cc \
    vie_file_impl.cc \
    vie_image_process_impl.cc \
    vie_impl.cc \
    vie_network_impl.cc \
    vie_ref_count.cc \
    vie_render_impl.cc \
    vie_rtp_rtcp_impl.cc \
    vie_shared_data.cc \
    vie_capturer.cc \
    vie_channel.cc \
    vie_channel_group.cc \
    vie_channel_manager.cc \
    vie_encoder.cc \
    vie_file_image.cc \
    vie_file_player.cc \
    vie_file_recorder.cc \
    vie_frame_provider_base.cc \
    vie_input_manager.cc \
    vie_manager_base.cc \
    vie_receiver.cc \
    vie_remb.cc \
    vie_renderer.cc \
    vie_render_manager.cc \
    vie_sender.cc \
	call_stats.cc \
	encoder_state_feedback.cc \
    vie_sync_module.cc \
	stream_synchronization.cc


LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/video_engine/include \
	$(path_third_party)/webrtc/common_video/interface \
	$(path_third_party)/webrtc/modules/video_render \
	$(path_third_party)/webrtc/common_video/jpeg/include \
	$(path_third_party)/webrtc/common_video/libyuv/include \
	$(path_third_party)/webrtc/modules/media_file/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/rtp_rtcp/interface \
	$(path_third_party)/webrtc/modules/udp_transport/interface \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/modules/rtp_rtcp/interface \
	$(path_third_party)/webrtc/modules/video_coding/main/interface \
	$(path_third_party)/webrtc/modules/video_coding/codecs/interface \
	$(path_third_party)/webrtc/modules/video_processing/main/interface \
	$(path_third_party)/webrtc/modules/video_render/include \
	$(path_third_party)/webrtc/voice_engine/include \
	$(path_third_party)/webrtc/system_wrappers/interface


LOCAL_CFLAGS += \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \


ifeq ($(TARGET_OS)-$(TARGET_SIMULATOR),linux-true)
LOCAL_LDLIBS += -ldl -lpthread
endif

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_SHARED_LIBRARIES += libdl
endif

LOCAL_SHARED_LIBRARIES += libwebrtc_system_wrappers
LOCAL_SHARED_LIBRARIES += libwebrtc_video_coding
LOCAL_SHARED_LIBRARIES += libwebrtc_utility
LOCAL_SHARED_LIBRARIES += libwebrtc_video_processing
LOCAL_SHARED_LIBRARIES += libwebrtc_common_video
LOCAL_SHARED_LIBRARIES += libwebrtc_spl
LOCAL_SHARED_LIBRARIES += libwebrtc_video_capture
LOCAL_SHARED_LIBRARIES += libpaced_sender
LOCAL_SHARED_LIBRARIES += libwebrtc_rtp_rtcp
LOCAL_SHARED_LIBRARIES += libbitrate_controller
LOCAL_SHARED_LIBRARIES += libremote_bitrate_estimator
LOCAL_SHARED_LIBRARIES += libwebrtc_voe_core
LOCAL_SHARED_LIBRARIES += libwebrtc_video_render


LOCAL_SHARED_LIBRARIES += liblog

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
else
LOCAL_LDLIBS += -lrt
endif


include $(BUILD_SHARED_LIBRARY)
