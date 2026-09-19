#
# Copyright (C) 2026 The Android Open Source Project
# device.mk - Peripheral mapping configurations
#

LOCAL_PATH := device/acer/t4_82l

# Call standard framework overlay asset mappings
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Tell the ROM build system to bundle your prebuilt kernel binary asset
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/zImage:kernel
