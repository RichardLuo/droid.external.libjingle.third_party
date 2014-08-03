LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
	a_video_capture_impl_test.cc
LOCAL_MODULE := libwebrtc_video_capture
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# include $(CLEAR_VARS)
# source := a_video_capture_impl_test.cc
# LOCAL_CPP_EXTENSION := .cc
# LOCAL_SRC_FILES := $(source)
# LOCAL_MODULE := lib$(basename $(source))
# LOCAL_PRELINK_MODULE := false
# LOCAL_MODULE_TAGS := eng
# include $(BUILD_SHARED_LIBRARY)
