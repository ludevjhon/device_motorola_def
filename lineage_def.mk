# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from def device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := def
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_def
PRODUCT_MODEL := motorola one hyper

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := def
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="def_retail-user 10 QPF30.103-12-3 eb765 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/def_retail/def:10/QPF30.103-12-3/eb765:user/release-keys
