#
# Copyright (C) 2021 The LineageOS Project
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

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/kuntao/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_kuntao
PRODUCT_DEVICE := kuntao
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo P2a42
PRODUCT_MANUFACTURER := LENOVO

# Sakura Flags
TARGET_BOOT_ANIMATION_RES := 1080
HAVOC_MAINTAINER := -Shades-1.0-SingleShot
HAVOC_BUILD_TYPE := UNOFFICIAL
TARGET_USES_BLUR := true
WITH_FOD_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kuntao_row-user 7.0 NRD90N P2a42_S251_171107_ROW release-keys" \
    TARGET_DEVICE="P2a42"

BUILD_FINGERPRINT := Lenovo/kuntao_row/P2a42:7.0/NRD90N/P2a42_S251_171107_ROW:user/release-keys
