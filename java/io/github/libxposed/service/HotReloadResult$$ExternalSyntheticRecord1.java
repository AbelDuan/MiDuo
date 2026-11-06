package io.github.libxposed.service;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class HotReloadResult$$ExternalSyntheticRecord1 {
    /* renamed from: m */
    public static /* synthetic */ String m3145m(Object[] objArr, Class cls, String str) {
        String[] split = str.length() == 0 ? new String[0] : str.split(";");
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getSimpleName()).append("[");
        for (int i = 0; i < split.length; i++) {
            sb.append(split[i]).append("=").append(objArr[i]);
            if (i != split.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
