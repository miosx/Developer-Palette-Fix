TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Developer Palette

#THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DeveloperPaletteFix

DeveloperPaletteFix_FILES = Tweak.x
DeveloperPaletteFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
