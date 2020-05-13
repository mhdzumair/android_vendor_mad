# Include symbols
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libmtkshim_log.so:/system/lib64/liblog.so|libmtkshim_log.so
endif
ifeq ($(TARGET_INCLUDE_AUDIO_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so
endif
ifeq ($(TARGET_INCLUDE_UI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libmtkshim_ui.so:/system/lib64/libui.so|libmtkshim_ui.so
endif
ifeq ($(TARGET_INCLUDE_OMX_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libMtkOmxVdec.so|libmtkshim_omx.so
endif
ifeq ($(TARGET_INCLUDE_GPS_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/bin/mtk_agpsd|libmtkshim_gps.so
endif
ifeq ($(TARGET_INCLUDE_PROGRAM_BINARY_BUILDER_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/program_binary_builder|libmtkshim_program_binary_builder.so
endif
ifeq ($(TARGET_INCLUDE_VTSERVICE_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libvtmal.so|libmtkshim_vtservice.so:/system/vendor/lib/libsink.so|libmtkshim_vtservice.so
endif
ifeq ($(TARGET_INCLUDE_LIBMTK_SYMBOLS),true)
TARGET_LDPRELOAD += mtk_symbols.so
endif
