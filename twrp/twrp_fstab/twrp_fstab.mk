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

# vendor path
LOCAL_PATH := vendor/sonyaosp

ifneq ($(filter aosp_g1109 aosp_f5321 aosp_f51%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_loire.fstab:recovery/root/etc/twrp.fstab
endif

ifneq ($(filter aosp_h%13, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_nile.fstab:recovery/root/etc/twrp.fstab
endif

ifneq ($(filter aosp_h82% aosp_h83%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_tama.fstab:recovery/root/etc/twrp.fstab
endif

ifneq ($(filter aosp_f81% aosp_f83% aosp_g82%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_tone.fstab:recovery/root/etc/twrp.fstab
endif

ifneq ($(filter aosp_g81%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_yoshino.fstab:recovery/root/etc/twrp.fstab
endif

ifneq ($(filter aosp_g83% aosp_g8441, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp_fstab/rootdir/etc/twrp_yoshinor2.fstab:recovery/root/etc/twrp.fstab
endif
