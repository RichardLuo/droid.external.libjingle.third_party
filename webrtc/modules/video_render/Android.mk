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

LOCAL_MODULE := libwebrtc_video_render

LOCAL_MODULE_TAGS := optional

LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES := \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/video_render/include \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/modules/utility/interface \
	$(path_third_party)/webrtc/modules/audio_coding/main/interface \
	$(path_third_party)/webrtc/common_video/interface \
	$(path_third_party)/webrtc/common_video/jpeg/include \
	$(path_third_party)/webrtc/common_video/libyuv/include \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
	external/video_render_external_impl.cc \
	incoming_video_stream.cc \
	video_render_frames.cc \
	video_render_impl.cc \
	linux/video_render_linux_impl.cc  \
	linux/video_x11_channel.cc  \
	linux/video_x11_render.cc

# ./android/video_render_android_impl.cc \
# ./android/video_render_android_native_opengl2.cc \
# ./android/video_render_android_surface_view.cc \
# ./android/video_render_opengles20.cc \

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-DWEBRTC_LINUX' \
	'-DLINUX' \
	'-UANDROID' \
	'-UWEBRTC_ANDROID' \
	'-DWEBRTC_INCLUDE_INTERNAL_VIDEO_RENDER' \

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers \
	libwebrtc_common_video

LOCAL_LDLIBS += -lrt                 
# LOCAL_LDLIBS += -L/usr/lib/x86_64-linux-gnu/ -lXext
LOCAL_LDLIBS  += -lX11

include $(BUILD_SHARED_LIBRARY)
