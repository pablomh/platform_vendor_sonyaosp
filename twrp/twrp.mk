# Copyright (C) 2018 The SonyAosp Project
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

$(call inherit-product, vendor/sonyaosp/twrp/*/*.mk)

# TWRP: Recovery configuration
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NEW_ION_HEAP    := true
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
ifneq ($(filter aosp_g81% aosp_h82% aosp_h83%, $(TARGET_PRODUCT)),)
TW_MAX_BRIGHTNESS  := 4095
else
TW_MAX_BRIGHTNESS  := 255
endif

# TWRP: Blacklist virtual mouse
TW_INPUT_BLACKLIST := "hbtp_vm"

# TWRP: FileSystem support
TW_INCLUDE_EXFAT   := true
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP: These properties may change on a per-device basis
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_NO_SCREEN_BLANK := true
