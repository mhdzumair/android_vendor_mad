# Include symbols
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libmtkshim_log.so:/system/lib64/liblog.so|libmtkshim_log.so
endif
ifeq ($(TARGET_INCLUDE_AUDIO_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so:/system/vendor/lib64/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so
endif
ifeq ($(TARGET_INCLUDE_UI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libmtkshim_ui.so:/system/lib64/libui.so|libmtkshim_ui.so
endif
ifeq ($(TARGET_INCLUDE_GUI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libgui.so|libmtkshim_gui.so:/system/lib64/libgui.so|libmtkshim_gui.so
endif
ifeq ($(TARGET_INCLUDE_OMX_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libMtkOmxVdec.so|libmtkshim_omx.so
endif
ifeq ($(TARGET_INCLUDE_GPS_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/mtk_agpsd|libmtkshim_gps.so
endif
ifeq ($(TARGET_INCLUDE_CAMERA_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libfeatureio.so|libmtkshim_camera.so:/system/vendor/lib/libcam_utils.so|libmtkshim_camera.so:/system/vendor/lib/libcam.utils.sensorlistener.so|libmtkshim_camera.so:/system/vendor/lib/libshowlogo.so|libmtkshim_camera.so
endif
ifeq ($(TARGET_INCLUDE_AAL_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libaal.so|libmtkshim_aal.so
endif
ifeq ($(TARGET_INCLUDE_RIL_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/mtkrild|libmtkshim_ril.so
endif
