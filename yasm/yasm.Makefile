# This file is generated by gyp; do not edit.

export builddir_name ?= trunk/third_party/yasm/out
.PHONY: all
all:
	$(MAKE) -C ../.. config_sources genstring genmodule genmacro genperf_libs re2c genversion genperf generate_files yasm
