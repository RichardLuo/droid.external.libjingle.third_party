## include $(call all-subdir-makefiles)

dirs := \
		expat/files \
		gtest/src \
		jsoncpp \
		libsrtp \
		libyuv \
		openssl \
		webrtc

include $(call all-named-subdir-makefiles,$(dirs))
