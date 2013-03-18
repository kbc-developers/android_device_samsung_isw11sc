#
# Copyright (C) 2012 The CyanogenMod Project
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := SCH-ISW11SC

# Bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/isw11sc/full_isw11sc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := isw11sc
PRODUCT_NAME := cm_isw11sc
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SCH-ISW11SC

#Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCI11 TARGET_DEVICE=ISW11SC BUILD_FINGERPRINT=KDDI/SCI11/ISW11SC:4.0.4/IMM76D/KDMP3:user/release-keys PRIVATE_BUILD_DESC="SCI11-user 4.0.4 IMM76D KDMP3 release-keys"
