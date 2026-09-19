#
# BoardConfig.mk - Acer One 8 (T4-82L) Custom ROM Setup
#

# Core CPU Architecture Configuration
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# MediaTek SoC Target Parameters
TARGET_BOARD_PLATFORM := mt6761
TARGET_BOARD_SUFFIX := _64
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_64_BIT_BINDER := true

# Prebuilt Kernel Binary Configurations
TARGET_PREBUILT_KERNEL := device/acer/t4_82l/zImage

# Extraction Boot Layout Offsets (From bootimg.cfg & DTS files)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 # 0x2000000 in decimal bytes
BOARD_PAGE_SIZE := 2048                    # 0x800 in decimal bytes
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00080000          # Calculated from 0x40080000 - base
BOARD_RAMDISK_OFFSET := 0x11b00000         # Calculated from 0x51b00000 - base
BOARD_TAGS_OFFSET := 0x07880000            # Calculated from 0x47880000 - base

# Merged Kernel Boot Arguments Command Line
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyS0,921600n1 vmalloc=400M slub_debug=OFZPU page_owner=on swiotlb=noforce androidboot.hardware=mt6761 maxcpus=8 loop.max_part=7 firmware_class.path=/vendor/firmware bootopt=64S3,32N2,64N2 buildvariant=user

# Device Tree Blob (DTB) Configuration
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Partition Sizes (Temporary placeholders - safely oversized to prevent compile crashes)
# You can shrink these later to match your device exactly
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 131072
