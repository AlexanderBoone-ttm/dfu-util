LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-c-files-under, src)

LOCAL_C_INCLUDES := external/libusb/libusb/

LOCAL_CFLAGS += -DHAVE_FTRUNCATE -DHAVE_NANOSLEEP

LOCAL_MODULE := dfu-util

LOCAL_MODULE_TAGS := optional

LOCAL_SYSTEM_SHARED_LIBRARIES := libc libusb

include $(BUILD_EXECUTABLE)
