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

# Exclude SystemUI test packages
EXCLUDE_SYSTEMUI_TESTS := true

# Kernel-headers FLAG
TARGET_COMPILE_WITH_MSM_KERNEL := true

# 4K prop for YouTube
# only for Maple
ifneq ($(filter aosp_g814%, $(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
    sys.display-size=3840x2160
endif
