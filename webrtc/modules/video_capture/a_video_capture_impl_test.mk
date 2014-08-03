##################################################################
# author: Richard Luo                      
# date:   2013-03-03 12:20:14
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)

source := a_video_capture_impl_test.cc

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := $(source)
LOCAL_MODULE := $(basename $(source))

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_SHARED_LIBRARIES += libstlport
endif

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
