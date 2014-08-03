##################################################################
# author: Richard Luo                      
# date:   2013-03-03 15:53:51
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../android_common.mk

LOCAL_MODULE := libsrtp

LOCAL_SRC_FILES := \
	srtp/srtp/ekt.c \
	srtp/srtp/srtp.c \
	srtp/crypto/cipher/aes.c \
	srtp/crypto/cipher/aes_cbc.c \
	srtp/crypto/cipher/aes_icm.c \
	srtp/crypto/cipher/cipher.c \
	srtp/crypto/cipher/null_cipher.c \
	srtp/crypto/hash/auth.c \
	srtp/crypto/hash/hmac.c \
	srtp/crypto/hash/null_auth.c \
	srtp/crypto/hash/sha1.c \
	srtp/crypto/kernel/alloc.c \
	srtp/crypto/kernel/crypto_kernel.c \
	srtp/crypto/kernel/err.c \
	srtp/crypto/kernel/key.c \
	srtp/crypto/math/datatypes.c \
	srtp/crypto/math/gf2_8.c \
	srtp/crypto/math/stat.c \
	srtp/crypto/replay/rdb.c \
	srtp/crypto/replay/rdbx.c \
	srtp/crypto/replay/ut_sim.c \
	srtp/crypto/rng/ctr_prng.c \
	srtp/crypto/rng/prng.c \
	srtp/crypto/rng/rand_source.c


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/srtp/include	\
	$(LOCAL_PATH)/srtp/crypto/include	\
	$(LOCAL_PATH)/config


LOCAL_CFLAGS += \
	$(DROID_CFLAGS) \
	'-DHAVE_STDLIB_H' \
	'-DHAVE_STRING_H' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCPU_CISC' \
	'-DHAVE_INT16_T' \
	'-DHAVE_INT32_T' \
	'-DHAVE_INT8_T' \
	'-DHAVE_UINT16_T' \
	'-DHAVE_UINT32_T' \
	'-DHAVE_UINT64_T' \
	'-DHAVE_UINT8_T' \
	'-DSIZEOF_UNSIGNED_LONG=4' \
	'-DSIZEOF_UNSIGNED_LONG_LONG=8' \
	'-DHAVE_STDINT_H' \
	'-DHAVE_INTTYPES_H' \
	'-DHAVE_NETINET_IN_H' \
	'-DINLINE=inline' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \


LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng


include $(BUILD_SHARED_LIBRARY)

