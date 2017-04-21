# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/a8eltezh/full_a8eltezh.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a8eltezh TARGET_DEVICE=a8eltezh

PRODUCT_NAME := lineage_a8eltezh
