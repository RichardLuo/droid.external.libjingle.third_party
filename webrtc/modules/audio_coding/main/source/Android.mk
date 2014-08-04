# Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_audio_coding
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc

path_third_party := $(LOCAL_PATH)/../../../../..

LOCAL_C_INCLUDES := \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/cng/include \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/g711/include \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/g722/include \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/ilbc/interface \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/isac/main/interface \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/isac/fix/interface \
	$(path_third_party)/webrtc/modules/audio_coding/codecs/pcm16b/include \
	$(path_third_party)/webrtc/modules/audio_coding/neteq/interface \
	$(path_third_party)/webrtc/common_audio/resampler/include \
	$(path_third_party)/webrtc/common_audio/signal_processing/include \
	$(path_third_party)/webrtc/common_audio/vad/include \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
	acm_amr.cc \
	acm_amrwb.cc \
	acm_celt.cc \
	acm_cng.cc \
	acm_codec_database.cc \
	acm_dtmf_detection.cc \
	acm_dtmf_playout.cc \
	acm_g722.cc \
	acm_g7221.cc \
	acm_g7221c.cc \
	acm_g729.cc \
	acm_g7291.cc \
	acm_generic_codec.cc \
	acm_gsmfr.cc \
	acm_ilbc.cc \
	acm_isac.cc \
	acm_neteq.cc \
	acm_opus.cc \
	acm_speex.cc \
	acm_pcm16b.cc \
	acm_pcma.cc \
	acm_pcmu.cc \
	acm_red.cc \
	acm_resampler.cc \
	audio_coding_module.cc \
	audio_coding_module_impl.cc


LOCAL_SHARED_LIBRARIES := \
	libwebrtc_system_wrappers \
	libwebrtc_ilbc	\
	libwebrtc_vad \
	libwebrtc_cng \
	libwebrtc_isac \
	libwebrtc_g722 \
	libwebrtc_neteq \
	libwebrtc_g711 \
	libwebrtc_pcm16b \
	libwebrtc_resampler

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

include $(BUILD_SHARED_LIBRARY)
