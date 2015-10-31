# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_NO_MISC_PARTITION := true

# Include path
TARGET_SPECIFIC_HEADER_PATH += device/sony/fusion3-common/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
BOARD_VENDOR_PLATFORM := fusion3
BOARD_LIB_DUMPSTATE := libdumpstate.sony

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom
CM_POWERHAL_EXTENSION := qcom

# Blob compatibility
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Kernel information
BOARD_KERNEL_BASE     := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE  := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=22 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE  := kernel/sony/apq8064

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_PROVIDES_CAMERA_HAL := true

# CM Hardware
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

# Graphics
TARGET_DISPLAY_USE_RETIRE_FENCE := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Healthd
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RED_LED_PATH := /sys/class/leds/lm3533-red/brightness
GREEN_LED_PATH := /sys/class/leds/lm3533-green/brightness
BLUE_LED_PATH := /sys/class/leds/lm3533-blue/brightness

# RIL
#BOARD_PROVIDES_LIBRIL := true
#BOARD_RIL_CLASS := ../../../device/sony/fusion3-common/ril/

# Lights HAL
TARGET_PROVIDES_FUSION3_LIBLIGHT := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

BOARD_USE_SONY_MACUPDATE := true

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_NO_SEPARATE_RECOVERY := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/sony/fusion3-common/custombootimg.mk
TARGET_RECOVERY_FSTAB := device/sony/fusion3-common/rootdir/fstab.qcom
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#RECOVERY_VARIANT := twrp

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Memory allocation
MALLOC_IMPL := dlmalloc

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# TWRP
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_HAS_NO_RECOVERY_PARTITION := true
#TW_FLASH_FROM_STORAGE := true
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_JB_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
#TW_INCLUDE_FUSE_EXFAT := true
#TW_MAX_BRIGHTNESS := 255
#TW_NO_USB_STORAGE := true
#TW_NO_SCREEN_BLANK := true

# SELinux
#include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#    device/sony/fusion3-common/sepolicy
