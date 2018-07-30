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

# DO NOT ALLOW LOIRE DEVICES
ifneq ($(filter-out aosp_g1109 aosp_f5321 aosp_f51%, $(TARGET_PRODUCT)),)
# vendor path
LOCAL_PATH := vendor/sonyaosp

# TWRP: Encryption with FBE
TW_INCLUDE_CRYPTO     := true
TW_INCLUDE_CRYPTO_FBE := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw

# TWRP: Init for recovery
TARGET_RECOVERY_DEVICE_MODULES := init.twrp.recovery.$(TARGET_PRODUCT)

# TWRP: libs for decryption
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/sbin/android.hardware.gatekeeper@1.0-service-qti:recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/sbin/android.hardware.keymaster@3.0-service-qti:recovery/root/sbin/android.hardware.keymaster@3.0-service-qti \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/sbin/qseecomd:recovery/root/sbin/qseecomd \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/manifest.xml:recovery/root/$(TARGET_COPY_OUT_VENDOR)/manifest.xml \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libdiag.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libdiag.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libdrmfs.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmfs.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libdrmtime.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmtime.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libGPreqcancel.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libGPreqcancel.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libGPreqcancel_svc.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libGPreqcancel_svc.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libqisl.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libqisl.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libQSEEComAPI.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/librpmb.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/librpmb.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libssd.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libssd.so \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libtime_genoff.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libtime_genoff.so

ifneq ($(filter aosp_h%13 aosp_h82% aosp_h83%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp/twrp_crypto/rootdir/vendor/lib64/libgptutils.so:recovery/root/$(TARGET_COPY_OUT_VENDOR)/lib64/libgptutils.so
endif
endif
