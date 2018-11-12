# Call all apps mk
$(call inherit-product-if-exists, vendor/sonyaosp/apps/*/*.mk)

# Install apps
PRODUCT_PACKAGES += \
    ROGCamera
