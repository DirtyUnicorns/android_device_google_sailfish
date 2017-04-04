#
# Copyright 2015 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)
# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common_full_phone.mk)

PRODUCT_NAME := du_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.2/N2G47J/3831342:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.2 N2G47J 3831342 release-keys"
