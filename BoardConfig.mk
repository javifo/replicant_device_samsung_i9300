#
# Copyright 2018 Joonas Kylmälä
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

TARGET_BOARD_PLATFORM := exynos4
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

TARGET_NO_BOOTLOADER := true

BOARD_VENDOR := samsung

# Kernel
# To append the dtb to the zImage:
# - Use BOARD_DTB_IMAGE_NAME with the right dtb
# - Make sure that your kernel source doesn't have
#   any Android patches that would add the zImage-dtb
#   target.
# The vendor/lineage/build/tasks/kernel.mk file
# was modified to add support for that feature.
TARGET_KERNEL_SOURCE := kernel/replicant/midas
TARGET_KERNEL_CONFIG := replicant_i9300_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_DTB_IMAGE_NAME := exynos4412-i9300.dtb

# Recover
TARGET_RECOVERY_FSTAB := device/samsung/i9300/fstab.smdk4x12
BOARD_USES_FULL_RECOVERY_IMAGE := false
BOARD_USES_RECOVERY_AS_BOOT := false

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
# TODO: figure out if it is possible to increase USERDATA partition size
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11378320
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 512

TARGET_USES_MKE2FS := true

# Disable VNDK at this point
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_RUNTIME_DISABLE := true
PRODUCT_USE_VNDK_OVERRIDE := false
#BOARD_VNDK_VERSION := current

# Graphics
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_USES_HWC2 := true
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := lima kmsro

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_BUS := SDIO

# Low-memory device
MALLOC_SVELTE := true

TARGET_USES_64_BIT_BINDER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

BOARD_USES_GENERIC_AUDIO := true


DEVICE_MANIFEST_FILE := device/samsung/i9300/manifest.xml

USE_XML_AUDIO_POLICY_CONF := 1
