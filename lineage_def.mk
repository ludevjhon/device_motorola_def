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
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="def_reteu-user 10 QPFS30.103-21-1-2 c993f release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/def_reteu/def:10/QPFS30.103-21-1-2/c993f:user/release-keys
