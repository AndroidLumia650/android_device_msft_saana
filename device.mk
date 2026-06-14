#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# API levels
PRODUCT_SHIPPING_API_LEVEL := 27

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/mmo/saana/overlay
PRODUCT_ENFORCE_RRO_TARGETS := framework-res

# Product characteristics
PRODUCT_CHARACTERISTICS := default


# For config.fs
PRODUCT_PACKAGES += \
    fs_config_files

# Rootdir
PRODUCT_PACKAGES += \
    init.class_late.sh \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.debug-sdm660.sh \
    init.qcom.debug-sdm710.sh \
    init.qcom.debug.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.qcom.usb.sh \
    init.qti.can.sh \
    init.qti.charger.sh \
    init.qti.debug-msmnile-apps.sh \
    init.qti.debug-msmnile-modem.sh \
    init.qti.debug-msmnile-slpi.sh \
    init.qti.debug-msmnile.sh \
    init.qti.debug-talos.sh \
    init.qti.debug-trinket.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.manifest_sku.sh \
    qca6234-service.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.test.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.recovery.qcom.rc


# Ramdisk
PRODUCT_COPY_FILES += \
    device/mmo/saana/rootdir/etc/ueventd.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc \
    device/mmo/saana/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_ROOT)/fstab.qcom \
    device/mmo/saana/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom


# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

PRODUCT_PACKAGES += \
    audio.primary.msm8909 \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \

PRODUCT_PACKAGES += \
    android.hardware.audio@4.0 \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.common@4.0 \
    android.hardware.audio.common@4.0-util \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@4.0 \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.soundtrigger@2.0-impl \

# Audio configuration files
PRODUCT_COPY_FILES += \
    device/mmo/saana/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    device/mmo/saana/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    device/mmo/saana/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    device/mmo/saana/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    hardware/qcom-caf/msm8996/audio/configs/msm8909/mixer_paths_msm8909_pm8916.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_msm8909_pm8916.xml \
    hardware/qcom-caf/msm8996/audio/configs/msm8909/mixer_paths_wcd9326_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326_i2s.xml \
    hardware/qcom-caf/msm8996/audio/configs/msm8909/mixer_paths_skuc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuc.xml

# XML Audio configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    vendor.qti.hardware.btconfigstore@1.0.vendor \

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8909 \
    gralloc.msm8909 \
    hwcomposer.msm8909 \
    memtrack.msm8909 \
    libhwc2on1adapter \
    liboverlay \
    libtinyxml \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm-service.clearkey \
    android.hardware.drm@1.0.vendor

# FM radio
#PRODUCT_PACKAGES += \
    #FMRadio \
    #libfmjni

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service.software

# GPS
#PRODUCT_PACKAGES += \
#    android.hardware.gnss@1.0-impl \
#    android.hardware.gnss@1.0-service
#
#PRODUCT_PACKAGES += \
#    gps.msm8909

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0

PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# Input
PRODUCT_COPY_FILES += \
    device/mmo/saana/configs/keylayout/AVRCP.kl:vendor/usr/keylayout/AVRCP.kl \
    device/mmo/saana/configs/keylayout/ft5x06_ts.kl:vendor/usr/keylayout/ft5x06_ts.kl \
    device/mmo/saana/configs/keylayout/gpio-keys.kl:vendor/usr/keylayout/gpio-keys.kl \
    device/mmo/saana/configs/keylayout/synaptics_dsx.kl:vendor/usr/keylayout/synaptics_dsx.kl \
    device/mmo/saana/configs/keylayout/Generic.kl:vendor/usr/keylayout/Generic.kl \
    device/mmo/saana/configs/keylayout/atmel_mxt_ts.kl:vendor/usr/keylayout/atmel_mxt_ts.kl \
    device/mmo/saana/configs/keylayout/qwerty.kl:vendor/usr/keylayout/qwerty.kl


# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service

# Linker
PRODUCT_COPY_FILES += \
    device/mmo/saana/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Media
PRODUCT_COPY_FILES += \
    device/mmo/saana/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    device/mmo/saana/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    device/mmo/saana/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@1.0.vendor

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    libsensorndkbridge

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Thermal
#PRODUCT_PACKAGES += \
#    android.hardware.thermal@1.0-impl \
#    android.hardware.thermal@1.0-service \
#    thermal.msm8909

#PRODUCT_COPY_FILES += \
#    device/mmo/saana/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf
#
# Compat symbols
#PRODUCT_PACKAGES += \
#    libshim_cutils

# Trust HAL
#PRODUCT_PACKAGES += \
#    vendor.lineage.trust-service

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Qualcomm
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti
# QMI
PRODUCT_PACKAGES += \
    libjson

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    wificond \

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/mmo/saana/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    device/mmo/saana/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    device/mmo/saana/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/mmo/saana/configs/wifi/WCNSS_wlan_dictionary.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat \
    device/mmo/saana/configs/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin


# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/mmo/saana

# Inherit the proprietary files
$(call inherit-product, vendor/mmo/saana/saana-vendor.mk)
