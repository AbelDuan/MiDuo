package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class I {
    public static final float a = 0.5f;
    private static final java.lang.String b = "com.android.systemui";
    private static final java.lang.String c = "miui.systemui.plugin";
    private static final java.util.Set<java.lang.String> d = new java.util.HashSet(java.util.Arrays.asList("screenshot", "torch", "sleep", "ringer", "rotation", "hotspot", "dark", "autobright", "location", "eyecare", "bluetooth", "airplane", "powersave", "translate", "huanji", "screenrecord", "cast", "calculator"));

    private I() {
    }

    public static boolean a(java.lang.String str) {
        return d.contains(str);
    }

    private static android.graphics.drawable.Drawable b(android.content.Context context, java.lang.String str, java.lang.String str2) {
        try {
            int i = context.getPackageManager().getServiceInfo(new android.content.ComponentName(str, str2), 0).icon;
            if (i == 0) {
                return null;
            }
            return context.createPackageContext(str, 0).getDrawable(i).mutate();
        } catch (android.content.pm.PackageManager.NameNotFoundException | android.content.res.Resources.NotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static android.graphics.drawable.Drawable a(android.content.Context context, java.lang.String str) {
        char c2;
        if (!a(str)) {
            return null;
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1290959678:
                if (str.equals("eyecare")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1206484807:
                if (str.equals("huanji")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1138529534:
                if (str.equals("calculator")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -930895139:
                if (str.equals("ringer")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -805491779:
                if (str.equals("screenrecord")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -677011630:
                if (str.equals("airplane")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -416447130:
                if (str.equals("screenshot")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 3046207:
                if (str.equals("cast")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 3075958:
                if (str.equals("dark")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 44649833:
                if (str.equals("autobright")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 109522647:
                if (str.equals("sleep")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 110547964:
                if (str.equals("torch")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 846086146:
                if (str.equals("powersave")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 1099603663:
                if (str.equals("hotspot")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 1901043637:
                if (str.equals("location")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 1968882350:
                if (str.equals("bluetooth")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
        }
        return null;
    }

    private static android.graphics.drawable.Drawable a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        try {
            if (!str.equals(context.getPackageName())) {
                context = context.createPackageContext(str, 0);
            }
            int identifier = context.getResources().getIdentifier(str2, "drawable", str);
            if (identifier == 0) {
                return null;
            }
            return context.getDrawable(identifier).mutate();
        } catch (android.content.pm.PackageManager.NameNotFoundException | android.content.res.Resources.NotFoundException e) {
            return null;
        }
    }
}
