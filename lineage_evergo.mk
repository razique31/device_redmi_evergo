#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from evergo device
$(call inherit-product, device/xiaomi/evergo/device.mk)

PRODUCT_DEVICE := evergo
PRODUCT_NAME := lineage_evergo
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := evergo
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="evergo-user 11 RP1A.200720.011 V12.5.10.0.RGBINXM release-keys"

BUILD_FINGERPRINT := Redmi/evergo/evergo:11/RP1A.200720.011/V12.5.10.0.RGBINXM:user/release-keys
