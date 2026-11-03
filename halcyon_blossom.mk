#
# Device product definition for Xiaomi Redmi 9A (blossom)
# Halcyon Project 16.2 / Android 16
#

# Core Android product definitions
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Device-specific configuration
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Halcyon 16.2 product configuration.
# Halcyon 16.2 exposes config/common.mk (not common_full_phone.mk).
$(call inherit-product, vendor/halcyon/config/common.mk)

# Device identity
PRODUCT_NAME := halcyon_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9A
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Halcyon maintainer metadata
HALCYON_MAINTAINER := MrGadget84
PRODUCT_MAINTAINER := MrGadget84

# Device options carried over from the source tree
scr_resolution := 720
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_MATLOG := true
TARGET_NO_TESTS := true
