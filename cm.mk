#
# Copyright (C) 2014 The Mokee Opensource Project
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

# Release name
PRODUCT_RELEASE_NAME := Y550

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/y550/full_y550.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := y550
PRODUCT_NAME := cm_y550

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Huawei/Y550-L01/hwY550-L01:4.4.4/HuaweiY550-L01C150B239/SVK:user/ota-rel-keys,release-keys" \
    PRIVATE_BUILD_DESC="Y550-L01-user 4.4.4 GRJ90 C150B239 release-keys"
