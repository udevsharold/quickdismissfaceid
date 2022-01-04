export ARCHS = arm64 arm64e

export DEBUG = 1
export FINALPACKAGE = 0

export PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = CoreAuthUI


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = QuickDismissFaceID

$(TWEAK_NAME)_FILES = $(wildcard *.x)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc 

include $(THEOS_MAKE_PATH)/tweak.mk
