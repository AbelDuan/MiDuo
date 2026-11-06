package dev.duo.hookprobe;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class b {
    private static final String a = "widget_page_pending";
    private static final long b = 600000;
    private static final long c = 5000;
    private static final long d = 1500;
    static final String e = "update favorites set screen=? where appWidgetId=? and appWidgetProvider=? and container=-100";
    static final String f = "update screens set screenOrder=? where _id=?";

    static final class a {
        final LinkedHashMap<Integer, Long> a;
        final HashMap<Long, Integer> b;
        final ArrayList<Long> c;

        a(LinkedHashMap<Integer, Long> linkedHashMap, HashMap<Long, Integer> hashMap, ArrayList<Long> arrayList) {
            this.a = linkedHashMap;
            this.b = hashMap;
            this.c = arrayList;
        }
    }

    /* renamed from: dev.duo.hookprobe.b$b, reason: collision with other inner class name */
    static final class C0001b {
        final File a;
        final String b;
        final String c;
        final long d;

        C0001b(File file, String str, String str2, long j) {
            this.a = file;
            this.b = str;
            this.c = str2;
            this.d = j;
        }
    }

    interface d {
        void a(c cVar, Exception exc);

        void a(String str);
    }

    private b() {
    }

    static String a() {
        return "/proc/1/root/data/user_de/" + (Process.myUid() / 100000) + "/com.miui.home";
    }

    static boolean b(Context context) {
        File file = new File(context.getFilesDir(), a);
        if (!file.exists()) {
            return false;
        }
        if (System.currentTimeMillis() - file.lastModified() <= b) {
            return true;
        }
        file.delete();
        return false;
    }

    static Set<Long> c(Context context) {
        HashSet hashSet = new HashSet();
        try {
            String trim = new String(Files.readAllBytes(new File(context.getFilesDir(), a).toPath()), StandardCharsets.UTF_8).trim();
            if (!trim.isEmpty()) {
                for (String str : trim.split(",")) {
                    hashSet.add(Long.valueOf(Long.parseLong(str.trim())));
                }
            }
        } catch (IOException | NumberFormatException e2) {
            Log.w("MiDuoAlbum", "pending mark has no readable screens", e2);
            hashSet.clear();
        }
        return hashSet;
    }

    static void a(Context context, List<Long> list) {
        File file = new File(context.getFilesDir(), a);
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            sb.append(sb.length() == 0 ? "" : ",").append(it.next().longValue());
        }
        try {
            Files.write(file.toPath(), sb.toString().getBytes(StandardCharsets.UTF_8), new OpenOption[0]);
            if (file.setLastModified(System.currentTimeMillis())) {
                return;
            }
            Log.w("MiDuoAlbum", "pending mark time not set");
        } catch (IOException e2) {
            Log.w("MiDuoAlbum", "pending mark not written", e2);
        }
    }

    static final class c {
        private final StringBuilder a = new StringBuilder();

        c() {
        }

        void a(String str, String str2) {
            this.a.append("✓ ").append(str);
            if (str2 != null && !str2.isEmpty()) {
                this.a.append("（").append(str2).append("）");
            }
            this.a.append('\n');
        }

        void a(String str, Exception exc) {
            String trim = exc.getMessage() == null ? "" : exc.getMessage().trim();
            StringBuilder append = this.a.append("✗ ").append(str).append("：");
            if (trim.isEmpty()) {
                trim = "命令失败，没有任何输出";
            }
            append.append(trim).append('\n');
            this.a.append("后面的步骤没有执行\n");
        }

        String a() {
            return this.a.toString() + "构建 " + l.a;
        }
    }

    static boolean b(String str) throws Exception {
        return "duo".equals(M.a("cat " + str + "/files/miduo-layout/active 2>/dev/null || echo duo").trim());
    }

    static long c(String str) throws Exception {
        String trim = M.a("cat " + str + "/files/miduo-layout/widget-page 2>/dev/null || echo -1").trim();
        if ("-1".equals(trim)) {
            return -1L;
        }
        try {
            return Long.parseLong(trim);
        } catch (NumberFormatException e2) {
            throw new IllegalStateException("第 1 页记录无法读取：" + trim);
        }
    }

    static boolean a(Context context) {
        return new File(context.getFilesDir(), a).delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074 A[Catch: Exception -> 0x00db, InterruptedException -> 0x00e7, TryCatch #2 {InterruptedException -> 0x00e7, Exception -> 0x00db, blocks: (B:5:0x0014, B:10:0x001c, B:12:0x002d, B:13:0x0032, B:16:0x003b, B:20:0x0049, B:23:0x0056, B:25:0x0068, B:36:0x008a, B:41:0x009b, B:43:0x00a1, B:48:0x00aa, B:52:0x00bf, B:54:0x00c6, B:55:0x00ce, B:29:0x0074, B:31:0x0080, B:18:0x004e), top: B:4:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0073 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void a(Context context, int[] iArr, d dVar) throws InterruptedException {
        a a2;
        Integer num;
        long j;
        long j2;
        boolean z;
        if (b(context)) {
            String a3 = a();
            try {
                if (b(a3)) {
                    Set<Long> c2 = c(context);
                    long nanoTime = System.nanoTime() + 5000000000L;
                    int i = 0;
                    while (true) {
                        if (i > 0) {
                            Thread.sleep(d);
                        }
                        a2 = a(context, a3);
                        int length = iArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                num = null;
                                break;
                            }
                            int i3 = iArr[i2];
                            if (a2.a.containsKey(Integer.valueOf(i3))) {
                                num = Integer.valueOf(i3);
                                break;
                            }
                            i2++;
                        }
                        j = -1;
                        if (num == null) {
                            j2 = 0;
                            z = false;
                        } else {
                            j2 = 0;
                            Integer num2 = a2.b.get(a2.a.get(num));
                            if (num2 != null) {
                                z = true;
                                if (num2.intValue() > 1) {
                                    if (!z) {
                                        j = a(a2, c2);
                                        if (j >= 0) {
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                }
                            }
                            z = false;
                            if (!z) {
                            }
                        }
                        if (System.nanoTime() > nanoTime) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (num == null) {
                        Log.i("MiDuoAlbum", "widget bound but not on the desktop yet, left to the MiDuo page");
                        dVar.a("相册没能放到桌面。折叠状态下桌面放不下整页相册，请展开手机后再点「添加相册」");
                        return;
                    }
                    if (z && j < j2) {
                        Log.i("MiDuoAlbum", "widget page still holds other items and no new page was found, left to the MiDuo page");
                        return;
                    }
                    if (a(context)) {
                        if (z || a2.a.get(num).longValue() != c(a3)) {
                            dVar.a("相册已放好，正在设为桌面第 1 页，桌面会重开一次");
                            a(context, num.intValue(), dVar, z ? a(context, a3, num.intValue(), j) : null);
                        }
                    }
                }
            } catch (InterruptedException e2) {
                throw e2;
            } catch (Exception e3) {
                Log.w("MiDuoAlbum", "widget page not set after the widget was bound", e3);
                dVar.a("没能自动设为第 1 页，请打开 MiDuo 的小组件页点「设为第 1 页」");
            }
        }
    }

    static long a(a aVar, Set<Long> set) {
        Integer num;
        if (set.isEmpty()) {
            return -1L;
        }
        ArrayList<Long> arrayList = aVar.c;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Long l = arrayList.get(i);
            i++;
            Long l2 = l;
            long longValue = l2.longValue();
            if (!set.contains(l2) && ((num = aVar.b.get(l2)) == null || num.intValue() == 0)) {
                return longValue;
            }
        }
        return -1L;
    }

    private static String a(String str, String str2) {
        String str3 = str + "/databases/" + str2;
        return "echo $(stat -c '%s %Y' " + str3 + " " + str3 + "-wal 2>/dev/null)";
    }

    static C0001b a(Context context, String str, int i, long j) throws Exception {
        File file = new File(context.getCacheDir(), "home-fix");
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                Files.delete(file2.toPath());
            }
        }
        Files.createDirectories(file.toPath(), new FileAttribute[0]);
        String str2 = str + "/databases/";
        String a2 = a(str);
        String trim = M.a(a(str, a2)).trim();
        File file3 = new File(file, a2);
        String[] strArr = {a2, a2 + "-wal"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str3 = strArr[i2];
            String a3 = M.a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; fi");
            if (!a3.isEmpty()) {
                Files.write(new File(file, str3).toPath(), Base64.decode(a3, 0), new OpenOption[0]);
            }
        }
        String trim2 = M.a(a(str, a2)).trim();
        if (trim.equals(trim2)) {
            String str4 = context.getPackageName() + "/" + dev.duo.hookprobe.AlbumWidgetProvider.class.getName();
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(file3.getPath(), null, 536870928);
            try {
                ArrayList arrayList = new ArrayList();
                Cursor rawQuery = openDatabase.rawQuery("select _id from screens order by screenOrder", null);
                while (rawQuery.moveToNext()) {
                    try {
                        arrayList.add(Long.valueOf(rawQuery.getLong(0)));
                    } finally {
                    }
                }
                rawQuery.close();
                if (arrayList.remove(Long.valueOf(j))) {
                    arrayList.add(0, Long.valueOf(j));
                    openDatabase.beginTransaction();
                    try {
                        openDatabase.execSQL(e, new Object[]{Long.valueOf(j), Integer.valueOf(i), str4});
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            openDatabase.execSQL(f, new Object[]{Integer.valueOf(i3), arrayList.get(i3)});
                        }
                        openDatabase.setTransactionSuccessful();
                        openDatabase.endTransaction();
                        Cursor rawQuery2 = openDatabase.rawQuery("PRAGMA wal_checkpoint(TRUNCATE)", null);
                        try {
                            rawQuery2.moveToFirst();
                            rawQuery2.close();
                            String stringForQuery = DatabaseUtils.stringForQuery(openDatabase, "PRAGMA integrity_check", null);
                            long longForQuery = DatabaseUtils.longForQuery(openDatabase, "select screen from favorites where appWidgetId=? and container=-100", new String[]{String.valueOf(i)});
                            if ("ok".equals(stringForQuery) && longForQuery == j) {
                                openDatabase.close();
                                String[] strArr2 = {a2 + "-wal", a2 + "-shm"};
                                for (int i4 = 0; i4 < 2; i4++) {
                                    Files.deleteIfExists(new File(file, strArr2[i4]).toPath());
                                }
                                return new C0001b(file3, a2, trim, j);
                            }
                            throw new IllegalStateException("修改后的桌面库没通过检查：" + stringForQuery + " 相册在页 " + longForQuery);
                        } finally {
                        }
                    } catch (Throwable th) {
                        openDatabase.endTransaction();
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("桌面页表里没有新页 " + j);
                }
            } finally {
            }
        } else {
            throw new IllegalStateException("桌面库正在被改写，没有修改：" + trim + " → " + trim2);
        }
    }

    private static String a(String str) throws Exception {
        String str2 = str + "/databases/";
        String trim = M.a("a=0; b=0; [ -f " + str2 + "launcher4x6.db ] && a=1; [ -f " + str2 + "launcher4x5.db ] && b=1; echo $a$b").trim();
        if ("10".equals(trim)) {
            return "launcher4x6.db";
        }
        if ("01".equals(trim)) {
            return "launcher4x5.db";
        }
        if ("11".equals(trim)) {
            return b(str) ? "launcher4x6.db" : "launcher4x5.db";
        }
        throw new IllegalStateException("无法读取桌面数据库");
    }

    static a a(Context context, String str) throws Exception {
        File file = new File(context.getCacheDir(), "home-db-" + Process.myPid() + J.e + Thread.currentThread().getId());
        int i = 0;
        Files.createDirectories(file.toPath(), new FileAttribute[0]);
        String str2 = str + "/databases/";
        String a2 = a(str);
        File file2 = new File(file, a2);
        try {
            String[] strArr = {a2, a2 + "-wal", a2 + "-shm"};
            for (int i2 = 0; i2 < 3; i2++) {
                String str3 = strArr[i2];
                File file3 = new File(file, str3);
                Files.deleteIfExists(file3.toPath());
                String a3 = M.a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; else " + (str3.equals(a2) ? "echo '无法读取桌面数据库' >&2; exit 3" : ":") + "; fi");
                if (!a3.isEmpty()) {
                    Files.write(file3.toPath(), Base64.decode(a3, 0), new OpenOption[0]);
                }
            }
            Log.i("MiDuoAlbum", "widget page db copy " + file2.getPath() + " file=" + file2.isFile() + " size=" + file2.length() + " canRead=" + file2.canRead() + " wal=" + new File(file, a2 + "-wal").length());
            String str4 = context.getPackageName() + "/" + dev.duo.hookprobe.AlbumWidgetProvider.class.getName();
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(file2.getPath(), null, 17);
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Cursor rawQuery = openDatabase.rawQuery("select appWidgetId,screen from favorites where itemType=4 and container=-100 and appWidgetProvider=? order by _id", new String[]{str4});
                while (rawQuery.moveToNext()) {
                    try {
                        linkedHashMap.put(Integer.valueOf(rawQuery.getInt(0)), Long.valueOf(rawQuery.getLong(1)));
                    } finally {
                        if (rawQuery != null) {
                            try {
                                rawQuery.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                    }
                }
                Log.i("MiDuoAlbum", "widget page query provider=" + str4 + " rows=" + rawQuery.getCount() + " albums=" + linkedHashMap);
                rawQuery.close();
                HashMap hashMap = new HashMap();
                Cursor rawQuery2 = openDatabase.rawQuery("select screen,count(*) from favorites where container=-100 group by screen", null);
                while (rawQuery2.moveToNext()) {
                    try {
                        hashMap.put(Long.valueOf(rawQuery2.getLong(0)), Integer.valueOf(rawQuery2.getInt(1)));
                    } finally {
                    }
                }
                rawQuery2.close();
                ArrayList arrayList = new ArrayList();
                rawQuery2 = openDatabase.rawQuery("select _id from screens order by screenOrder", null);
                while (rawQuery2.moveToNext()) {
                    try {
                        arrayList.add(Long.valueOf(rawQuery2.getLong(0)));
                    } finally {
                    }
                }
                rawQuery2.close();
                a aVar = new a(linkedHashMap, hashMap, arrayList);
                openDatabase.close();
                return aVar;
            } finally {
            }
        } finally {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            while (i < length) {
                Files.delete(listFiles[i].toPath());
                i++;
            }
            Files.delete(file.toPath());
        }
    }

    static boolean a(Context context, int i, d dVar) {
        return a(context, i, dVar, (C0001b) null);
    }

    static boolean a(Context context, int i, d dVar, C0001b c0001b) {
        boolean z;
        String trim;
        String str;
        long longValue;
        String str2 = "/proc/1/root/data/user_de/" + (Process.myUid() / 100000) + "/com.miui.home";
        String str3 = str2 + "/files/miduo-layout";
        c cVar = new c();
        try {
            trim = M.a("id -u").trim();
        } catch (InterruptedException e2) {
            z = true;
        } catch (Exception e3) {
            e = e3;
            z = true;
        }
        try {
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            return z;
        } catch (Exception e5) {
            e = e5;
            cVar.a("Root 可用", e);
            dVar.a(cVar, e);
            return z;
        }
        if (!"0".equals(trim)) {
            throw new IllegalStateException("没有拿到 Root，uid=" + trim);
        }
        cVar.a("Root 可用", (String) null);
        String trim2 = M.a("cat " + str3 + "/active 2>/dev/null || echo duo").trim();
        if (!"duo".equals(trim2)) {
            dVar.a("请先打开 MiDuo 总开关");
            return true;
        }
        cVar.a("MiDuo 总开关", trim2);
        a a2 = a(context, str2);
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
        Long l = a2.a.get(Integer.valueOf(i));
        if (c0001b != null) {
            longValue = c0001b.d;
        } else {
            if (l == null) {
                l = a2.a.values().iterator().next();
            }
            longValue = dev.duo.hookprobe.l.longValue();
        }
        z = true;
        cVar.a("相册所在页", "第 " + longValue + " 页");
        if (longValue == c2) {
            Log.i("MiDuoAlbum", "widget page already set to screen " + longValue);
            dVar.a("已经是桌面第 1 页，不用重复设置");
            return true;
        }
        cVar.a("桌面布局文件夹", M.a("d=" + str3 + "; f=" + (str2 + "/files") + "; if [ -d $d ]; then echo 已有; else mkdir -m 700 $d && chown $(stat -c %u:%g $f) $d && chcon $(stat -c %C $f) $d && echo 已新建; fi").trim());
        M.a("d=" + str3 + "; printf '%d' " + longValue + " > $d/widget-page.tmp && chown $(stat -c %u:%g $d) $d/widget-page.tmp && chmod 600 $d/widget-page.tmp && chcon $(stat -c %C $d) $d/widget-page.tmp && mv -f $d/widget-page.tmp $d/widget-page");
        cVar.a("写入小组件页记录", (String) null);
        if (c0001b == null) {
            M.a("am force-stop com.miui.home && am start -a android.intent.action.MAIN -c android.intent.category.HOME");
        } else {
            String str4 = str2 + "/databases";
            String str5 = c0001b.b;
            String str6 = context.getFilesDir().getAbsolutePath() + "/album-fix-backup";
            M.a("cur=$(" + a(str2, str5) + "); [ \"$cur\" = '" + c0001b.c + "' ] || { echo '桌面库在这期间被改写，没有替换' >&2; exit 9; }; rm -rf " + str6 + "; mkdir -p " + str6 + " && cp " + str4 + "/" + str5 + "* " + str6 + "/ || exit 8; am force-stop com.miui.home; cat " + c0001b.a.getAbsolutePath() + " > " + str4 + "/" + str5 + " && rm -f " + str4 + "/" + str5 + "-wal " + str4 + "/" + str5 + "-shm && sync; am start -a android.intent.action.MAIN -c android.intent.category.HOME");
            cVar.a("关开桌面", "已换上修正后的桌面库，旧库备份在 MiDuo 的 album-fix-backup");
        }
        Log.i("MiDuoAlbum", "widget page set to screen " + longValue + "\n" + cVar.a());
        dVar.a("已设为桌面第 1 页，桌面重开后在第 1 页");
        return z;
    }
}
