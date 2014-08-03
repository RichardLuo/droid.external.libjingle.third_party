subdirs := \
		utility/source \
		video_coding/main/source \
		video_coding/codecs/i420/main/source \
		audio_coding/main/source \
		audio_coding/codecs/ilbc \
		audio_coding/codecs/cng \
		audio_coding/codecs/isac/main/source \
		audio_coding/codecs/g711 \
		audio_coding/codecs/g722 \
		audio_coding/codecs/pcm16b \
		audio_coding/neteq \
		media_file/source \
		video_processing/main/source \
		video_capture \
		rtp_rtcp/source \
		pacing \
		bitrate_controller \
		remote_bitrate_estimator \
		audio_processing \
		audio_processing/aec \
		audio_processing/utility \
		audio_processing/aecm \
		audio_processing/agc \
		audio_processing/ns \
		audio_conference_mixer/source \
		video_render \

include $(call all-named-subdir-makefiles,$(subdirs))
