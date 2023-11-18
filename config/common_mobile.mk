# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/orca/config/common.mk)

# Apps
PRODUCT_PACKAGES += \
    Backgrounds

PRODUCT_PACKAGES += \
    Launcher3QuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep

PRODUCT_PACKAGES += \
    Launcher3Overlay

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker

PRODUCT_SIZE := full

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/orca/config/telephony.mk)