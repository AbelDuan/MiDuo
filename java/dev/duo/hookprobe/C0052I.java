package dev.duo.hookprobe;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* renamed from: dev.duo.hookprobe.I */
/* loaded from: classes.dex */
public final class C0052I {

    /* renamed from: a */
    public static final float f898a = 0.5f;

    /* renamed from: b */
    private static final String f899b = "com.android.systemui";

    /* renamed from: c */
    private static final String f900c = "miui.systemui.plugin";

    /* renamed from: d */
    private static final Set<String> f901d = new HashSet(Arrays.asList("screenshot", "torch", "sleep", "ringer", "rotation", "hotspot", "dark", "autobright", "location", "eyecare", "bluetooth", "airplane", "powersave", "translate", "huanji", "screenrecord", "cast", "calculator"));

    private C0052I() {
    }

    /* renamed from: a */
    public static boolean m898a(String str) {
        return f901d.contains(str);
    }

    /* renamed from: b */
    private static Drawable m899b(Context context, String str, String str2) {
        try {
            int i = context.getPackageManager().getServiceInfo(new ComponentName(str, str2), 0).icon;
            if (i == 0) {
                return null;
            }
            return context.createPackageContext(str, 0).getDrawable(i).mutate();
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static Drawable m896a(Context context, String str) {
        char c;
        if (!m898a(str)) {
            return null;
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1290959678:
                if (str.equals("eyecare")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1206484807:
                if (str.equals("huanji")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1138529534:
                if (str.equals("calculator")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -930895139:
                if (str.equals("ringer")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -805491779:
                if (str.equals("screenrecord")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -677011630:
                if (str.equals("airplane")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -416447130:
                if (str.equals("screenshot")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3046207:
                if (str.equals("cast")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 3075958:
                if (str.equals("dark")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 44649833:
                if (str.equals("autobright")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 109522647:
                if (str.equals("sleep")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 110547964:
                if (str.equals("torch")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 846086146:
                if (str.equals("powersave")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 1099603663:
                if (str.equals("hotspot")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 1901043637:
                if (str.equals("location")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1968882350:
                if (str.equals("bluetooth")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
        }
        return null;
    }

    /* renamed from: a */
    private static Drawable m897a(Context context, String str, String str2) {
        try {
            if (!str.equals(context.getPackageName())) {
                context = context.createPackageContext(str, 0);
            }
            int identifier = context.getResources().getIdentifier(str2, "drawable", str);
            if (identifier == 0) {
                return null;
            }
            return context.getDrawable(identifier).mutate();
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException e) {
            return null;
        }
    }
}
