# Common overlays
DEVICE_PACKAGE_OVERLAYS += vendor/mad/overlay

# Shim libraries
PRODUCT_PACKAGES += \
    libmtkshim_log \
    libmtkshim_audio \
    libmtkshim_ui \
    libmtkshim_omx \
    libmtkshim_gps

# Display
PRODUCT_PACKAGES += \
    libion

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := vendor/mad/cmhw

# Doze
PRODUCT_PACKAGES += \
    Doze

# GPS
PRODUCT_COPY_FILES += \
    vendor/mad/prebuilt/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

PRODUCT_PACKAGES += \
    libcurl

# OmniStyle
PRODUCT_PACKAGES += \
    OmniStyle

# OmniJaws
PRODUCT_PACKAGES += \
    OmniJaws


# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    mad_charger_res_images

# WallpaperPicker
PRODUCT_PACKAGES += \
    WallpaperPicker

# Sensor Calibration
PRODUCT_PACKAGES += \
    libem_sensor_jni

# ThemeInterfacer
PRODUCT_PACKAGES += \
    ThemeInterfacer

# Eleven
PRODUCT_PACKAGES += \
    Eleven


# Granular Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=14 \
    ro.config.media_vol_steps=30

# include other configs
include vendor/mad/config/permissions.mk
include vendor/mad/config/media.mk
include vendor/mad/config/wifi.mk
include vendor/mad/config/telephony.mk
include vendor/mad/config/google_override.mk
