package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class r {
    static final int a = 0;
    static final int b = 1;
    static final int c = 2;
    private static final java.lang.String f = "local:4639175402683733248";
    private static final java.lang.String g = "local:4639175068132267009";
    private static final java.lang.String h = "/data/adb/lspd/config/modules_config.db";
    private static final java.lang.String i = "需要 Root 才能检查";
    private static final java.lang.String k = "：桌面开合有动画，App 里开合没有动画。";
    private static final java.lang.String[] d = {"system", "com.android.systemui", "com.miui.home", "com.miui.personalassistant"};
    private static final java.lang.String[] e = {"系统框架", "系统界面", "小米桌面", "智能助理"};
    private static final java.lang.String j = "/data/system/theme_magic/users/" + (android.os.Process.myUid() / 100000) + "/wallpaper/data/";

    static final class a {
        final java.lang.String a;
        final java.lang.String b;
        final int c;

        a(java.lang.String str, int i, java.lang.String str2) {
            this.a = str;
            this.c = i;
            this.b = str2;
        }
    }

    r() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0276  */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15, types: [int] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.util.List<dev.duo.hookprobe.r.a> a(android.content.Context r17, dev.duo.hookprobe.C0026o r18, boolean r19, boolean r20, java.util.Set<java.lang.String> r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.r.a(android.content.Context, dev.duo.hookprobe.o, boolean, boolean, java.util.Set, java.lang.String, java.lang.String):java.util.List");
    }

    private static java.lang.String b(java.lang.String str) throws java.lang.Exception {
        return dev.duo.hookprobe.M.a(str);
    }

    private static void a(android.content.Context context, java.util.List<dev.duo.hookprobe.r.a> list) {
        try {
            org.json.JSONArray jSONArray = null;
            for (java.lang.String str : b("CLASSPATH=" + a(context.getApplicationInfo().sourceDir) + " exec /system/bin/timeout -s KILL 8 /system/bin/app_process /system/bin --nice-name=MiDuoFoldPreflight dev.duo.fold.Preflight").split("\\n")) {
                if (str.startsWith("MiDuoFoldCheck:")) {
                    jSONArray = new org.json.JSONArray(str.substring(15));
                }
            }
            if (jSONArray != null && jSONArray.length() == 4) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    org.json.JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                    int i3 = jSONArray2.getInt(1);
                    if (i3 >= 0 && i3 <= 2) {
                        arrayList.add(new dev.duo.hookprobe.r.a(jSONArray2.getString(0), i3, jSONArray2.getString(2)));
                    } else {
                        throw new java.lang.IllegalStateException("检测状态无效");
                    }
                }
                list.addAll(arrayList);
                return;
            }
            throw new java.lang.IllegalStateException("未收到完整检测结果");
        } catch (java.lang.Exception e2) {
            java.lang.String message = e2.getMessage();
            java.lang.StringBuilder append = new java.lang.StringBuilder().append("检查失败：");
            if (message == null || message.trim().isEmpty()) {
                message = "检测未完成或超过8秒";
            }
            list.add(new dev.duo.hookprobe.r.a("关键接口与传感器数据", 2, append.append(message).toString()));
        }
    }

    private static dev.duo.hookprobe.r.a a(java.lang.String str, java.lang.String str2) {
        java.lang.String str3;
        try {
            java.lang.String str4 = null;
            java.lang.String a2 = str.trim().isEmpty() ? null : dev.duo.fold.i.a(new java.io.ByteArrayInputStream(str.getBytes(java.nio.charset.StandardCharsets.UTF_8)), 4);
            if (!str2.trim().isEmpty()) {
                str4 = dev.duo.fold.i.a(new java.io.ByteArrayInputStream(str2.getBytes(java.nio.charset.StandardCharsets.UTF_8)), 1);
            }
            if (a2 != null && str4 != null) {
                java.lang.String trim = b("test -r " + a(a2) + " && test -r " + a(str4) + " || { echo unreadable; exit 0; }; cmp -s " + a(a2) + " " + a(str4) + " && echo same || echo different").trim();
                if ("same".equals(trim)) {
                    return new dev.duo.hookprobe.r.a("壁纸", 0, "内外屏是同一张静态图片");
                }
                return new dev.duo.hookprobe.r.a("壁纸", 1, ("unreadable".equals(trim) ? "读不到壁纸原图" : "内外屏是两张不同的图片") + k + "内外屏换成同一张静态图片即可");
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            if (a2 == null && str4 == null) {
                str3 = "内外屏";
            } else if (a2 == null) {
                str3 = "外屏";
            } else {
                str3 = "内屏";
            }
            return new dev.duo.hookprobe.r.a("壁纸", 1, sb.append(str3).append("不是静态图片壁纸（动态、带特效或模糊）").append(k).append("内外屏换成同一张静态图片即可").toString());
        } catch (java.lang.Exception e2) {
            return new dev.duo.hookprobe.r.a("壁纸", 1, "壁纸检查失败（" + e2.getMessage() + "）");
        }
    }

    private static java.lang.String a(java.lang.String str) {
        return "'" + str.replace("'", "'\\''") + "'";
    }

    static dev.duo.hookprobe.r.a a(boolean z) {
        boolean equals = "247".equals(dev.duo.hookprobe.MainActivity.i("debug.duo.foldanim"));
        if (!z) {
            return new dev.duo.hookprobe.r.a("开合动画", 0, equals ? "已关闭，系统端许可仍在加载状态" : "已关闭");
        }
        if (!equals) {
            return new dev.duo.hookprobe.r.a("开合动画", 1, "已打开，系统端许可尚未加载");
        }
        try {
            if (b("pgrep -f '^MiDuoFoldEngine'; true").trim().isEmpty()) {
                return new dev.duo.hookprobe.r.a("开合动画", 2, "引擎未运行");
            }
            return new dev.duo.hookprobe.r.a("开合动画", 1, "引擎运行中，实际动画效果尚未确认");
        } catch (java.lang.Exception e2) {
            return new dev.duo.hookprobe.r.a("开合动画", 2, "无法检查（未获得 Root）");
        }
    }

    private static java.lang.String a(android.content.Context context, java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        java.io.File file = new java.io.File(context.getCacheDir(), "foldcheck");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new java.lang.IllegalStateException("无法建立缓存目录");
        }
        java.io.File[] fileArr = {new java.io.File(file, "modules_config.db"), new java.io.File(file, "modules_config.db-wal"), new java.io.File(file, "modules_config.db-shm")};
        int i2 = 0;
        try {
            java.nio.file.Files.write(fileArr[0].toPath(), java.util.Base64.getMimeDecoder().decode(str), new java.nio.file.OpenOption[0]);
            if (!str2.trim().isEmpty()) {
                java.nio.file.Files.write(fileArr[1].toPath(), java.util.Base64.getMimeDecoder().decode(str2), new java.nio.file.OpenOption[0]);
            }
            android.database.sqlite.SQLiteDatabase openDatabase = android.database.sqlite.SQLiteDatabase.openDatabase(fileArr[0].getPath(), null, 0);
            try {
                android.database.Cursor rawQuery = openDatabase.rawQuery("select apk_path from modules where module_pkg_name=?", new java.lang.String[]{context.getPackageName()});
                try {
                    java.lang.String string = rawQuery.moveToFirst() ? rawQuery.getString(0) : null;
                    rawQuery.close();
                    openDatabase.close();
                    return string;
                } finally {
                }
            } finally {
            }
        } finally {
            while (i2 < 3) {
                fileArr[i2].delete();
                i2++;
            }
        }
    }
}
