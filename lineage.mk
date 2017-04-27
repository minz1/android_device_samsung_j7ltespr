# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/j7ltespr/full_j7ltespr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=j7ltespr TARGET_DEVICE=j7ltespr

PRODUCT_NAME := lineage_j7ltespr
