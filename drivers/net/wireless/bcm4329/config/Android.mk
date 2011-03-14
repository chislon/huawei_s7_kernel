LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# files that live under /system/etc/wifi...
copy_from := \
        rtecdc.bin \
        nvram.txt \
        wpa_supplicant.conf \
	rtecdc-mfgtest.bin \
	nvram_mfgtest.txt \
	wlarm_android \
	iperf 

copy_to := $(addprefix $(TARGET_OUT_ETC)/wifi/,$(copy_from))
copy_from := $(addprefix $(LOCAL_PATH)/,$(copy_from))

$(copy_to) : $(TARGET_OUT_ETC)/wifi/% : $(LOCAL_PATH)/% | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(copy_to)

# create some directories (some are mount points)
DIRS := $(addprefix $(TARGET_OUT_ETC)/, wifi) 

$(DIRS):
	@echo Directory: $@
	@mkdir -p $@

ALL_PREBUILT += $(DIRS)

