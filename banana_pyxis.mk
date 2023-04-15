#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Banana stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# Target Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# GApps Build
WITH_GAPPS := false

# Core GApps, WITH_GAPPS needs to be true
BUILD_CORE_GAPPS := false

# Core GApps Extras
BUILD_CORE_GAPPS_EXTRA := false

# Additional features for full GApps build
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := false

# Specific maintainer
BANANA_MAINTAINER := DeadSomeOne

# Blur
TARGET_ENABLE_BLUR := true

# Device UDFPS
TARGET_HAS_UDFPS := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Default build has Matlog, disable it with this flag
TARGET_EXCLUDE_MATLOG := true

# Inherit from pyxis device
$(call inherit-product, device/xiaomi/pyxis/device.mk)

PRODUCT_NAME := banana_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pyxis-user 11 RKQ1.200826.002 V12.5.3.0.RFCEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pyxis_eea/pyxis:11/RKQ1.200826.002/V12.5.3.0.RFCEUXM:user/release-keys
