# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := udp_transport
DEFS_Debug := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=/home/richard/android-sdk/android-ndk-r8d/platforms/android-9/arch-arm \
	-I/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/stlport/stlport \
	-I/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/gnu-libstdc++/4.6/include \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi

INCS_Debug := \
	-Ithird_party/webrtc \
	-Ithird_party \
	-I. \
	-Ithird_party/webrtc/modules/udp_transport/interface \
	-Ithird_party/webrtc/modules/interface \
	-Ithird_party/webrtc/system_wrappers/interface

DEFS_Release := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'

# Flags passed to all source files.
CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=/home/richard/android-sdk/android-ndk-r8d/platforms/android-9/arch-arm \
	-I/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/stlport/stlport \
	-I/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/gnu-libstdc++/4.6/include \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi

INCS_Release := \
	-Ithird_party/webrtc \
	-Ithird_party \
	-I. \
	-Ithird_party/webrtc/modules/udp_transport/interface \
	-Ithird_party/webrtc/modules/interface \
	-Ithird_party/webrtc/system_wrappers/interface

OBJS := \
	$(obj).target/$(TARGET)/third_party/webrtc/modules/udp_transport/source/udp_transport_impl.o \
	$(obj).target/$(TARGET)/third_party/webrtc/modules/udp_transport/source/udp_socket_wrapper.o \
	$(obj).target/$(TARGET)/third_party/webrtc/modules/udp_transport/source/udp_socket_manager_wrapper.o \
	$(obj).target/$(TARGET)/third_party/webrtc/modules/udp_transport/source/udp_socket_posix.o \
	$(obj).target/$(TARGET)/third_party/webrtc/modules/udp_transport/source/udp_socket_manager_posix.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=/home/richard/android-sdk/android-ndk-r8d/platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/stlport/libs/armeabi-v7a \
	-L/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=/home/richard/android-sdk/android-ndk-r8d/platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/stlport/libs/armeabi-v7a \
	-L/home/richard/android-sdk/android-ndk-r8d/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := \
	 \
	-lstlport_static \
	/home/richard/android-sdk/android-ndk-r8d/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86/bin/../lib/gcc/arm-linux-androideabi/4.6/libgcc.a \
	-lc \
	-ldl \
	-lstdc++ \
	-lm

$(obj).target/third_party/webrtc/modules/libudp_transport.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/third_party/webrtc/modules/libudp_transport.a: LIBS := $(LIBS)
$(obj).target/third_party/webrtc/modules/libudp_transport.a: TOOLSET := $(TOOLSET)
$(obj).target/third_party/webrtc/modules/libudp_transport.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/third_party/webrtc/modules/libudp_transport.a
# Add target alias
.PHONY: udp_transport
udp_transport: $(obj).target/third_party/webrtc/modules/libudp_transport.a

# Add target alias to "all" target.
.PHONY: all
all: udp_transport

# Add target alias
.PHONY: udp_transport
udp_transport: $(builddir)/libudp_transport.a

# Copy this to the static library output path.
$(builddir)/libudp_transport.a: TOOLSET := $(TOOLSET)
$(builddir)/libudp_transport.a: $(obj).target/third_party/webrtc/modules/libudp_transport.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libudp_transport.a
# Short alias for building this static library.
.PHONY: libudp_transport.a
libudp_transport.a: $(obj).target/third_party/webrtc/modules/libudp_transport.a $(builddir)/libudp_transport.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libudp_transport.a

