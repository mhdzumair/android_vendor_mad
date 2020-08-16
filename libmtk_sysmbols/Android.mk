LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_INCLUDE_LIBMTK_SYMBOLS),true)
	include $(CLEAR_VARS)

	LOCAL_SRC_FILES := \
	    icu55.c \
	    mtk_asc.cpp \
	    mtk_audio.cpp \
	    mtk_fence.cpp \
	    mtk_omx.cpp \
	    mtk_ui.cpp \
			program_binary_builder.cpp \
			ssl.c \
			vtservice.cpp \
			mtkmal.cpp

	LOCAL_SHARED_LIBRARIES := libbinder liblog libgui libui libicuuc libicui18n libmedia libnetutils
	LOCAL_MODULE := libmtk_symbols
	LOCAL_MODULE_TAGS := optional
	include $(BUILD_SHARED_LIBRARY)
endif
