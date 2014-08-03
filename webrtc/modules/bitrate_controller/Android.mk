##################################################################
# author: Richard Luo                      
# date:   2013-03-03 21:18:46
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../../../android_common.mk

LOCAL_MODULE := libbitrate_controller

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
	bitrate_controller_impl.cc \
	send_side_bandwidth_estimation.cc

LOCAL_CFLAGS := \
	$(WEBRTC_CFLAGS) 

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(path_third_party)/webrtc \
	$(path_third_party) \
	$(path_third_party)/webrtc/modules/interface \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers

include $(BUILD_SHARED_LIBRARY)

