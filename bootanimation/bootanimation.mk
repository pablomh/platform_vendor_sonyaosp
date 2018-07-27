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

# vendor path
LOCAL_PATH := vendor/sonyaosp

# bootanimation (720p)
ifneq ($(filter aosp_f5321 aosp_g8441 aosp_g1109, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/bootanimation/720p/bootanimation.zip:system/media/bootanimation.zip
endif

# bootanimation (1080p)
ifneq ($(filter aosp_f512% aosp_f813% aosp_f833% aosp_g823% aosp_g814% aosp_g834% aosp_h%13 aosp_h82% aosp_h83%, $(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/bootanimation/1080p/bootanimation.zip:system/media/bootanimation.zip
endif
