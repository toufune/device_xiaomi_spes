#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Ricedroid Stuff Common
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Ricedroid Ify
RICE_OFFICIAL := false
RICE_MAINTAINER := Agatha
RICE_CHIPSET := SM680
RICE_PACKAGE_TYPE := PIXEL
TARGET_ENABLE_BLUR := true
SUSHI_BOOTANIMATION := 1080
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true
