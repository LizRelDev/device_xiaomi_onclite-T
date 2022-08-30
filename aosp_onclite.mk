#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Some necessary flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_FACE_UNLOCK : true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Y3
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220705.003/8671607:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003 8671607 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
