# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.orca.version=$(ORCA_VERSION) \
    ro.orca.releasetype=$(ORCA_BUILDTYPE) \
    ro.orca.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(ORCA_VERSION) \
