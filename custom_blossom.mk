#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# SOONG_CONFIG_NAMESPACES += global_test_disable
# SOONG_CONFIG_global_test_disable := true
#SOONG_CONFIG_global_test_disable_mode := all

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit PixelOS stuff
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Device Options
scr_resolution := 720
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true
PRODUCT_NAME := custom_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

HALCYON_MAINTAINER := MrGadget84
PRODUCT_MAINTAINER := MrGadget84

# Addons
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_MATLOG := true
TARGET_NO_TESTS := true
