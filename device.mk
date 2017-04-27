# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Also get non-open-source specific aspects if available
$(call inherit-product, vendor/samsung/a8eltezh/a8eltezh-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/a8eltezh/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/a8eltezh/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/a8eltezh/configs/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/samsung/a8eltezh/configs/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb
	
# Media Profiles
PRODUCT_COPY_FILES += \
    device/samsung/a8eltezh/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/a8eltezh/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Ril Qmi Config
PRODUCT_COPY_FILES += device/samsung/a8eltezh/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
PRODUCT_COPY_FILES += device/samsung/a8eltezh/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml
PRODUCT_COPY_FILES += device/samsung/a8eltezh/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml 

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    device/samsung/a8eltezh/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

#Shims for libwvm
PRODUCT_PACKAGES += libshim_wvm
PRODUCT_COPY_FILES += device/samsung/a8eltezh/rootdir/init.shims.rc:root/init.shims.rc

# Inherit from msm8916-common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

