package dev.duo.hookprobe;

import android.app.KeyguardManager;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.util.Log;
import io.github.libxposed.service.XposedService;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class ConfigProvider extends ContentProvider {

    /* renamed from: a */
    private static final int f820a = 0;

    /* renamed from: b */
    private static final int f821b = 2000;

    /* renamed from: a */
    private Bundle m842a(int i, String str, String str2, Bundle bundle) {
        String str3;
        try {
            boolean z = i == getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
            boolean z2 = i == Process.myUid() || i == 0 || i == f821b;
            if (!z && !z2) {
                if (str2 == null) {
                    throw new SecurityException("package required");
                }
                String[] packagesForUid = getContext().getPackageManager().getPackagesForUid(i);
                if (packagesForUid == null || !Arrays.asList(packagesForUid).contains(str2)) {
                    throw new SecurityException("own package only");
                }
                if (!"pickState".equals(str)) {
                    throw new SecurityException("picker writes require SystemUI");
                }
            }
            if ("pickState".equals(str)) {
                if (bundle != null && bundle.getBoolean("start")) {
                    if ((!z2 && !z) || str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                        throw new SecurityException("picker start requires owner or SystemUI");
                    }
                    XposedService m970a = ConfigBroadcastHub.m970a(1000L);
                    if (m970a == null) {
                        return m843a(new Bundle(), "LSPosed service not bound");
                    }
                    ConfigStore c0113o = new ConfigStore(m970a);
                    if (!c0113o.m1838m() || !c0113o.m1827i(str2)) {
                        return m843a(new Bundle(), "Duo 已关闭");
                    }
                    ColorPickSession.m853a(getContext(), str2);
                }
                if (bundle != null && bundle.getBoolean("end")) {
                    if (!z && !z2) {
                        throw new SecurityException("cannot end picker");
                    }
                    ColorPickSession.m852a(getContext(), bundle.getLong("token"));
                }
                Bundle m851a = ColorPickSession.m851a(str2);
                if (!z && !z2) {
                    m851a.remove("package");
                }
                return m851a;
            }
            if (str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                throw new IllegalArgumentException("invalid package");
            }
            synchronized (ColorPickSession.class) {
                synchronized (ConfigStore.class) {
                    Bundle bundle2 = new Bundle();
                    Bundle m851a2 = ColorPickSession.m851a(str2);
                    if (bundle != null && m851a2.getBoolean("active") && m851a2.getLong("token") == bundle.getLong("token")) {
                        if (((PowerManager) getContext().getSystemService(PowerManager.class)).isInteractive() && !((KeyguardManager) getContext().getSystemService(KeyguardManager.class)).isKeyguardLocked()) {
                            String string = bundle.getString("page", "");
                            boolean z3 = bundle.getBoolean("night");
                            if (!string.matches((z3 ? "dark" : "light") + "/[A-Za-z_$][A-Za-z0-9_.$]*\\|")) {
                                return m843a(bundle2, "invalid page");
                            }
                            int i2 = bundle.getInt("color");
                            if ((i2 >>> 24) != 255) {
                                return m843a(bundle2, "invalid colour");
                            }
                            XposedService m970a2 = ConfigBroadcastHub.m970a(1000L);
                            if (m970a2 == null) {
                                return m843a(bundle2, "LSPosed service not bound");
                            }
                            ConfigStore c0113o2 = new ConfigStore(m970a2);
                            if (c0113o2.m1838m() && c0113o2.m1827i(str2)) {
                                if (c0113o2.f1684a.getLong(str2 + "/pageColors/_revision", 0L) != bundle.getLong("revision")) {
                                    return m843a(bundle2, "配置已变化，请重新取色");
                                }
                                if (bundle.getBoolean("default")) {
                                    Integer m1774a = c0113o2.m1774a(str2, false);
                                    Integer m1774a2 = c0113o2.m1774a(str2, true);
                                    Integer valueOf = Integer.valueOf(i2);
                                    if (!z3) {
                                        m1774a = valueOf;
                                    }
                                    if (z3) {
                                        m1774a2 = valueOf;
                                    }
                                    if (!c0113o2.m1780a(str2, m1774a, m1774a2)) {
                                        return m843a(bundle2, "默认色保存失败");
                                    }
                                }
                                Bundle m1773a = c0113o2.m1773a(str2, string, z3, i2, bundle.getInt("edge"), bundle.getLong("revision"), bundle.getBoolean("default"));
                                if (m1773a.getBoolean("bound")) {
                                    try {
                                        str3 = getContext().getPackageManager().getPackageInfo(str2, 0).versionName;
                                    } catch (PackageManager.NameNotFoundException e) {
                                        Log.w("MiDuoTones", "page colours shared without App version: " + str2);
                                        str3 = null;
                                    }
                                    try {
                                        m1773a.putString("share", LicenseClient.m774a(c0113o2, str2, str3).toString());
                                    } catch (JSONException e2) {
                                        Log.w("MiDuoTones", "page colours not shared: " + e2);
                                    }
                                }
                                return m1773a;
                            }
                            return m843a(bundle2, "Duo 已关闭");
                        }
                        return m843a(bundle2, "屏幕已经锁定，取色确认已取消");
                    }
                    return m843a(bundle2, "取色模式已变化，请重新取色");
                }
            }
        } catch (PackageManager.NameNotFoundException e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // android.content.ContentProvider
    /*
    */
    public Bundle call(String str, String str2, Bundle bundle) {
        boolean z;
        Bundle bundle2;
        XposedService m970a;
        char c;
        boolean m1780a;
        int callingUid = Binder.getCallingUid();
        if ("widget396Probe".equals(str)) {
            if (callingUid != 0 && callingUid != f821b) {
                throw new SecurityException("shell or root only");
            }
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    return BundleJson.m1507a(getContext());
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("天气接口验证等待中断", e);
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        if ("foldStart".equals(str)) {
            return FoldEngineLauncher.m1888a(getContext(), callingUid);
        }
        if ("trialTick".equals(str)) {
            return m841a(callingUid, str2);
        }
        if ("duoState".equals(str)) {
            return m840a(callingUid);
        }
        if ("pickState".equals(str) || "pickConfirm".equals(str)) {
            return m842a(callingUid, str, str2, bundle);
        }
        boolean z2 = "pageTones".equals(str) || "keepScreen".equals(str) || "railSidebarApps".equals(str) || "railPanelOrder".equals(str);
        boolean z3 = "railEnabled".equals(str) || "rotationSuggest".equals(str) || "notificationIcons".equals(str) || "searchButton".equals(str) || "pickButton".equals(str) || "foldSplit".equals(str) || "standbyClock".equals(str) || "statusStyles".equals(str) || "railCustom".equals(str) || "iosNc".equals(str) || "workbench".equals(str);
        try {
            if (z3 || z2) {
                if (callingUid == getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid) {
                    z = true;
                    if (callingUid == 0 && callingUid != f821b && !z) {
                        throw new SecurityException("shell or root only (SystemUI: rail reads, pageTones, keepScreen, railSidebarApps and railPanelOrder only)");
                    }
                    bundle2 = new Bundle();
                    m970a = ConfigBroadcastHub.m970a((!z3 || z2) ? 1000L : 5000L);
                    if (m970a != null) {
                        return m843a(bundle2, "LSPosed service not bound (module enabled in LSPosed?)");
                    }
                    ConfigStore c0113o = new ConfigStore(m970a);
                    SharedPreferences sharedPreferences = c0113o.f1684a;
                    if ("keepScreen".equals(str)) {
                        if (bundle != null && bundle.containsKey("set")) {
                            int i = bundle.getInt("set");
                            if (i < 0) {
                                return m843a(bundle2, "negative timeout");
                            }
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            if (i == 0) {
                                edit.remove("_global/screenOffTimeoutSaved");
                            } else {
                                edit.putInt("_global/screenOffTimeoutSaved", i);
                            }
                            if (!edit.commit()) {
                                return m843a(bundle2, "commit failed");
                            }
                        }
                        bundle2.putInt("saved", sharedPreferences.getInt("_global/screenOffTimeoutSaved", 0));
                    } else {
                        boolean z4 = z2;
                        if ("railSidebarApps".equals(str)) {
                            if (bundle != null && bundle.containsKey("set")) {
                                if (!sharedPreferences.edit().putString("_global/railSidebarApps", RailCodec.m945b(RailCodec.m958f(bundle.getString("set")))).commit()) {
                                    return m843a(bundle2, "commit failed");
                                }
                            }
                            bundle2.putString("saved", sharedPreferences.getString("_global/railSidebarApps", ""));
                        } else if ("railPanelOrder".equals(str)) {
                            if (bundle != null && bundle.containsKey("set")) {
                                if (!sharedPreferences.edit().putString("_global/railPanelOrder", RailCodec.m935a(RailCodec.m956e(bundle.getString("set")))).commit()) {
                                    return m843a(bundle2, "commit failed");
                                }
                            }
                            bundle2.putString("saved", sharedPreferences.getString("_global/railPanelOrder", ""));
                        } else if ("iosNc".equals(str)) {
                            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                                String key = entry.getKey();
                                Object value = entry.getValue();
                                if (key != null && key.startsWith("ios_notification_")) {
                                    if (value instanceof Boolean) {
                                        bundle2.putBoolean(key, ((Boolean) value).booleanValue());
                                    } else if (value instanceof Integer) {
                                        bundle2.putInt(key, ((Integer) value).intValue());
                                    } else if (value instanceof Float) {
                                        bundle2.putFloat(key, ((Float) value).floatValue());
                                    } else if (value instanceof Long) {
                                        bundle2.putLong(key, ((Long) value).longValue());
                                    } else if (value instanceof String) {
                                        bundle2.putString(key, (String) value);
                                    }
                                }
                            }
                        } else if ("standbyClock".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1838m() && c0113o.m1868z());
                        } else if ("notificationIcons".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1841n());
                        } else if ("searchButton".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1867y());
                        } else if ("pickButton".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1859t());
                        } else if ("railCustom".equals(str)) {
                            bundle2.putString("layout", sharedPreferences.getString("_global/railCustom", RailCodec.f924g));
                            bundle2.putString("sidebarApps", sharedPreferences.getString("_global/railSidebarApps", ""));
                            bundle2.putString("panelOrder", sharedPreferences.getString("_global/railPanelOrder", ""));
                            bundle2.putBoolean("sidebarFreeform", sharedPreferences.getBoolean("_global/railSidebarFreeform", true));
                            bundle2.putBoolean("sidebarKeyEnd", sharedPreferences.getBoolean("_global/railSidebarKeyEnd", false));
                        } else if ("workbench".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1771B());
                        } else if ("foldSplit".equals(str)) {
                            bundle2.putBoolean("on", c0113o.m1818g());
                            bundle2.putInt("nudge", c0113o.m1813f());
                        } else if ("statusStyles".equals(str)) {
                            bundle2.putBoolean("cellular", c0113o.m1796c());
                            bundle2.putBoolean("thin", c0113o.m1770A());
                            bundle2.putBoolean("percentTop", c0113o.m1856s());
                            int length = ConfigKeys.f1164e0.length;
                            int[] iArr = new int[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                iArr[i2] = c0113o.m1807e(i2);
                            }
                            bundle2.putIntArray("dy", iArr);
                        } else if ("rotationSuggest".equals(str)) {
                            bundle2.putBoolean("portraitRight", c0113o.m1786a(false));
                            bundle2.putBoolean("landscapeRight", c0113o.m1786a(true));
                            if (sharedPreferences.contains("_global/rotationSuggest")) {
                                bundle2.putBoolean("on", c0113o.m1866x());
                            }
                        } else if ("global".equals(str)) {
                            if (bundle != null && bundle.containsKey("px") && !c0113o.m1789b(bundle.getInt("px"))) {
                                return m843a(bundle2, "commit failed");
                            }
                            bundle2.putInt("globalDefaultPx", c0113o.m1829j());
                            bundle2.putInt("globalDefaultPxInner", c0113o.m1830j("inner"));
                            bundle2.putInt("globalDefaultPxOuter", c0113o.m1830j("outer"));
                        } else {
                            if (!"list".equals(str)) {
                                if (str2 != null && str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                                    if (z4) {
                                        if (bundle != null && !bundle.isEmpty()) {
                                            return m843a(bundle2, "use pickConfirm for confirmed colours");
                                        }
                                        return c0113o.m1851q(str2);
                                    }
                                    if (z3) {
                                        bundle2.putBoolean("enabled", c0113o.m1838m() && c0113o.m1827i(str2));
                                        bundle2.putBoolean("innerNativeBar", c0113o.m1833k(str2));
                                        bundle2.putInt("hiddenTop", ConfigKeys.m1231c(c0113o.f1684a, str2));
                                        boolean m1217a = (bundle == null || !bundle.containsKey("railNight")) ? ConfigKeys.m1217a(getContext()) : bundle.getBoolean("railNight");
                                        bundle2.putString("railColor", c0113o.m1795c(str2, m1217a));
                                        bundle2.putBoolean("railBlack", c0113o.m1793b(str2, m1217a));
                                        bundle2.putInt("railBackground", ConfigKeys.m1225b(sharedPreferences, str2, m1217a));
                                        bundle2.putBoolean("railCustomBackground", c0113o.m1774a(str2, m1217a) != null);
                                    } else if (!"railpalette".equals(str)) {
                                        SharedPreferences.Editor edit2 = sharedPreferences.edit();
                                        switch (str.hashCode()) {
                                            case -1335458389:
                                                if (str.equals("delete")) {
                                                    c = 2;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case -1298848381:
                                                if (str.equals("enable")) {
                                                    c = 4;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 102230:
                                                if (str.equals("get")) {
                                                    c = 0;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 113762:
                                                if (str.equals("set")) {
                                                    c = 1;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 106329993:
                                                if (str.equals("raicolor")) {
                                                    c = 3;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 1671308008:
                                                if (str.equals("disable")) {
                                                    c = 5;
                                                    break;
                                                }
                                            default:
                                                c = 65535;
                                                break;
                                        }
                                        switch (c) {
                                            case 0:
                                                edit2 = null;
                                                if (edit2 == null && !edit2.commit()) {
                                                    return m843a(bundle2, "commit failed");
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                if (!"get".equals(str)) {
                                                    bundle2.putString("apply", "force-stop and reopen " + str2);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (bundle != null && bundle.containsKey("px")) {
                                                    Object obj = bundle.get("px");
                                                    int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(String.valueOf(obj).trim());
                                                    int m1210a = ConfigKeys.m1210a(intValue);
                                                    if (m1210a != intValue) {
                                                        bundle2.putString("clamped", intValue + " -> " + m1210a);
                                                    }
                                                    for (String str3 : m845a(bundle)) {
                                                        edit2.putInt(ConfigKeys.m1215a(str2, str3), m1210a);
                                                    }
                                                    if (edit2 == null) {
                                                        break;
                                                    }
                                                    bundle2.putString("package", str2);
                                                    bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                    bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                    bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                    bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                    bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                    if (!"get".equals(str)) {
                                                    }
                                                }
                                                return m843a(bundle2, "set needs --extra px:i:N");
                                            case 2:
                                                if (!c0113o.m1783a(str2, m845a(bundle))) {
                                                    return m843a(bundle2, "commit failed");
                                                }
                                                edit2 = null;
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 3:
                                                Object obj2 = bundle == null ? null : bundle.get("color");
                                                if (obj2 == null) {
                                                    return m843a(bundle2, "raicolor needs --extra color:s:white|black");
                                                }
                                                String trim = String.valueOf(obj2).trim();
                                                if (!"white".equals(trim) && !"black".equals(trim)) {
                                                    return m843a(bundle2, "color must be white or black");
                                                }
                                                edit2.putString(ConfigKeys.m1258q(str2), trim);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 4:
                                                if (ConfigKeys.f1171i.contains(str2)) {
                                                    return m843a(bundle2, "该应用固定不启用 Duo：" + str2);
                                                }
                                                edit2.putBoolean(ConfigKeys.m1243f(str2), true);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 5:
                                                edit2.putBoolean(ConfigKeys.m1243f(str2), false);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", m844a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", m839a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", m839a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", ConfigKeys.m1219a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", ConfigKeys.m1237d(sharedPreferences, str2, ConfigKeys.m1217a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            default:
                                                return m843a(bundle2, "unknown method " + str);
                                        }
                                    } else {
                                        if (bundle == null) {
                                            return m843a(bundle2, "railpalette needs light/dark or copyFrom");
                                        }
                                        if (!bundle.containsKey("copyFrom")) {
                                            if (bundle.containsKey("light") && bundle.containsKey("dark")) {
                                                m1780a = c0113o.m1780a(str2, ConfigKeys.m1257p(bundle.getString("light")), ConfigKeys.m1257p(bundle.getString("dark")));
                                            }
                                            return m843a(bundle2, "light and dark required; use - for default");
                                        }
                                        if (!bundle.containsKey("light") && !bundle.containsKey("dark")) {
                                            String string = bundle.getString("copyFrom");
                                            if (string != null && string.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                                                m1780a = c0113o.m1781a(str2, string);
                                            }
                                            return m843a(bundle2, "copyFrom must be a package name");
                                        }
                                        return m843a(bundle2, "copyFrom cannot be combined with light/dark");
                                        if (!m1780a) {
                                            return m843a(bundle2, "palette save failed or source has no palette");
                                        }
                                        bundle2.putString("palette", ConfigKeys.m1249i(sharedPreferences, str2));
                                    }
                                }
                                return m843a(bundle2, "--arg must be a package name");
                            }
                            StringBuilder sb = new StringBuilder("global default inner=" + c0113o.m1830j("inner") + " outer=" + c0113o.m1830j("outer") + "\n");
                            Iterator<String> it = c0113o.m1854r().iterator();
                            while (it.hasNext()) {
                                String next = it.next();
                                sb.append(next).append(" enabled=").append(m844a(sharedPreferences, next)).append(" railColor=").append(ConfigKeys.m1237d(sharedPreferences, next, ConfigKeys.m1217a(getContext()))).append(" topSafePxInner=").append(m839a(sharedPreferences, next, "inner")).append(" topSafePxOuter=").append(m839a(sharedPreferences, next, "outer")).append(ConfigKeys.m1219a(sharedPreferences, next, "inner") ? "" : "(default)").append('\n');
                            }
                            bundle2.putString("apps", sb.toString().trim());
                        }
                    }
                    return bundle2;
                }
            }
            m970a = ConfigBroadcastHub.m970a((!z3 || z2) ? 1000L : 5000L);
            if (m970a != null) {
            }
        } catch (Throwable th) {
            return m843a(bundle2, String.valueOf(th));
        }
        z = false;
        if (callingUid == 0) {
        }
        bundle2 = new Bundle();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        ConfigBroadcastHub.m972a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    /* renamed from: a */
    private Bundle m841a(int i, String str) {
        if (i == 1000) {
            Bundle bundle = new Bundle();
            try {
                XposedService m970a = ConfigBroadcastHub.m970a(5000L);
                if (m970a == null) {
                    return m843a(bundle, "LSPosed service not bound");
                }
                SharedPreferences sharedPreferences = new ConfigStore(m970a).f1684a;
                synchronized (LicenseClient.class) {
                    int i2 = sharedPreferences.getInt("_global/trialUsedSec", 0);
                    int max = Math.max(i2, Integer.parseInt(str));
                    if (max != i2 && !sharedPreferences.edit().putInt("_global/trialUsedSec", max).commit()) {
                        return m843a(bundle, "commit failed");
                    }
                    if (max != i2) {
                        LicenseClient.m786b(max);
                    }
                    bundle.putInt("trialUsedSec", max);
                    bundle.putString("token", sharedPreferences.getString("_global/licenseToken", null));
                    return bundle;
                }
            } catch (Throwable th) {
                return m843a(bundle, String.valueOf(th));
            }
        }
        throw new SecurityException("system_server only");
    }

    /* renamed from: a */
    private Bundle m840a(int i) {
        if (i == 1000) {
            Bundle bundle = new Bundle();
            XposedService m970a = ConfigBroadcastHub.m970a(5000L);
            if (m970a == null) {
                return m843a(bundle, "LSPosed service not bound");
            }
            Iterator<Map.Entry<String, ?>> it = new ConfigStore(m970a).f1684a.getAll().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                Object value = next.getValue();
                if (key.endsWith("/enabled") && !key.startsWith("_") && (value instanceof Boolean)) {
                    bundle.putBoolean(key, !ConfigKeys.f1171i.contains(key.substring(0, key.length() + (-8))) && ((Boolean) value).booleanValue());
                } else if (("_global/master".equals(key) || ConfigKeys.m1251j(key) || ConfigKeys.m1255n(key)) && (value instanceof Boolean)) {
                    bundle.putBoolean(key, ((Boolean) value).booleanValue());
                } else if ("_global/licenseToken".equals(key) && (value instanceof String)) {
                    bundle.putString(key, (String) value);
                } else if (ConfigKeys.m1262u(key) && (value instanceof Integer)) {
                    bundle.putInt(key, ((Integer) value).intValue());
                } else if (ConfigKeys.m1248h(key) || "_global/nonDuoOuterTopPx".equals(key)) {
                    if (value instanceof Integer) {
                        bundle.putInt(key, ((Integer) value).intValue());
                    }
                }
            }
            bundle.putBoolean("_global/master", new ConfigStore(m970a).m1838m());
            Iterator<String> it2 = ConfigKeys.f1173j.iterator();
            while (it2.hasNext()) {
                String m1243f = ConfigKeys.m1243f(it2.next());
                if (!bundle.containsKey(m1243f)) {
                    bundle.putBoolean(m1243f, true);
                }
            }
            return bundle;
        }
        throw new SecurityException("system_server only");
    }

    /* renamed from: a */
    private static boolean m844a(SharedPreferences sharedPreferences, String str) {
        return !ConfigKeys.f1171i.contains(str) && sharedPreferences.getBoolean(ConfigKeys.m1243f(str), ConfigKeys.m1242e(str));
    }

    /* renamed from: a */
    private static int m839a(SharedPreferences sharedPreferences, String str, String str2) {
        return ConfigKeys.m1224b(sharedPreferences, str, str2);
    }

    /* renamed from: a */
    private static String[] m845a(Bundle bundle) {
        String string = bundle == null ? null : bundle.getString("side");
        if (!"inner".equals(string) && !"outer".equals(string)) {
            return ConfigKeys.f1189t;
        }
        return new String[]{string};
    }

    /* renamed from: a */
    private static Bundle m843a(Bundle bundle, String str) {
        if (bundle.containsKey("applied")) {
            bundle.putString("errors", str);
        }
        bundle.putString("error", str);
        return bundle;
    }
}
