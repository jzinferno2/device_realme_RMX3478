#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := RMX3478

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RMX3478 device
$(call inherit-product, device/realme/RMX3478/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX3478
PRODUCT_NAME := twrp_RMX3478
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Q5
PRODUCT_MANUFACTURER := Realme
