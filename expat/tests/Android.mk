##################################################################
# author: Richard Luo                      
# date:   2013-03-18 16:32:19
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

EXPAT_C_INCLUDES += external/libjingle/third_party/expat/files/lib

include $(CLEAR_VARS)

LOCAL_MODULE := expat_outline

LOCAL_SRC_FILES := outline.c

LOCAL_C_INCLUDES += $(EXPAT_C_INCLUDES)

LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libexpat
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE := expat_line

LOCAL_SRC_FILES := line.c

LOCAL_C_INCLUDES += $(EXPAT_C_INCLUDES)

LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libexpat
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE := expat_namespace

LOCAL_SRC_FILES := namespace.c

LOCAL_C_INCLUDES += $(EXPAT_C_INCLUDES)

LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libexpat
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
