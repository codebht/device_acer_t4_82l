# Inherit core hardware/software configurations from core architecture trees
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specifications from your target device tree workspace overrides
$(call inherit-product, device/acer/t4_82l/device.mk)

# Device Configuration Metadata Definitions
PRODUCT_NAME := t4_82l
PRODUCT_DEVICE := t4_82l
PRODUCT_BRAND := Acer
PRODUCT_MODEL := Acer One 8
PRODUCT_MANUFACTURER := Acer

# Build properties tags matching your stock firmware
PRODUCT_GMS_CLIENTID_BASE := android-acer
