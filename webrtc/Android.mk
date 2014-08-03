dirs := \
		common_video \
		common_video/libyuv \
		common_audio/vad \
		common_audio/signal_processing \
		common_audio/resampler \
		system_wrappers/source \
		modules \
		video_engine \
		voice_engine


include $(call all-named-subdir-makefiles,$(dirs))
