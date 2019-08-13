# Copyright (C) 2016 The Sony AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## MSM8956
# suzu
ifneq ($(filter aosp_f5121, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="F5121-user 8.0.0 34.4.A.2.118 1631208121 release-keys"
BUILD_FINGERPRINT := Sony/F5121/F5121:8.0.0/34.4.A.2.118/1631208121:user/release-keys
endif

# kugo
ifneq ($(filter aosp_f5321, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="F5321-user 8.0.0 34.4.A.2.118 1631208121 release-keys"
BUILD_FINGERPRINT := Sony/F5321/F5321:8.0.0/34.4.A.2.118/1631208121:user/release-keys
endif

## SDM660
# Discovery Dual
ifneq ($(filter aosp_h4213, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="H4213-user 9 50.2.A.0.379 3642579596 release-keys"
BUILD_FINGERPRINT := Sony/H4213/H4213:9/50.2.A.0.379/3642579596:user/release-keys
endif

# Mermaid Dual
ifneq ($(filter aosp_i4213, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="I4213-user 9 53.0.A.6.88 2124438112 release-keys"
BUILD_FINGERPRINT := Sony/I4213_EEA/I4213:9/53.0.A.6.88/2124438112:user/release-keys
endif

## MSM8996
# Dora
ifneq ($(filter aosp_f8131, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="F8131-user 8.0.0 41.3.A.2.149 1629766330 release-keys"
BUILD_FINGERPRINT := Sony/F8131/F8131:8.0.0/41.3.A.2.149/1629766330:user/release-keys
endif

## MSM8998
# Maple
ifneq ($(filter aosp_g8141, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="G8141-user 9 47.2.A.10.80 2758632833 release-keys"
BUILD_FINGERPRINT := Sony/G8141/G8141:9/47.2.A.10.80/2758632833:user/release-keys
endif

# Poplar
ifneq ($(filter aosp_g8341, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="G8341-user 9 47.2.A.10.80 1345287390 release-keys"
BUILD_FINGERPRINT := Sony/G8341/G8341:9/47.2.A.10.80/1345287390:user/release-keys
endif

# Lilac
ifneq ($(filter aosp_g8441, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="G8441-user 9 47.2.A.10.80 1345287390 release-keys"
BUILD_FINGERPRINT := Sony/G8441/G8441:9/47.2.A.10.80/1345287390:user/release-keys
endif

## SDM845
# Akari Dual
ifneq ($(filter aosp_h8266, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="H8266-user 9 52.0.A.8.107 773357278 release-keys"
BUILD_FINGERPRINT := Sony/H8266/H8266:9/52.0.A.8.107/773357278:user/release-keys
endif

# Akatsuki Dual
ifneq ($(filter aosp_h9436, $(TARGET_PRODUCT)),)
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="H9436-user 9 52.0.A.8.107 773357278 release-keys"
BUILD_FINGERPRINT := Sony/H9436/H9436:9/52.0.A.8.107/773357278:user/release-keys
endif
