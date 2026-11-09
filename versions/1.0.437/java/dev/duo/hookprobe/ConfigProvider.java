package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class ConfigProvider extends android.content.ContentProvider {
    private static final int a = 0;
    private static final int b = 2000;

    private android.os.Bundle a(int i, java.lang.String str, java.lang.String str2, android.os.Bundle bundle) {
        java.lang.String str3;
        try {
            boolean z = i == getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
            boolean z2 = i == android.os.Process.myUid() || i == 0 || i == b;
            if (!z && !z2) {
                if (str2 == null) {
                    throw new java.lang.SecurityException("package required");
                }
                java.lang.String[] packagesForUid = getContext().getPackageManager().getPackagesForUid(i);
                if (packagesForUid == null || !java.util.Arrays.asList(packagesForUid).contains(str2)) {
                    throw new java.lang.SecurityException("own package only");
                }
                if (!"pickState".equals(str)) {
                    throw new java.lang.SecurityException("picker writes require SystemUI");
                }
            }
            if ("pickState".equals(str)) {
                if (bundle != null && bundle.getBoolean("start")) {
                    if ((!z2 && !z) || str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                        throw new java.lang.SecurityException("picker start requires owner or SystemUI");
                    }
                    io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(1000L);
                    if (a2 == null) {
                        return a(new android.os.Bundle(), "LSPosed service not bound");
                    }
                    dev.duo.hookprobe.C0026o c0026o = new dev.duo.hookprobe.C0026o(a2);
                    if (!c0026o.m() || !c0026o.g(str2)) {
                        return a(new android.os.Bundle(), "Duo 已关闭");
                    }
                    dev.duo.hookprobe.F.a(getContext(), str2);
                }
                if (bundle != null && bundle.getBoolean("end")) {
                    if (!z && !z2) {
                        throw new java.lang.SecurityException("cannot end picker");
                    }
                    dev.duo.hookprobe.F.a(getContext(), bundle.getLong("token"));
                }
                android.os.Bundle a3 = dev.duo.hookprobe.F.a(str2);
                if (!z && !z2) {
                    a3.remove("package");
                }
                return a3;
            }
            if (str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                throw new java.lang.IllegalArgumentException("invalid package");
            }
            synchronized (dev.duo.hookprobe.F.class) {
                synchronized (dev.duo.hookprobe.C0026o.class) {
                    android.os.Bundle bundle2 = new android.os.Bundle();
                    android.os.Bundle a4 = dev.duo.hookprobe.F.a(str2);
                    if (bundle != null && a4.getBoolean("active") && a4.getLong("token") == bundle.getLong("token")) {
                        if (((android.os.PowerManager) getContext().getSystemService(android.os.PowerManager.class)).isInteractive() && !((android.app.KeyguardManager) getContext().getSystemService(android.app.KeyguardManager.class)).isKeyguardLocked()) {
                            java.lang.String string = bundle.getString("page", "");
                            boolean z3 = bundle.getBoolean("night");
                            if (!string.matches((z3 ? "dark" : "light") + "/[A-Za-z_$][A-Za-z0-9_.$]*\\|")) {
                                return a(bundle2, "invalid page");
                            }
                            int i2 = bundle.getInt("color");
                            if ((i2 >>> 24) != 255) {
                                return a(bundle2, "invalid colour");
                            }
                            io.github.libxposed.service.XposedService a5 = dev.duo.hookprobe.L.a(1000L);
                            if (a5 == null) {
                                return a(bundle2, "LSPosed service not bound");
                            }
                            dev.duo.hookprobe.C0026o c0026o2 = new dev.duo.hookprobe.C0026o(a5);
                            if (c0026o2.m() && c0026o2.g(str2)) {
                                if (c0026o2.a.getLong(str2 + "/pageColors/_revision", 0L) != bundle.getLong("revision")) {
                                    return a(bundle2, "配置已变化，请重新取色");
                                }
                                if (bundle.getBoolean("default")) {
                                    java.lang.Integer a6 = c0026o2.a(str2, false);
                                    java.lang.Integer a7 = c0026o2.a(str2, true);
                                    java.lang.Integer valueOf = java.lang.Integer.valueOf(i2);
                                    if (!z3) {
                                        a6 = valueOf;
                                    }
                                    if (z3) {
                                        a7 = valueOf;
                                    }
                                    if (!c0026o2.a(str2, a6, a7)) {
                                        return a(bundle2, "默认色保存失败");
                                    }
                                }
                                android.os.Bundle a8 = c0026o2.a(str2, string, z3, i2, bundle.getInt("edge"), bundle.getLong("revision"), bundle.getBoolean("default"));
                                if (a8.getBoolean("bound")) {
                                    try {
                                        str3 = getContext().getPackageManager().getPackageInfo(str2, 0).versionName;
                                    } catch (android.content.pm.PackageManager.NameNotFoundException e) {
                                        android.util.Log.w("MiDuoTones", "page colours shared without App version: " + str2);
                                        str3 = null;
                                    }
                                    try {
                                        a8.putString("share", dev.duo.hookprobe.B.a(c0026o2, str2, str3).toString());
                                    } catch (org.json.JSONException e2) {
                                        android.util.Log.w("MiDuoTones", "page colours not shared: " + e2);
                                    }
                                }
                                return a8;
                            }
                            return a(bundle2, "Duo 已关闭");
                        }
                        return a(bundle2, "屏幕已经锁定，取色确认已取消");
                    }
                    return a(bundle2, "取色模式已变化，请重新取色");
                }
            }
        } catch (android.content.pm.PackageManager.NameNotFoundException e3) {
            throw new java.lang.IllegalStateException(e3);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:310:0x067e A[Catch: all -> 0x0701, TryCatch #0 {all -> 0x0701, blocks: (B:80:0x0137, B:82:0x013d, B:84:0x0144, B:89:0x015d, B:91:0x0163, B:93:0x0169, B:95:0x0170, B:97:0x0176, B:98:0x017d, B:100:0x0184, B:102:0x017a, B:103:0x0189, B:105:0x0193, B:109:0x01a3, B:111:0x01a9, B:113:0x01c3, B:115:0x01c8, B:116:0x01d1, B:120:0x01dd, B:122:0x01e3, B:124:0x01fd, B:126:0x0202, B:127:0x020b, B:130:0x0217, B:132:0x021d, B:135:0x0226, B:137:0x022b, B:139:0x0231, B:140:0x023a, B:142:0x0242, B:143:0x024b, B:145:0x0253, B:146:0x025c, B:148:0x0267, B:149:0x02ab, B:151:0x02b3, B:152:0x02bc, B:154:0x02c4, B:155:0x02d6, B:157:0x02de, B:159:0x0301, B:161:0x030a, B:162:0x0311, B:164:0x0317, B:166:0x0333, B:167:0x033c, B:171:0x034c, B:173:0x0352, B:175:0x035c, B:177:0x0361, B:178:0x037e, B:180:0x0386, B:181:0x03be, B:183:0x03c4, B:187:0x0418, B:191:0x0423, B:193:0x0434, B:198:0x0442, B:201:0x0449, B:203:0x0450, B:206:0x0457, B:208:0x045f, B:211:0x0468, B:213:0x0481, B:215:0x0489, B:216:0x0498, B:219:0x04bf, B:221:0x0490, B:223:0x04c4, B:226:0x04ce, B:228:0x04d5, B:231:0x04e1, B:233:0x04e7, B:236:0x04ee, B:238:0x04f6, B:241:0x04ff, B:243:0x0536, B:245:0x053d, B:246:0x0504, B:248:0x050b, B:250:0x0512, B:252:0x0518, B:255:0x051f, B:256:0x0548, B:258:0x054f, B:259:0x0557, B:262:0x0596, B:263:0x0599, B:264:0x06e4, B:266:0x059d, B:269:0x05a6, B:271:0x05ae, B:273:0x05c6, B:277:0x05da, B:279:0x05e1, B:281:0x05f1, B:283:0x05f9, B:285:0x0600, B:286:0x05d2, B:287:0x0608, B:289:0x0612, B:293:0x061a, B:296:0x0621, B:298:0x0629, B:299:0x063c, B:301:0x0643, B:302:0x065f, B:304:0x0666, B:306:0x0630, B:307:0x0674, B:310:0x067e, B:312:0x0684, B:314:0x0689, B:316:0x06cb, B:317:0x055b, B:320:0x0565, B:323:0x056f, B:326:0x0577, B:329:0x0581, B:332:0x058b, B:335:0x06fa), top: B:79:0x0137 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06cb A[Catch: all -> 0x0701, TryCatch #0 {all -> 0x0701, blocks: (B:80:0x0137, B:82:0x013d, B:84:0x0144, B:89:0x015d, B:91:0x0163, B:93:0x0169, B:95:0x0170, B:97:0x0176, B:98:0x017d, B:100:0x0184, B:102:0x017a, B:103:0x0189, B:105:0x0193, B:109:0x01a3, B:111:0x01a9, B:113:0x01c3, B:115:0x01c8, B:116:0x01d1, B:120:0x01dd, B:122:0x01e3, B:124:0x01fd, B:126:0x0202, B:127:0x020b, B:130:0x0217, B:132:0x021d, B:135:0x0226, B:137:0x022b, B:139:0x0231, B:140:0x023a, B:142:0x0242, B:143:0x024b, B:145:0x0253, B:146:0x025c, B:148:0x0267, B:149:0x02ab, B:151:0x02b3, B:152:0x02bc, B:154:0x02c4, B:155:0x02d6, B:157:0x02de, B:159:0x0301, B:161:0x030a, B:162:0x0311, B:164:0x0317, B:166:0x0333, B:167:0x033c, B:171:0x034c, B:173:0x0352, B:175:0x035c, B:177:0x0361, B:178:0x037e, B:180:0x0386, B:181:0x03be, B:183:0x03c4, B:187:0x0418, B:191:0x0423, B:193:0x0434, B:198:0x0442, B:201:0x0449, B:203:0x0450, B:206:0x0457, B:208:0x045f, B:211:0x0468, B:213:0x0481, B:215:0x0489, B:216:0x0498, B:219:0x04bf, B:221:0x0490, B:223:0x04c4, B:226:0x04ce, B:228:0x04d5, B:231:0x04e1, B:233:0x04e7, B:236:0x04ee, B:238:0x04f6, B:241:0x04ff, B:243:0x0536, B:245:0x053d, B:246:0x0504, B:248:0x050b, B:250:0x0512, B:252:0x0518, B:255:0x051f, B:256:0x0548, B:258:0x054f, B:259:0x0557, B:262:0x0596, B:263:0x0599, B:264:0x06e4, B:266:0x059d, B:269:0x05a6, B:271:0x05ae, B:273:0x05c6, B:277:0x05da, B:279:0x05e1, B:281:0x05f1, B:283:0x05f9, B:285:0x0600, B:286:0x05d2, B:287:0x0608, B:289:0x0612, B:293:0x061a, B:296:0x0621, B:298:0x0629, B:299:0x063c, B:301:0x0643, B:302:0x065f, B:304:0x0666, B:306:0x0630, B:307:0x0674, B:310:0x067e, B:312:0x0684, B:314:0x0689, B:316:0x06cb, B:317:0x055b, B:320:0x0565, B:323:0x056f, B:326:0x0577, B:329:0x0581, B:332:0x058b, B:335:0x06fa), top: B:79:0x0137 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013d A[Catch: all -> 0x0701, TryCatch #0 {all -> 0x0701, blocks: (B:80:0x0137, B:82:0x013d, B:84:0x0144, B:89:0x015d, B:91:0x0163, B:93:0x0169, B:95:0x0170, B:97:0x0176, B:98:0x017d, B:100:0x0184, B:102:0x017a, B:103:0x0189, B:105:0x0193, B:109:0x01a3, B:111:0x01a9, B:113:0x01c3, B:115:0x01c8, B:116:0x01d1, B:120:0x01dd, B:122:0x01e3, B:124:0x01fd, B:126:0x0202, B:127:0x020b, B:130:0x0217, B:132:0x021d, B:135:0x0226, B:137:0x022b, B:139:0x0231, B:140:0x023a, B:142:0x0242, B:143:0x024b, B:145:0x0253, B:146:0x025c, B:148:0x0267, B:149:0x02ab, B:151:0x02b3, B:152:0x02bc, B:154:0x02c4, B:155:0x02d6, B:157:0x02de, B:159:0x0301, B:161:0x030a, B:162:0x0311, B:164:0x0317, B:166:0x0333, B:167:0x033c, B:171:0x034c, B:173:0x0352, B:175:0x035c, B:177:0x0361, B:178:0x037e, B:180:0x0386, B:181:0x03be, B:183:0x03c4, B:187:0x0418, B:191:0x0423, B:193:0x0434, B:198:0x0442, B:201:0x0449, B:203:0x0450, B:206:0x0457, B:208:0x045f, B:211:0x0468, B:213:0x0481, B:215:0x0489, B:216:0x0498, B:219:0x04bf, B:221:0x0490, B:223:0x04c4, B:226:0x04ce, B:228:0x04d5, B:231:0x04e1, B:233:0x04e7, B:236:0x04ee, B:238:0x04f6, B:241:0x04ff, B:243:0x0536, B:245:0x053d, B:246:0x0504, B:248:0x050b, B:250:0x0512, B:252:0x0518, B:255:0x051f, B:256:0x0548, B:258:0x054f, B:259:0x0557, B:262:0x0596, B:263:0x0599, B:264:0x06e4, B:266:0x059d, B:269:0x05a6, B:271:0x05ae, B:273:0x05c6, B:277:0x05da, B:279:0x05e1, B:281:0x05f1, B:283:0x05f9, B:285:0x0600, B:286:0x05d2, B:287:0x0608, B:289:0x0612, B:293:0x061a, B:296:0x0621, B:298:0x0629, B:299:0x063c, B:301:0x0643, B:302:0x065f, B:304:0x0666, B:306:0x0630, B:307:0x0674, B:310:0x067e, B:312:0x0684, B:314:0x0689, B:316:0x06cb, B:317:0x055b, B:320:0x0565, B:323:0x056f, B:326:0x0577, B:329:0x0581, B:332:0x058b, B:335:0x06fa), top: B:79:0x0137 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0144 A[Catch: all -> 0x0701, TRY_LEAVE, TryCatch #0 {all -> 0x0701, blocks: (B:80:0x0137, B:82:0x013d, B:84:0x0144, B:89:0x015d, B:91:0x0163, B:93:0x0169, B:95:0x0170, B:97:0x0176, B:98:0x017d, B:100:0x0184, B:102:0x017a, B:103:0x0189, B:105:0x0193, B:109:0x01a3, B:111:0x01a9, B:113:0x01c3, B:115:0x01c8, B:116:0x01d1, B:120:0x01dd, B:122:0x01e3, B:124:0x01fd, B:126:0x0202, B:127:0x020b, B:130:0x0217, B:132:0x021d, B:135:0x0226, B:137:0x022b, B:139:0x0231, B:140:0x023a, B:142:0x0242, B:143:0x024b, B:145:0x0253, B:146:0x025c, B:148:0x0267, B:149:0x02ab, B:151:0x02b3, B:152:0x02bc, B:154:0x02c4, B:155:0x02d6, B:157:0x02de, B:159:0x0301, B:161:0x030a, B:162:0x0311, B:164:0x0317, B:166:0x0333, B:167:0x033c, B:171:0x034c, B:173:0x0352, B:175:0x035c, B:177:0x0361, B:178:0x037e, B:180:0x0386, B:181:0x03be, B:183:0x03c4, B:187:0x0418, B:191:0x0423, B:193:0x0434, B:198:0x0442, B:201:0x0449, B:203:0x0450, B:206:0x0457, B:208:0x045f, B:211:0x0468, B:213:0x0481, B:215:0x0489, B:216:0x0498, B:219:0x04bf, B:221:0x0490, B:223:0x04c4, B:226:0x04ce, B:228:0x04d5, B:231:0x04e1, B:233:0x04e7, B:236:0x04ee, B:238:0x04f6, B:241:0x04ff, B:243:0x0536, B:245:0x053d, B:246:0x0504, B:248:0x050b, B:250:0x0512, B:252:0x0518, B:255:0x051f, B:256:0x0548, B:258:0x054f, B:259:0x0557, B:262:0x0596, B:263:0x0599, B:264:0x06e4, B:266:0x059d, B:269:0x05a6, B:271:0x05ae, B:273:0x05c6, B:277:0x05da, B:279:0x05e1, B:281:0x05f1, B:283:0x05f9, B:285:0x0600, B:286:0x05d2, B:287:0x0608, B:289:0x0612, B:293:0x061a, B:296:0x0621, B:298:0x0629, B:299:0x063c, B:301:0x0643, B:302:0x065f, B:304:0x0666, B:306:0x0630, B:307:0x0674, B:310:0x067e, B:312:0x0684, B:314:0x0689, B:316:0x06cb, B:317:0x055b, B:320:0x0565, B:323:0x056f, B:326:0x0577, B:329:0x0581, B:332:0x058b, B:335:0x06fa), top: B:79:0x0137 }] */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(java.lang.String r20, java.lang.String r21, android.os.Bundle r22) {
        /*
            Method dump skipped, instructions count: 1850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.ConfigProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        dev.duo.hookprobe.L.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        return 0;
    }

    private android.os.Bundle a(int i, java.lang.String str) {
        if (i == 1000) {
            android.os.Bundle bundle = new android.os.Bundle();
            try {
                io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(5000L);
                if (a2 == null) {
                    return a(bundle, "LSPosed service not bound");
                }
                android.content.SharedPreferences sharedPreferences = new dev.duo.hookprobe.C0026o(a2).a;
                synchronized (dev.duo.hookprobe.B.class) {
                    int i2 = sharedPreferences.getInt("_global/trialUsedSec", 0);
                    int max = java.lang.Math.max(i2, java.lang.Integer.parseInt(str));
                    if (max != i2 && !sharedPreferences.edit().putInt("_global/trialUsedSec", max).commit()) {
                        return a(bundle, "commit failed");
                    }
                    if (max != i2) {
                        dev.duo.hookprobe.B.b(max);
                    }
                    bundle.putInt("trialUsedSec", max);
                    bundle.putString("token", sharedPreferences.getString("_global/licenseToken", null));
                    return bundle;
                }
            } catch (java.lang.Throwable th) {
                return a(bundle, java.lang.String.valueOf(th));
            }
        }
        throw new java.lang.SecurityException("system_server only");
    }

    private android.os.Bundle a(int i) {
        if (i == 1000) {
            android.os.Bundle bundle = new android.os.Bundle();
            io.github.libxposed.service.XposedService a2 = dev.duo.hookprobe.L.a(5000L);
            if (a2 == null) {
                return a(bundle, "LSPosed service not bound");
            }
            java.util.Iterator<java.util.Map.Entry<java.lang.String, ?>> it = new dev.duo.hookprobe.C0026o(a2).a.getAll().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                java.util.Map.Entry<java.lang.String, ?> next = it.next();
                java.lang.String key = next.getKey();
                java.lang.Object value = next.getValue();
                if (key.endsWith("/enabled") && !key.startsWith("_") && (value instanceof java.lang.Boolean)) {
                    bundle.putBoolean(key, !dev.duo.hookprobe.P.i.contains(key.substring(0, key.length() + (-8))) && ((java.lang.Boolean) value).booleanValue());
                } else if (("_global/master".equals(key) || dev.duo.hookprobe.P.j(key) || dev.duo.hookprobe.P.n(key)) && (value instanceof java.lang.Boolean)) {
                    bundle.putBoolean(key, ((java.lang.Boolean) value).booleanValue());
                } else if ("_global/licenseToken".equals(key) && (value instanceof java.lang.String)) {
                    bundle.putString(key, (java.lang.String) value);
                } else if (dev.duo.hookprobe.P.u(key) && (value instanceof java.lang.Integer)) {
                    bundle.putInt(key, ((java.lang.Integer) value).intValue());
                } else if (dev.duo.hookprobe.P.h(key) || "_global/nonDuoOuterTopPx".equals(key)) {
                    if (value instanceof java.lang.Integer) {
                        bundle.putInt(key, ((java.lang.Integer) value).intValue());
                    }
                }
            }
            bundle.putBoolean("_global/master", new dev.duo.hookprobe.C0026o(a2).m());
            java.util.Iterator<java.lang.String> it2 = dev.duo.hookprobe.P.j.iterator();
            while (it2.hasNext()) {
                java.lang.String f = dev.duo.hookprobe.P.f(it2.next());
                if (!bundle.containsKey(f)) {
                    bundle.putBoolean(f, true);
                }
            }
            return bundle;
        }
        throw new java.lang.SecurityException("system_server only");
    }

    private static boolean a(android.content.SharedPreferences sharedPreferences, java.lang.String str) {
        return !dev.duo.hookprobe.P.i.contains(str) && sharedPreferences.getBoolean(dev.duo.hookprobe.P.f(str), dev.duo.hookprobe.P.e(str));
    }

    private static int a(android.content.SharedPreferences sharedPreferences, java.lang.String str, java.lang.String str2) {
        return dev.duo.hookprobe.P.b(sharedPreferences, str, str2);
    }

    private static java.lang.String[] a(android.os.Bundle bundle) {
        java.lang.String string = bundle == null ? null : bundle.getString("side");
        if (!"inner".equals(string) && !"outer".equals(string)) {
            return dev.duo.hookprobe.P.t;
        }
        return new java.lang.String[]{string};
    }

    private static android.os.Bundle a(android.os.Bundle bundle, java.lang.String str) {
        if (bundle.containsKey("applied")) {
            bundle.putString("errors", str);
        }
        bundle.putString("error", str);
        return bundle;
    }
}
