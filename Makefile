FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:14.5

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BetterPad16Springboard BetterPad16Camera
BetterPad16Springboard_FILES = TweakSpringboard.xm
BetterPad16Springboard_LIBRARIES = MobileGestalt
BetterPad16Springboard_CFLAGS = -fobjc-arc
BetterPad16Camera_FILES = TweakCamera.xm
BetterPad16Camera_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"

include $(THEOS_MAKE_PATH)/aggregate.mk
