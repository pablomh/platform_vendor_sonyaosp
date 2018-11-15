ifeq ($(BUILD_ROGCAMERA),true)
# Call all apps mk
$(call inherit-product-if-exists, vendor/sonyaosp/apps/*/*.mk)

# Install apps
PRODUCT_PACKAGES += \
    ROGCamera
endif
