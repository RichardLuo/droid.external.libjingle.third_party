##################################################################
# author: Richard Luo                      
# date:   2013-09-16 15:21:27
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := jsontestrunner

LOCAL_SRC_FILES := \
	main.cpp

LOCAL_SHARED_LIBRARIES := \
	libjsoncpp \
	libutils \
	libcutils \
	libbinder \
	liblog \


LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../include

LOCAL_CFLAGS := \
	-DJSON_USE_EXCEPTION=0

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
