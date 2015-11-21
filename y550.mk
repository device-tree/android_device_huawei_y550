#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/huawei/y550

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_8916.xml:system/etc/media_codecs.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/configs/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/configs/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# Diag cfg
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/Diag.cfg:system/etc/DiagCfg/Diag.cfg

# DPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fd.conf:system/etc/dpm/fdMgr/fd.conf

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Listen configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/listen_platform_info.xml:system/etc/listen_platform_info.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/capability.xml:system/etc/capability.xml \
    $(LOCAL_PATH)/configs/device_monitor_for_nff.conf:system/etc/device_monitor_for_nff.conf \
    $(LOCAL_PATH)/configs/device_state_monitor.conf:system/etc/device_state_monitor.conf \
    $(LOCAL_PATH)/configs/globalAutoAdapt-conf.xml:system/etc/globalAutoAdapt-conf.xml \
    $(LOCAL_PATH)/configs/globalMatchs-conf.xml:system/etc/globalMatchs-conf.xml \
    $(LOCAL_PATH)/configs/qlog-conf.xml:system/etc/qlog-conf.xml \
    $(LOCAL_PATH)/configs/renice-loggers.sh:system/etc/renice-loggers.sh \
    $(LOCAL_PATH)/configs/virtualNets-conf.xml:system/etc/virtualNets-conf.xml \
    $(LOCAL_PATH)/configs/wfdconfig.xml:system/etc/wfdconfig.xml \
    $(LOCAL_PATH)/configs/wfdconfigsink.xml:system/etc/wfdconfigsink.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/whitelist_appops.xml:system/etc/whitelist_appops.xml

# Logmask
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/default_diag_mask.cfg:system/etc/logmask/default_diag_mask.cfg \
    $(LOCAL_PATH)/configs/dynamic_debug_mask.cfg:system/etc/logmask/dynamic_debug_mask.cfg \
    $(LOCAL_PATH)/configs/qdss.cfg:system/etc/logmask/qdss.cfg

# Nfc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hardfault.cfg:system/etc/nfc/hardfault.cfg \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc-nci.conf:system/etc/nfc-nci.conf \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Offmode charge
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/charger:root/charger \
    $(LOCAL_PATH)/rootdir/res/images/480x854/batt_level_scale.png:root/res/images/480x854/batt_level_scale.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/batt_level_top.png:root/res/images/480x854/batt_level_top.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/bg.png:root/res/images/480x854/bg.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/empty_charge.png:root/res/images/480x854/empty_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/err_charge.png:root/res/images/480x854/err_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/full_charge.png:root/res/images/480x854/full_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_0.png:root/res/images/480x854/number_0.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_1.png:root/res/images/480x854/number_1.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_2.png:root/res/images/480x854/number_2.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_3.png:root/res/images/480x854/number_3.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_4.png:root/res/images/480x854/number_4.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_5.png:root/res/images/480x854/number_5.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_6.png:root/res/images/480x854/number_6.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_7.png:root/res/images/480x854/number_7.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_8.png:root/res/images/480x854/number_8.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/number_9.png:root/res/images/480x854/number_9.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/percent_10.png:root/res/images/480x854/percent_10.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/percent_5.png:root/res/images/480x854/percent_5.png \
    $(LOCAL_PATH)/rootdir/res/images/480x854/percent_sign.png:root/res/images/480x854/percent_sign.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    $(LOCAL_PATH)/rootdir/res/images/mmi/fail.png:root/res/images/mmi/fail.png \
    $(LOCAL_PATH)/rootdir/res/images/mmi/pass.png:root/res/images/mmi/pass.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level0.png:root/res/images/normal/level0.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level1.png:root/res/images/normal/level1.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level2.png:root/res/images/normal/level2.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level3.png:root/res/images/normal/level3.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level4.png:root/res/images/normal/level4.png \
    $(LOCAL_PATH)/rootdir/res/images/normal/level5.png:root/res/images/normal/level5.png

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# Camera
PRODUCT_PACKAGES += \
    mm-qcamera-app \
    camera.msm8916 \
    libmmcamera_interface \
    libmmjpeg_interface \
    libmm-qcamera \
    libqomx_core

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    libmemalloc \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libgenlock \
    libqdutils \
    libqdMetaData

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += \
    flatland

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

#fstab.qcom
PRODUCT_PACKAGES += \
    fstab.qcom

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# NFC packages
#PRODUCT_PACKAGES += \
#    NfcNci \
#    Tag \
#    com.android.nfc_extras

#OEM Services library
PRODUCT_PACKAGES += \
    oem-services \
    libsubsystem_control \
    libSubSystemShutdown

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Prebuilt binary
PRODUCT_PACKAGES += \
    chargelog.sh \
    e2fsck_s \
    healthd \
    huawei_version \
    hw_scsi_switch \
    libqmi_oem_main \
    rmt_oeminfo \
    rmt_storage \
    test_diag \
    test_oeminfo \
    usb_update

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh \
    minivold

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/configs/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.rootagent.sh:system/etc/init.qcom.rootagent.sh \
    $(LOCAL_PATH)/configs/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    $(LOCAL_PATH)/configs/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/configs/qca6234-service.sh:system/etc/qca6234-service.sh \
    $(LOCAL_PATH)/configs/hcidump.sh:service/etc/hcidump.sh

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.factory.sh \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.mdm.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.uicc.sh \
    init.target.rc \
    ueventd.qcom.rc \
    init.device.rc

#spec service
PRODUCT_PACKAGES += \
    init.qti.carrier.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8916 \
    libcalmodule_akm \
    calmodule.cfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd.conf:system/etc/hostapd/hostapd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapgrowthlimit=128m

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# appops configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/fsg,/firmware,/persist,/boot

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/huawei/y550/y550-vendor.mk)

$(call inherit-product-if-exists, vendor/dianlujitao/blobs.mk)
