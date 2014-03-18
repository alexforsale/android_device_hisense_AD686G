## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := AD686G

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hisense/AD686G/full_AD686G.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := AD686G
PRODUCT_NAME := cm_AD686G
PRODUCT_BRAND := hisense
PRODUCT_MODEL := Smartfren AD686G
PRODUCT_MANUFACTURER := hisense
