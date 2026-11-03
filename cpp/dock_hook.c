#include <jni.h>
#include <link.h>
#include <string.h>
#include <stdint.h>
#include <android/log.h>

#define TAG "DSHDock"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)

static uintptr_t g_libapp_base = 0;

static int phdr_cb(struct dl_phdr_info *info, size_t size, void *data) {
    (void)size; (void)data;
    if (info->dlpi_name && strstr(info->dlpi_name, "libapp.so")) {
        g_libapp_base = (uintptr_t)info->dlpi_addr;
        LOGI("found libapp.so base=0x%lx name=%s", (unsigned long)g_libapp_base, info->dlpi_name);
    }
    return 0;
}

JNIEXPORT void JNICALL Java_com_abel_dockhook_MainHook_nativeInit(JNIEnv *env, jclass cls) {
    (void)env; (void)cls;
    g_libapp_base = 0;
    dl_iterate_phdr(phdr_cb, NULL);
    if (!g_libapp_base) { LOGI("libapp.so NOT found"); return; }
    LOGI("libapp base = 0x%lx", (unsigned long)g_libapp_base);
    void *target = (void *)(g_libapp_base + 0x00889338UL);
    LOGI("calculatePositionX @ %p", target);
}
