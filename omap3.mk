#
# Copyright (C) 2012 BMc08GT
#
# OMAP3 Device Configs
#
# To be listed in each applicable OMAP3 device tree so that
# OMAP34COM device.mk can call this for omap-zoom base
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

# This file includes all definitions that apply to ALL omap3 devices, and
# are also specific to omap devices
#
# Everything in this directory will become public


# Make this equal to your OMAP3 device name
DEVICE := shadow

# Libs
PRODUCT_PACKAGES += \
        libomap_mm_library_jni

# Hardware composer configuration
PRODUCT_COPY_FILES += \
out/target/product/$DEVICE/obj/lib/hwcomposer.omap3.so:system/vendor/lib/hw/hwcomposer.omap3.so \
out/target/product/$DEVICE/obj/lib/hwcomposer.omap3.so:system/lib/hw/hwcomposer.omap3.so

 

$(call inherit-product, hardware/ti/omap3/omap3.mk)
