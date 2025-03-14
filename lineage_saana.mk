#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from msm8909 device
$(call inherit-product, device/msft/saana/device.mk)

PRODUCT_DEVICE := saana
PRODUCT_NAME := lineage_saana
PRODUCT_BRAND := Microsoft
PRODUCT_MODEL := Lumia 650
PRODUCT_MANUFACTURER := Microsoft

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8909-eng 9 PKQ1.190903.001 eng.snaccy.20250313.175332 test-keys"

BUILD_FINGERPRINT := qcom/msm8909/msm8909:9/PKQ1.190903.001/snaccy03131753:eng/test-keys
