##################################################################
# author: Richard Luo                      
# date:   2013-03-03 20:54:40
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_MODULE := libpaced_sender

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

path_third_party := $(LOCAL_PATH)/../../..

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ \
	$(path_third_party) \
	$(path_third_party)/webrtc \
	$(path_third_party)/webrtc/modules/pacing/include \
	$(path_third_party)/webrtc/system_wrappers/interface

LOCAL_SRC_FILES := \
	paced_sender.cc

LOCAL_SHARED_LIBRARIES += \
	libwebrtc_system_wrappers

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

include $(BUILD_SHARED_LIBRARY)

