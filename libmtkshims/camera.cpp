#include <string>
#include <cutils/native_handle.h>
extern "C" {
    int _ZN12DpBlitStream10invalidateEP7timeval();
    int _ZN12DpBlitStream10invalidateEv() {
        return _ZN12DpBlitStream10invalidateEP7timeval();
    }

    int _ZN11DpIspStream11startStreamEP7timeval();
    int _ZN11DpIspStream11startStreamEv() {
        return _ZN11DpIspStream11startStreamEP7timeval();
    }

    int _ZN11DpIspStream15dequeueFrameEndEPj();
    int _ZN11DpIspStream15dequeueFrameEndEv() {
        return _ZN11DpIspStream15dequeueFrameEndEPj();
    }
    void _ZNK7android16SensorEventQueue12setEventRateEPKNS_6SensorEx() {}
}
extern "C" void _ZN7android13GraphicBufferC1EjjijjP13native_handleb(uint32_t inWidth, uint32_t inHeight, int inFormat,
            uint32_t inLayerCount, uint32_t inUsage,
            native_handle_t* inHandle, bool keepOwnership)
{
    _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(inWidth, inHeight, inFormat, inLayerCount, inUsage, 0, inHandle, keepOwnership);
}
