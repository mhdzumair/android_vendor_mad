LOCAL_PATH := $(call my-dir)

# mtk log symbols (xlog)
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := xlog.c
    LOCAL_SHARED_LIBRARIES := liblog
    LOCAL_MODULE := libmtkshim_log
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)
endif

# audio symbols
ifeq ($(TARGET_INCLUDE_AUDIO_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := audio.cpp
    LOCAL_MODULE := libmtkshim_audio
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)
endif

# ui symbols
ifeq ($(TARGET_INCLUDE_UI_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := ui.cpp
    LOCAL_SHARED_LIBRARIES := libui
    LOCAL_MODULE := libmtkshim_ui
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)
endif

# gui symbols
ifeq ($(TARGET_INCLUDE_GUI_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := gui.cpp
    LOCAL_SHARED_LIBRARIES := libgui
    LOCAL_MODULE := libmtkshim_gui
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)
endif

# omx symbols
ifeq ($(TARGET_INCLUDE_OMX_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := omx.cpp
    LOCAL_MODULE := libmtkshim_omx
    LOCAL_PROPRIETARY_MODULE := true

    include $(BUILD_SHARED_LIBRARY)
endif


ifeq ($(TARGET_INCLUDE_CAMERA_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := camera.cpp
    LOCAL_SHARED_LIBRARIES := libgui libui libdpframework
    LOCAL_MODULE := libmtkshim_camera
    LOCAL_C_INCLUDES += frameworks/native/include
    LOCAL_MODULE_TAGS := optional
    LOCAL_MULTILIB := 32
include $(BUILD_SHARED_LIBRARY)
endif

# aal symbols
ifeq ($(TARGET_INCLUDE_AAl_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := aal.cpp
    LOCAL_MODULE := libmtkshim_aal
    LOCAL_PROPRIETARY_MODULE := true
    include $(BUILD_SHARED_LIBRARY)
endif

ifeq ($(TARGET_INCLUDE_RIL_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := ril.cpp
    LOCAL_MODULE := libmtkshim_ril
    LOCAL_PROPRIETARY_MODULE := true
    LOCAL_SHARED_LIBRARIES := libutils librilutils libril
    include $(BUILD_SHARED_LIBRARY)
endif

