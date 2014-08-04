# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_system_wrappers
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    cpu_features_android.c \
    map.cc \
    sort.cc \
	atomic32_posix.cc \
    aligned_malloc.cc \
    condition_variable.cc \
    cpu_no_op.cc \
    cpu_features.cc \
    cpu_info.cc \
    critical_section.cc \
    event.cc \
    event_tracer.cc \
    file_impl.cc \
    list_no_stl.cc \
    rw_lock.cc \
    thread.cc \
    trace_impl.cc \
    condition_variable_posix.cc \
    cpu_linux.cc \
    critical_section_posix.cc \
    event_posix.cc \
    sleep.cc \
    thread_posix.cc \
    tick_util.cc \
    trace_posix.cc \
    rw_lock_posix.cc  \
	clock.cc


LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../.. \
    $(LOCAL_PATH)/../../.. \
    $(LOCAL_PATH)/../interface \
    $(LOCAL_PATH)/spreadsortlib \
    external/webrtc

LOCAL_CFLAGS += '-DWEBRTC_LINUX'

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
LOCAL_CFLAGS += '-DWEBRTC_ANDROID'
LOCAL_PRELINK_MODULE := false
endif

LOCAL_LDLIBS += -lrt -lpthread


include $(BUILD_SHARED_LIBRARY)
