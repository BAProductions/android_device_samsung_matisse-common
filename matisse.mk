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

# inherit from common msm8226
-include device/samsung/msm8226-common/msm8226.mk

LOCAL_PATH := device/samsung/matisse-common

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_CHARACTERISTICS := tablet

# Graphics
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/tablet-10in-xhdpi-2048-hwui-memory.mk)

# Camera
PRODUCT_PACKAGES += \
    libmmcamera_sr130pc20

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_OUT_ETC)/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_OUT_ETC)/system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_OUT_ETC)/system/etc/permissions/tablet_core_hardware.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_OUT_ETC)/system/etc/mixer_paths.xml

# Gello
PRODUCT_PACKAGES += \
    Gello

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \

# Lights
PRODUCT_PACKAGES += \
    lights.msm8226

# Radio
PRODUCT_PACKAGES += \
    libshim_ril \
    libprotobuf-cpp-full

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.bt.sh \
    init.qcom.cdma.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.sec.boot.sh \
    init.target.rc \
    ueventd.qcom.rc

# Widevine
PRODUCT_PACKAGES += \
    libshim_wvm

# WCNSS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_OUT_ETC)/system/etc/wifi/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_OUT_ETC)/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_OUT_ETC)/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hostapd/hostapd_default.conf \
$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/p2p_supplicant_overlay.conf \
$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_overlay.conf \
$(LOCAL_PATH)/wifi/wpa_supplicant_ath6kl.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_ath6kl.conf \
$(LOCAL_PATH)/wifi/nvram_net.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt_a0 \
$(LOCAL_PATH)/wifi/nvram_net.txt:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt \
$(LOCAL_PATH)/wifi/nvram_mfg.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_mfg.txt_a0 \
$(LOCAL_PATH)/wifi/cred.conf:$(TARGET_OUT_ETC)/system/etc/wifi/cred.conf \
$(LOCAL_PATH)/wifi/bcmdhd_sta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_sta.bin \
$(LOCAL_PATH)/wifi/bcmdhd_mfg.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_mfg.bin \
$(LOCAL_PATH)/wifi/bcmdhd_apsta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_apsta.bin \
$(LOCAL_PATH)/wifi/bcmdhd_ibss.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_ibss.bin \
$(LOCAL_PATH)/wifi/hostapd.accept:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.accept \
$(LOCAL_PATH)/wifi/hostapd.deny:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.deny \
$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd_default.conf 

# Wifi
PRODUCT_PACKAGES += \
	hostapd \
	libqsap_sdk \
	libQWiFiSoftApCfg \
	libwcnss_qmi \
	libwpa_client \
	bcmdhd \
	wcnss_service \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hostapd/hostapd_default.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_ath6kl.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_ath6kl.conf \
	$(LOCAL_PATH)/wifi/nvram_net.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt_a0 \
	$(LOCAL_PATH)/wifi/nvram_net.txt:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt \
	$(LOCAL_PATH)/wifi/nvram_mfg.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_mfg.txt_a0 \
	$(LOCAL_PATH)/wifi/cred.conf:$(TARGET_OUT_ETC)/system/etc/wifi/cred.conf \
	$(LOCAL_PATH)/wifi/bcmdhd_sta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_sta.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_mfg.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_mfg.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_apsta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_apsta.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_ibss.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_ibss.bin \
	$(LOCAL_PATH)/wifi/hostapd.accept:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.accept \
	$(LOCAL_PATH)/wifi/hostapd.deny:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.deny \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd_default.conf 

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images cm_charger_res_images

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/matisse-common/matisse-common-vendor.mk)
