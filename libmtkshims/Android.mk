LOCAL_PATH := $(call my-dir)

# mtk log symbols (xlog)
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := xlog.c
    LOCAL_SHARED_LIBRARIES := liblog
    LOCAL_MODULE := libmtkshim_log
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif

# audio symbols
ifeq ($(TARGET_INCLUDE_AUDIO_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := audio.cpp
    LOCAL_MODULE := libmtkshim_audio
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif

# ui symbols
ifeq ($(TARGET_INCLUDE_UI_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := ui.cpp
    LOCAL_SHARED_LIBRARIES := libui
    LOCAL_MODULE := libmtkshim_ui
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif

# omx symbols
ifeq ($(TARGET_INCLUDE_OMX_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := omx.cpp
    LOCAL_MODULE := libmtkshim_omx
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif

# gps symbols
ifeq ($(TARGET_INCLUDE_GPS_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := \
        agps/icu53.c \
        agps/ssl.c

    LOCAL_SHARED_LIBRARIES := libicuuc libssl
    LOCAL_MODULE := libmtkshim_gps
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif

ifeq ($(TARGET_INCLUDE_PROGRAM_BINARY_BUILDER_SYMBOLS),true)
		include $(CLEAR_VARS)
		LOCAL_SRC_FILES := program_binary_builder.cpp
		LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils
		LOCAL_MODULE := libmtkshim_program_binary_builder
		LOCAL_PROPRIETARY_MODULE := true
		LOCAL_MODULE_TAGS := optional
		LOCAL_MODULE_CLASS := SHARED_LIBRARIES
		include $(BUILD_SHARED_LIBRARY)
endif

ifeq ($(TARGET_INCLUDE_VTSERVICE_SYMBOLS),true)
		include $(CLEAR_VARS)
		LOCAL_SRC_FILES := vtservice.cpp
		LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils
		LOCAL_MODULE := libshim_vtservice
		LOCAL_PROPRIETARY_MODULE := true
		LOCAL_MODULE_TAGS := optional
		LOCAL_MODULE_CLASS := SHARED_LIBRARIES
		include $(BUILD_SHARED_LIBRARY)
endif
