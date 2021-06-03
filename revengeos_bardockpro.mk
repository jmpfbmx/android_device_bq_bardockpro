#
# Copyright (C) 2017 The LineageOS Project
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

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Common device
$(call inherit-product, device/bq/msm8953-common/msm8953.mk)

# Device
$(call inherit-product, device/bq/bardockpro/device.mk)

# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation RES
TARGET_BOOT_ANIMATION_RES := 1080

# Build Official
REVENGEOS_BUILDTYPE := OFFICIAL

# Device identifier. This must come after all inclusions
TARGET_VENDOR := bq
PRODUCT_DEVICE := bardockpro
PRODUCT_NAME := revengeos_bardockpro
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X Pro
PRODUCT_MANUFACTURER := bq
BOARD_VENDOR := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=bardock-pro \
        PRIVATE_BUILD_DESC="bardockpro_bq-user 8.1.0 OPM1.171019.026 2395 release-keys"

BUILD_FINGERPRINT := bq/bardock-pro/bardock-pro:8.1.0/OPM1.171019.026/2395:user/release-keys
