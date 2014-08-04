##################################################################
# author: Richard Luo                      
# date:   2013-03-03 21:23:55
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../android_common.mk

LOCAL_MODULE := libremote_bitrate_estimator

LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/remote_bitrate_estimator/include \
	$(path_third_party)/webrtc/modules/rtp_rtcp/interface \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \

LOCAL_SRC_FILES := \
	bitrate_estimator.cc \
	overuse_detector.cc \
	remote_bitrate_estimator_multi_stream.cc \
	remote_bitrate_estimator_single_stream.cc \
	remote_rate_control.cc \
	rtp_to_ntp.cc

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES := \
	libwebrtc_system_wrappers

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

include $(BUILD_SHARED_LIBRARY)
