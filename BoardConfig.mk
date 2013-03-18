#
# Copyright (C) 2011 The Android Open-Source Project
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


# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/isw11sc/board-info.txt
TARGET_RECOVERY_INITRC := device/samsung/isw11sc/recovery/recovery.rc

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/isw11sc/bluetooth/include

# Kernel Config
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4210
TARGET_KERNEL_CONFIG := cyanogenmod_isw11sc_defconfig
# Notification LED
BOARD_HAS_LED_NOTIF := true

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/isw11sc/recovery/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

TARGET_SPECIFIC_HEADER_PATH := device/samsung/isw11sc/include
# assert
TARGET_OTA_ASSERT_DEVICE := isw11sc,SCH-ISW11SC,ISW11SC

# Use the non-open-source parts, if they're present
-include vendor/samsung/isw11sc/BoardConfigVendor.mk

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxys2-common/shbootimg.mk
