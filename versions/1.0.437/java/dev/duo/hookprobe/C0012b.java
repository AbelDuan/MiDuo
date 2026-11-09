package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0012b {
    private static final java.lang.String a = "widget_page_pending";
    private static final long b = 600000;
    private static final long c = 5000;
    private static final long d = 1500;
    static final java.lang.String e = "update favorites set screen=? where appWidgetId=? and appWidgetProvider=? and container=-100";
    static final java.lang.String f = "update screens set screenOrder=? where _id=?";

    /* renamed from: dev.duo.hookprobe.b$a */
    static final class a {
        final java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> a;
        final java.util.HashMap<java.lang.Long, java.lang.Integer> b;
        final java.util.ArrayList<java.lang.Long> c;

        a(java.util.LinkedHashMap<java.lang.Integer, java.lang.Long> linkedHashMap, java.util.HashMap<java.lang.Long, java.lang.Integer> hashMap, java.util.ArrayList<java.lang.Long> arrayList) {
            this.a = linkedHashMap;
            this.b = hashMap;
            this.c = arrayList;
        }
    }

    /* renamed from: dev.duo.hookprobe.b$b, reason: collision with other inner class name */
    static final class C0001b {
        final java.io.File a;
        final java.lang.String b;
        final java.lang.String c;
        final long d;

        C0001b(java.io.File file, java.lang.String str, java.lang.String str2, long j) {
            this.a = file;
            this.b = str;
            this.c = str2;
            this.d = j;
        }
    }

    /* renamed from: dev.duo.hookprobe.b$d */
    interface d {
        void a(dev.duo.hookprobe.C0012b.c cVar, java.lang.Exception exc);

        void a(java.lang.String str);
    }

    private C0012b() {
    }

    static java.lang.String a() {
        return "/proc/1/root/data/user_de/" + (android.os.Process.myUid() / 100000) + "/com.miui.home";
    }

    static boolean b(android.content.Context context) {
        java.io.File file = new java.io.File(context.getFilesDir(), a);
        if (!file.exists()) {
            return false;
        }
        if (java.lang.System.currentTimeMillis() - file.lastModified() <= b) {
            return true;
        }
        file.delete();
        return false;
    }

    static java.util.Set<java.lang.Long> c(android.content.Context context) {
        java.util.HashSet hashSet = new java.util.HashSet();
        try {
            java.lang.String trim = new java.lang.String(java.nio.file.Files.readAllBytes(new java.io.File(context.getFilesDir(), a).toPath()), java.nio.charset.StandardCharsets.UTF_8).trim();
            if (!trim.isEmpty()) {
                for (java.lang.String str : trim.split(",")) {
                    hashSet.add(java.lang.Long.valueOf(java.lang.Long.parseLong(str.trim())));
                }
            }
        } catch (java.io.IOException | java.lang.NumberFormatException e2) {
            android.util.Log.w("MiDuoAlbum", "pending mark has no readable screens", e2);
            hashSet.clear();
        }
        return hashSet;
    }

    static void a(android.content.Context context, java.util.List<java.lang.Long> list) {
        java.io.File file = new java.io.File(context.getFilesDir(), a);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.util.Iterator<java.lang.Long> it = list.iterator();
        while (it.hasNext()) {
            sb.append(sb.length() == 0 ? "" : ",").append(it.next().longValue());
        }
        try {
            java.nio.file.Files.write(file.toPath(), sb.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8), new java.nio.file.OpenOption[0]);
            if (file.setLastModified(java.lang.System.currentTimeMillis())) {
                return;
            }
            android.util.Log.w("MiDuoAlbum", "pending mark time not set");
        } catch (java.io.IOException e2) {
            android.util.Log.w("MiDuoAlbum", "pending mark not written", e2);
        }
    }

    /* renamed from: dev.duo.hookprobe.b$c */
    static final class c {
        private final java.lang.StringBuilder a = new java.lang.StringBuilder();

        c() {
        }

        void a(java.lang.String str, java.lang.String str2) {
            this.a.append("✓ ").append(str);
            if (str2 != null && !str2.isEmpty()) {
                this.a.append("（").append(str2).append("）");
            }
            this.a.append('\n');
        }

        void a(java.lang.String str, java.lang.Exception exc) {
            java.lang.String trim = exc.getMessage() == null ? "" : exc.getMessage().trim();
            java.lang.StringBuilder append = this.a.append("✗ ").append(str).append("：");
            if (trim.isEmpty()) {
                trim = "命令失败，没有任何输出";
            }
            append.append(trim).append('\n');
            this.a.append("后面的步骤没有执行\n");
        }

        java.lang.String a() {
            return this.a.toString() + "构建 " + dev.duo.hookprobe.C0023l.a;
        }
    }

    static boolean b(java.lang.String str) throws java.lang.Exception {
        return "duo".equals(dev.duo.hookprobe.M.a("cat " + str + "/files/miduo-layout/active 2>/dev/null || echo duo").trim());
    }

    static long c(java.lang.String str) throws java.lang.Exception {
        java.lang.String trim = dev.duo.hookprobe.M.a("cat " + str + "/files/miduo-layout/widget-page 2>/dev/null || echo -1").trim();
        if ("-1".equals(trim)) {
            return -1L;
        }
        try {
            return java.lang.Long.parseLong(trim);
        } catch (java.lang.NumberFormatException e2) {
            throw new java.lang.IllegalStateException("第 1 页记录无法读取：" + trim);
        }
    }

    static boolean a(android.content.Context context) {
        return new java.io.File(context.getFilesDir(), a).delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074 A[Catch: Exception -> 0x00db, InterruptedException -> 0x00e7, TryCatch #2 {InterruptedException -> 0x00e7, Exception -> 0x00db, blocks: (B:5:0x0014, B:10:0x001c, B:12:0x002d, B:13:0x0032, B:16:0x003b, B:20:0x0049, B:23:0x0056, B:25:0x0068, B:36:0x008a, B:41:0x009b, B:43:0x00a1, B:48:0x00aa, B:52:0x00bf, B:54:0x00c6, B:55:0x00ce, B:29:0x0074, B:31:0x0080, B:18:0x004e), top: B:4:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0073 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void a(android.content.Context r20, int[] r21, dev.duo.hookprobe.C0012b.d r22) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.C0012b.a(android.content.Context, int[], dev.duo.hookprobe.b$d):void");
    }

    static long a(dev.duo.hookprobe.C0012b.a aVar, java.util.Set<java.lang.Long> set) {
        java.lang.Integer num;
        if (set.isEmpty()) {
            return -1L;
        }
        java.util.ArrayList<java.lang.Long> arrayList = aVar.c;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            java.lang.Long l = arrayList.get(i);
            i++;
            java.lang.Long l2 = l;
            long longValue = l2.longValue();
            if (!set.contains(l2) && ((num = aVar.b.get(l2)) == null || num.intValue() == 0)) {
                return longValue;
            }
        }
        return -1L;
    }

    private static java.lang.String a(java.lang.String str, java.lang.String str2) {
        java.lang.String str3 = str + "/databases/" + str2;
        return "echo $(stat -c '%s %Y' " + str3 + " " + str3 + "-wal 2>/dev/null)";
    }

    static dev.duo.hookprobe.C0012b.C0001b a(android.content.Context context, java.lang.String str, int i, long j) throws java.lang.Exception {
        java.io.File file = new java.io.File(context.getCacheDir(), "home-fix");
        if (file.isDirectory()) {
            for (java.io.File file2 : file.listFiles()) {
                java.nio.file.Files.delete(file2.toPath());
            }
        }
        java.nio.file.Files.createDirectories(file.toPath(), new java.nio.file.attribute.FileAttribute[0]);
        java.lang.String str2 = str + "/databases/";
        java.lang.String a2 = a(str);
        java.lang.String trim = dev.duo.hookprobe.M.a(a(str, a2)).trim();
        java.io.File file3 = new java.io.File(file, a2);
        java.lang.String[] strArr = {a2, a2 + "-wal"};
        for (int i2 = 0; i2 < 2; i2++) {
            java.lang.String str3 = strArr[i2];
            java.lang.String a3 = dev.duo.hookprobe.M.a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; fi");
            if (!a3.isEmpty()) {
                java.nio.file.Files.write(new java.io.File(file, str3).toPath(), android.util.Base64.decode(a3, 0), new java.nio.file.OpenOption[0]);
            }
        }
        java.lang.String trim2 = dev.duo.hookprobe.M.a(a(str, a2)).trim();
        if (trim.equals(trim2)) {
            java.lang.String str4 = context.getPackageName() + "/" + dev.duo.hookprobe.AlbumWidgetProvider.class.getName();
            android.database.sqlite.SQLiteDatabase openDatabase = android.database.sqlite.SQLiteDatabase.openDatabase(file3.getPath(), null, 536870928);
            try {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                android.database.Cursor rawQuery = openDatabase.rawQuery("select _id from screens order by screenOrder", null);
                while (rawQuery.moveToNext()) {
                    try {
                        arrayList.add(java.lang.Long.valueOf(rawQuery.getLong(0)));
                    } finally {
                    }
                }
                rawQuery.close();
                if (arrayList.remove(java.lang.Long.valueOf(j))) {
                    arrayList.add(0, java.lang.Long.valueOf(j));
                    openDatabase.beginTransaction();
                    try {
                        openDatabase.execSQL(e, new java.lang.Object[]{java.lang.Long.valueOf(j), java.lang.Integer.valueOf(i), str4});
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            openDatabase.execSQL(f, new java.lang.Object[]{java.lang.Integer.valueOf(i3), arrayList.get(i3)});
                        }
                        openDatabase.setTransactionSuccessful();
                        openDatabase.endTransaction();
                        android.database.Cursor rawQuery2 = openDatabase.rawQuery("PRAGMA wal_checkpoint(TRUNCATE)", null);
                        try {
                            rawQuery2.moveToFirst();
                            rawQuery2.close();
                            java.lang.String stringForQuery = android.database.DatabaseUtils.stringForQuery(openDatabase, "PRAGMA integrity_check", null);
                            long longForQuery = android.database.DatabaseUtils.longForQuery(openDatabase, "select screen from favorites where appWidgetId=? and container=-100", new java.lang.String[]{java.lang.String.valueOf(i)});
                            if ("ok".equals(stringForQuery) && longForQuery == j) {
                                openDatabase.close();
                                java.lang.String[] strArr2 = {a2 + "-wal", a2 + "-shm"};
                                for (int i4 = 0; i4 < 2; i4++) {
                                    java.nio.file.Files.deleteIfExists(new java.io.File(file, strArr2[i4]).toPath());
                                }
                                return new dev.duo.hookprobe.C0012b.C0001b(file3, a2, trim, j);
                            }
                            throw new java.lang.IllegalStateException("修改后的桌面库没通过检查：" + stringForQuery + " 相册在页 " + longForQuery);
                        } finally {
                        }
                    } catch (java.lang.Throwable th) {
                        openDatabase.endTransaction();
                        throw th;
                    }
                } else {
                    throw new java.lang.IllegalStateException("桌面页表里没有新页 " + j);
                }
            } finally {
            }
        } else {
            throw new java.lang.IllegalStateException("桌面库正在被改写，没有修改：" + trim + " → " + trim2);
        }
    }

    private static java.lang.String a(java.lang.String str) throws java.lang.Exception {
        java.lang.String str2 = str + "/databases/";
        java.lang.String trim = dev.duo.hookprobe.M.a("a=0; b=0; [ -f " + str2 + "launcher4x6.db ] && a=1; [ -f " + str2 + "launcher4x5.db ] && b=1; echo $a$b").trim();
        if ("10".equals(trim)) {
            return "launcher4x6.db";
        }
        if ("01".equals(trim)) {
            return "launcher4x5.db";
        }
        if ("11".equals(trim)) {
            return b(str) ? "launcher4x6.db" : "launcher4x5.db";
        }
        throw new java.lang.IllegalStateException("无法读取桌面数据库");
    }

    static dev.duo.hookprobe.C0012b.a a(android.content.Context context, java.lang.String str) throws java.lang.Exception {
        java.io.File file = new java.io.File(context.getCacheDir(), "home-db-" + android.os.Process.myPid() + dev.duo.hookprobe.J.e + java.lang.Thread.currentThread().getId());
        int i = 0;
        java.nio.file.Files.createDirectories(file.toPath(), new java.nio.file.attribute.FileAttribute[0]);
        java.lang.String str2 = str + "/databases/";
        java.lang.String a2 = a(str);
        java.io.File file2 = new java.io.File(file, a2);
        try {
            java.lang.String[] strArr = {a2, a2 + "-wal", a2 + "-shm"};
            for (int i2 = 0; i2 < 3; i2++) {
                java.lang.String str3 = strArr[i2];
                java.io.File file3 = new java.io.File(file, str3);
                java.nio.file.Files.deleteIfExists(file3.toPath());
                java.lang.String a3 = dev.duo.hookprobe.M.a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; else " + (str3.equals(a2) ? "echo '无法读取桌面数据库' >&2; exit 3" : ":") + "; fi");
                if (!a3.isEmpty()) {
                    java.nio.file.Files.write(file3.toPath(), android.util.Base64.decode(a3, 0), new java.nio.file.OpenOption[0]);
                }
            }
            android.util.Log.i("MiDuoAlbum", "widget page db copy " + file2.getPath() + " file=" + file2.isFile() + " size=" + file2.length() + " canRead=" + file2.canRead() + " wal=" + new java.io.File(file, a2 + "-wal").length());
            java.lang.String str4 = context.getPackageName() + "/" + dev.duo.hookprobe.AlbumWidgetProvider.class.getName();
            android.database.sqlite.SQLiteDatabase openDatabase = android.database.sqlite.SQLiteDatabase.openDatabase(file2.getPath(), null, 17);
            try {
                java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
                android.database.Cursor rawQuery = openDatabase.rawQuery("select appWidgetId,screen from favorites where itemType=4 and container=-100 and appWidgetProvider=? order by _id", new java.lang.String[]{str4});
                while (rawQuery.moveToNext()) {
                    try {
                        linkedHashMap.put(java.lang.Integer.valueOf(rawQuery.getInt(0)), java.lang.Long.valueOf(rawQuery.getLong(1)));
                    } finally {
                        if (rawQuery != null) {
                            try {
                                rawQuery.close();
                            } catch (java.lang.Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                    }
                }
                android.util.Log.i("MiDuoAlbum", "widget page query provider=" + str4 + " rows=" + rawQuery.getCount() + " albums=" + linkedHashMap);
                rawQuery.close();
                java.util.HashMap hashMap = new java.util.HashMap();
                android.database.Cursor rawQuery2 = openDatabase.rawQuery("select screen,count(*) from favorites where container=-100 group by screen", null);
                while (rawQuery2.moveToNext()) {
                    try {
                        hashMap.put(java.lang.Long.valueOf(rawQuery2.getLong(0)), java.lang.Integer.valueOf(rawQuery2.getInt(1)));
                    } finally {
                    }
                }
                rawQuery2.close();
                java.util.ArrayList arrayList = new java.util.ArrayList();
                rawQuery2 = openDatabase.rawQuery("select _id from screens order by screenOrder", null);
                while (rawQuery2.moveToNext()) {
                    try {
                        arrayList.add(java.lang.Long.valueOf(rawQuery2.getLong(0)));
                    } finally {
                    }
                }
                rawQuery2.close();
                dev.duo.hookprobe.C0012b.a aVar = new dev.duo.hookprobe.C0012b.a(linkedHashMap, hashMap, arrayList);
                openDatabase.close();
                return aVar;
            } finally {
            }
        } finally {
            java.io.File[] listFiles = file.listFiles();
            int length = listFiles.length;
            while (i < length) {
                java.nio.file.Files.delete(listFiles[i].toPath());
                i++;
            }
            java.nio.file.Files.delete(file.toPath());
        }
    }

    static boolean a(android.content.Context context, int i, dev.duo.hookprobe.C0012b.d dVar) {
        return a(context, i, dVar, (dev.duo.hookprobe.C0012b.C0001b) null);
    }

    static boolean a(android.content.Context context, int i, dev.duo.hookprobe.C0012b.d dVar, dev.duo.hookprobe.C0012b.C0001b c0001b) {
        boolean z;
        java.lang.String trim;
        java.lang.String str;
        long longValue;
        java.lang.String str2 = "/proc/1/root/data/user_de/" + (android.os.Process.myUid() / 100000) + "/com.miui.home";
        java.lang.String str3 = str2 + "/files/miduo-layout";
        dev.duo.hookprobe.C0012b.c cVar = new dev.duo.hookprobe.C0012b.c();
        try {
            trim = dev.duo.hookprobe.M.a("id -u").trim();
        } catch (java.lang.InterruptedException e2) {
            z = true;
        } catch (java.lang.Exception e3) {
            e = e3;
            z = true;
        }
        try {
        } catch (java.lang.InterruptedException e4) {
            java.lang.Thread.currentThread().interrupt();
            return z;
        } catch (java.lang.Exception e5) {
            e = e5;
            cVar.a("Root 可用", e);
            dVar.a(cVar, e);
            return z;
        }
        if (!"0".equals(trim)) {
            throw new java.lang.IllegalStateException("没有拿到 Root，uid=" + trim);
        }
        cVar.a("Root 可用", (java.lang.String) null);
        java.lang.String trim2 = dev.duo.hookprobe.M.a("cat " + str3 + "/active 2>/dev/null || echo duo").trim();
        if (!"duo".equals(trim2)) {
            dVar.a("请先打开 MiDuo 总开关");
            return true;
        }
        cVar.a("MiDuo 总开关", trim2);
        dev.duo.hookprobe.C0012b.a a2 = a(context, str2);
        cVar.a("桌面数据库可读", "桌面上有 " + a2.a.size() + " 个相册");
        long c2 = c(str2);
        if (c2 < 0) {
            str = "还没有记录";
        } else {
            str = "记录页 " + c2;
        }
        cVar.a("小组件页记录可读", str);
        if (a2.a.isEmpty()) {
            return false;
        }
        java.lang.Long l = a2.a.get(java.lang.Integer.valueOf(i));
        if (c0001b != null) {
            longValue = c0001b.d;
        } else {
            if (l == null) {
                l = a2.a.values().iterator().next();
            }
            longValue = l.longValue();
        }
        z = true;
        cVar.a("相册所在页", "第 " + longValue + " 页");
        if (longValue == c2) {
            android.util.Log.i("MiDuoAlbum", "widget page already set to screen " + longValue);
            dVar.a("已经是桌面第 1 页，不用重复设置");
            return true;
        }
        cVar.a("桌面布局文件夹", dev.duo.hookprobe.M.a("d=" + str3 + "; f=" + (str2 + "/files") + "; if [ -d $d ]; then echo 已有; else mkdir -m 700 $d && chown $(stat -c %u:%g $f) $d && chcon $(stat -c %C $f) $d && echo 已新建; fi").trim());
        dev.duo.hookprobe.M.a("d=" + str3 + "; printf '%d' " + longValue + " > $d/widget-page.tmp && chown $(stat -c %u:%g $d) $d/widget-page.tmp && chmod 600 $d/widget-page.tmp && chcon $(stat -c %C $d) $d/widget-page.tmp && mv -f $d/widget-page.tmp $d/widget-page");
        cVar.a("写入小组件页记录", (java.lang.String) null);
        if (c0001b == null) {
            dev.duo.hookprobe.M.a("am force-stop com.miui.home && am start -a android.intent.action.MAIN -c android.intent.category.HOME");
        } else {
            java.lang.String str4 = str2 + "/databases";
            java.lang.String str5 = c0001b.b;
            java.lang.String str6 = context.getFilesDir().getAbsolutePath() + "/album-fix-backup";
            dev.duo.hookprobe.M.a("cur=$(" + a(str2, str5) + "); [ \"$cur\" = '" + c0001b.c + "' ] || { echo '桌面库在这期间被改写，没有替换' >&2; exit 9; }; rm -rf " + str6 + "; mkdir -p " + str6 + " && cp " + str4 + "/" + str5 + "* " + str6 + "/ || exit 8; am force-stop com.miui.home; cat " + c0001b.a.getAbsolutePath() + " > " + str4 + "/" + str5 + " && rm -f " + str4 + "/" + str5 + "-wal " + str4 + "/" + str5 + "-shm && sync; am start -a android.intent.action.MAIN -c android.intent.category.HOME");
            cVar.a("关开桌面", "已换上修正后的桌面库，旧库备份在 MiDuo 的 album-fix-backup");
        }
        android.util.Log.i("MiDuoAlbum", "widget page set to screen " + longValue + "\n" + cVar.a());
        dVar.a("已设为桌面第 1 页，桌面重开后在第 1 页");
        return z;
    }
}
