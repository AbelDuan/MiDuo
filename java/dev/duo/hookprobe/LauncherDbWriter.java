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

/* renamed from: dev.duo.hookprobe.b */
/* loaded from: classes.dex */
final class LauncherDbWriter {

    /* renamed from: a */
    private static final String f1533a = "widget_page_pending";

    /* renamed from: b */
    private static final long f1534b = 600000;

    /* renamed from: c */
    private static final long f1535c = 5000;

    /* renamed from: d */
    private static final long f1536d = 1500;

    /* renamed from: e */
    static final String f1537e = "update favorites set screen=? where appWidgetId=? and appWidgetProvider=? and container=-100";

    /* renamed from: f */
    static final String f1538f = "update screens set screenOrder=? where _id=?";

    /* renamed from: dev.duo.hookprobe.b$a */
    static final class a {

        /* renamed from: a */
        final LinkedHashMap<Integer, Long> f1539a;

        /* renamed from: b */
        final HashMap<Long, Integer> f1540b;

        /* renamed from: c */
        final ArrayList<Long> f1541c;

        a(LinkedHashMap<Integer, Long> linkedHashMap, HashMap<Long, Integer> hashMap, ArrayList<Long> arrayList) {
            this.f1539a = linkedHashMap;
            this.f1540b = hashMap;
            this.f1541c = arrayList;
        }
    }

    /* renamed from: dev.duo.hookprobe.b$b */
    static final class b {

        /* renamed from: a */
        final File f1542a;

        /* renamed from: b */
        final String f1543b;

        /* renamed from: c */
        final String f1544c;

        /* renamed from: d */
        final long f1545d;

        b(File file, String str, String str2, long j) {
            this.f1542a = file;
            this.f1543b = str;
            this.f1544c = str2;
            this.f1545d = j;
        }
    }

    /* renamed from: dev.duo.hookprobe.b$d */
    interface d {
        /* renamed from: a */
        void mo770a(c cVar, Exception exc);

        /* renamed from: a */
        void mo771a(String str);
    }

    private LauncherDbWriter() {
    }

    /* renamed from: a */
    static String m1563a() {
        return "/proc/1/root/data/user_de/" + (Process.myUid() / 100000) + "/com.miui.home";
    }

    /* renamed from: b */
    static boolean m1571b(Context context) {
        File file = new File(context.getFilesDir(), f1533a);
        if (!file.exists()) {
            return false;
        }
        if (System.currentTimeMillis() - file.lastModified() <= f1534b) {
            return true;
        }
        file.delete();
        return false;
    }

    /* renamed from: c */
    static Set<Long> m1574c(Context context) {
        HashSet hashSet = new HashSet();
        try {
            String trim = new String(Files.readAllBytes(new File(context.getFilesDir(), f1533a).toPath()), StandardCharsets.UTF_8).trim();
            if (!trim.isEmpty()) {
                for (String str : trim.split(",")) {
                    hashSet.add(Long.valueOf(Long.parseLong(str.trim())));
                }
            }
        } catch (IOException | NumberFormatException e) {
            Log.w("MiDuoAlbum", "pending mark has no readable screens", e);
            hashSet.clear();
        }
        return hashSet;
    }

    /* renamed from: a */
    static void m1566a(Context context, List<Long> list) {
        File file = new File(context.getFilesDir(), f1533a);
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
        } catch (IOException e) {
            Log.w("MiDuoAlbum", "pending mark not written", e);
        }
    }

    /* renamed from: dev.duo.hookprobe.b$c */
    static final class c {

        /* renamed from: a */
        private final StringBuilder f1546a = new StringBuilder();

        c() {
        }

        /* renamed from: a */
        void m1577a(String str, String str2) {
            this.f1546a.append("✓ ").append(str);
            if (str2 != null && !str2.isEmpty()) {
                this.f1546a.append("（").append(str2).append("）");
            }
            this.f1546a.append('\n');
        }

        /* renamed from: a */
        void m1576a(String str, Exception exc) {
            String trim = exc.getMessage() == null ? "" : exc.getMessage().trim();
            StringBuilder append = this.f1546a.append("✗ ").append(str).append("：");
            if (trim.isEmpty()) {
                trim = "命令失败，没有任何输出";
            }
            append.append(trim).append('\n');
            this.f1546a.append("后面的步骤没有执行\n");
        }

        /* renamed from: a */
        String m1575a() {
            return this.f1546a.toString() + "构建 " + BuildConst.f1643a;
        }
    }

    /* renamed from: b */
    static boolean m1572b(String str) throws Exception {
        return "duo".equals(RootShell.m977a("cat " + str + "/files/miduo-layout/active 2>/dev/null || echo duo").trim());
    }

    /* renamed from: c */
    static long m1573c(String str) throws Exception {
        String trim = RootShell.m977a("cat " + str + "/files/miduo-layout/widget-page 2>/dev/null || echo -1").trim();
        if ("-1".equals(trim)) {
            return -1L;
        }
        try {
            return Long.parseLong(trim);
        } catch (NumberFormatException e) {
            throw new IllegalStateException("第 1 页记录无法读取：" + trim);
        }
    }

    /* renamed from: a */
    static boolean m1568a(Context context) {
        return new File(context.getFilesDir(), f1533a).delete();
    }

    /* renamed from: a */
    /*
    */
    static void m1567a(Context context, int[] iArr, d dVar) throws InterruptedException {
        a m1561a;
        Integer num;
        long j;
        long j2;
        boolean z;
        if (m1571b(context)) {
            String m1563a = m1563a();
            try {
                if (m1572b(m1563a)) {
                    Set<Long> m1574c = m1574c(context);
                    long nanoTime = System.nanoTime() + 5000000000L;
                    int i = 0;
                    while (true) {
                        if (i > 0) {
                            Thread.sleep(f1536d);
                        }
                        m1561a = m1561a(context, m1563a);
                        int length = iArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                num = null;
                                break;
                            }
                            int i3 = iArr[i2];
                            if (m1561a.f1539a.containsKey(Integer.valueOf(i3))) {
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
                            Integer num2 = m1561a.f1540b.get(m1561a.f1539a.get(num));
                            if (num2 != null) {
                                z = true;
                                if (num2.intValue() > 1) {
                                    if (!z) {
                                        j = m1560a(m1561a, m1574c);
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
                        dVar.mo771a("相册没能放到桌面。折叠状态下桌面放不下整页相册，请展开手机后再点「添加相册」");
                        return;
                    }
                    if (z && j < j2) {
                        Log.i("MiDuoAlbum", "widget page still holds other items and no new page was found, left to the MiDuo page");
                        return;
                    }
                    if (m1568a(context)) {
                        if (z || m1561a.f1539a.get(num).longValue() != m1573c(m1563a)) {
                            dVar.mo771a("相册已放好，正在设为桌面第 1 页，桌面会重开一次");
                            m1570a(context, num.intValue(), dVar, z ? m1562a(context, m1563a, num.intValue(), j) : null);
                        }
                    }
                }
            } catch (InterruptedException e) {
                throw e;
            } catch (Exception e2) {
                Log.w("MiDuoAlbum", "widget page not set after the widget was bound", e2);
                dVar.mo771a("没能自动设为第 1 页，请打开 MiDuo 的小组件页点「设为第 1 页」");
            }
        }
    }

    /* renamed from: a */
    static long m1560a(a aVar, Set<Long> set) {
        Integer num;
        if (set.isEmpty()) {
            return -1L;
        }
        ArrayList<Long> arrayList = aVar.f1541c;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Long l = arrayList.get(i);
            i++;
            Long l2 = l;
            long longValue = l2.longValue();
            if (!set.contains(l2) && ((num = aVar.f1540b.get(l2)) == null || num.intValue() == 0)) {
                return longValue;
            }
        }
        return -1L;
    }

    /* renamed from: a */
    private static String m1565a(String str, String str2) {
        String str3 = str + "/databases/" + str2;
        return "echo $(stat -c '%s %Y' " + str3 + " " + str3 + "-wal 2>/dev/null)";
    }

    /* renamed from: a */
    static b m1562a(Context context, String str, int i, long j) throws Exception {
        File file = new File(context.getCacheDir(), "home-fix");
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                Files.delete(file2.toPath());
            }
        }
        Files.createDirectories(file.toPath(), new FileAttribute[0]);
        String str2 = str + "/databases/";
        String m1564a = m1564a(str);
        String trim = RootShell.m977a(m1565a(str, m1564a)).trim();
        File file3 = new File(file, m1564a);
        String[] strArr = {m1564a, m1564a + "-wal"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str3 = strArr[i2];
            String m977a = RootShell.m977a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; fi");
            if (!m977a.isEmpty()) {
                Files.write(new File(file, str3).toPath(), Base64.decode(m977a, 0), new OpenOption[0]);
            }
        }
        String trim2 = RootShell.m977a(m1565a(str, m1564a)).trim();
        if (trim.equals(trim2)) {
            String str4 = context.getPackageName() + "/" + AlbumWidgetProvider.class.getName();
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
                        openDatabase.execSQL(f1537e, new Object[]{Long.valueOf(j), Integer.valueOf(i), str4});
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            openDatabase.execSQL(f1538f, new Object[]{Integer.valueOf(i3), arrayList.get(i3)});
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
                                String[] strArr2 = {m1564a + "-wal", m1564a + "-shm"};
                                for (int i4 = 0; i4 < 2; i4++) {
                                    Files.deleteIfExists(new File(file, strArr2[i4]).toPath());
                                }
                                return new b(file3, m1564a, trim, j);
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

    /* renamed from: a */
    private static String m1564a(String str) throws Exception {
        String str2 = str + "/databases/";
        String trim = RootShell.m977a("a=0; b=0; [ -f " + str2 + "launcher4x6.db ] && a=1; [ -f " + str2 + "launcher4x5.db ] && b=1; echo $a$b").trim();
        if ("10".equals(trim)) {
            return "launcher4x6.db";
        }
        if ("01".equals(trim)) {
            return "launcher4x5.db";
        }
        if ("11".equals(trim)) {
            return m1572b(str) ? "launcher4x6.db" : "launcher4x5.db";
        }
        throw new IllegalStateException("无法读取桌面数据库");
    }

    /* renamed from: a */
    static a m1561a(Context context, String str) throws Exception {
        File file = new File(context.getCacheDir(), "home-db-" + Process.myPid() + RailCodec.f922e + Thread.currentThread().getId());
        int i = 0;
        Files.createDirectories(file.toPath(), new FileAttribute[0]);
        String str2 = str + "/databases/";
        String m1564a = m1564a(str);
        File file2 = new File(file, m1564a);
        try {
            String[] strArr = {m1564a, m1564a + "-wal", m1564a + "-shm"};
            for (int i2 = 0; i2 < 3; i2++) {
                String str3 = strArr[i2];
                File file3 = new File(file, str3);
                Files.deleteIfExists(file3.toPath());
                String m977a = RootShell.m977a("if [ -f " + str2 + str3 + " ]; then base64 " + str2 + str3 + "; else " + (str3.equals(m1564a) ? "echo '无法读取桌面数据库' >&2; exit 3" : ":") + "; fi");
                if (!m977a.isEmpty()) {
                    Files.write(file3.toPath(), Base64.decode(m977a, 0), new OpenOption[0]);
                }
            }
            Log.i("MiDuoAlbum", "widget page db copy " + file2.getPath() + " file=" + file2.isFile() + " size=" + file2.length() + " canRead=" + file2.canRead() + " wal=" + new File(file, m1564a + "-wal").length());
            String str4 = context.getPackageName() + "/" + AlbumWidgetProvider.class.getName();
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

    /* renamed from: a */
    static boolean m1569a(Context context, int i, d dVar) {
        return m1570a(context, i, dVar, (b) null);
    }

    /* renamed from: a */
    static boolean m1570a(Context context, int i, d dVar, b bVar) {
        boolean z;
        String trim;
        String str;
        long longValue;
        String str2 = "/proc/1/root/data/user_de/" + (Process.myUid() / 100000) + "/com.miui.home";
        String str3 = str2 + "/files/miduo-layout";
        c cVar = new c();
        try {
            trim = RootShell.m977a("id -u").trim();
        } catch (InterruptedException e) {
            z = true;
        } catch (Exception e2) {
            e = e2;
            z = true;
        }
        try {
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            return z;
        } catch (Exception e4) {
            e = e4;
            cVar.m1576a("Root 可用", e);
            dVar.mo770a(cVar, e);
            return z;
        }
        if (!"0".equals(trim)) {
            throw new IllegalStateException("没有拿到 Root，uid=" + trim);
        }
        cVar.m1577a("Root 可用", (String) null);
        String trim2 = RootShell.m977a("cat " + str3 + "/active 2>/dev/null || echo duo").trim();
        if (!"duo".equals(trim2)) {
            dVar.mo771a("请先打开 MiDuo 总开关");
            return true;
        }
        cVar.m1577a("MiDuo 总开关", trim2);
        a m1561a = m1561a(context, str2);
        cVar.m1577a("桌面数据库可读", "桌面上有 " + m1561a.f1539a.size() + " 个相册");
        long m1573c = m1573c(str2);
        if (m1573c < 0) {
            str = "还没有记录";
        } else {
            str = "记录页 " + m1573c;
        }
        cVar.m1577a("小组件页记录可读", str);
        if (m1561a.f1539a.isEmpty()) {
            return false;
        }
        Long l = m1561a.f1539a.get(Integer.valueOf(i));
        if (bVar != null) {
            longValue = bVar.f1545d;
        } else {
            if (l == null) {
                l = m1561a.f1539a.values().iterator().next();
            }
            longValue = l.longValue();
        }
        z = true;
        cVar.m1577a("相册所在页", "第 " + longValue + " 页");
        if (longValue == m1573c) {
            Log.i("MiDuoAlbum", "widget page already set to screen " + longValue);
            dVar.mo771a("已经是桌面第 1 页，不用重复设置");
            return true;
        }
        cVar.m1577a("桌面布局文件夹", RootShell.m977a("d=" + str3 + "; f=" + (str2 + "/files") + "; if [ -d $d ]; then echo 已有; else mkdir -m 700 $d && chown $(stat -c %u:%g $f) $d && chcon $(stat -c %C $f) $d && echo 已新建; fi").trim());
        RootShell.m977a("d=" + str3 + "; printf '%d' " + longValue + " > $d/widget-page.tmp && chown $(stat -c %u:%g $d) $d/widget-page.tmp && chmod 600 $d/widget-page.tmp && chcon $(stat -c %C $d) $d/widget-page.tmp && mv -f $d/widget-page.tmp $d/widget-page");
        cVar.m1577a("写入小组件页记录", (String) null);
        if (bVar == null) {
            RootShell.m977a("am force-stop com.miui.home && am start -a android.intent.action.MAIN -c android.intent.category.HOME");
        } else {
            String str4 = str2 + "/databases";
            String str5 = bVar.f1543b;
            String str6 = context.getFilesDir().getAbsolutePath() + "/album-fix-backup";
            RootShell.m977a("cur=$(" + m1565a(str2, str5) + "); [ \"$cur\" = '" + bVar.f1544c + "' ] || { echo '桌面库在这期间被改写，没有替换' >&2; exit 9; }; rm -rf " + str6 + "; mkdir -p " + str6 + " && cp " + str4 + "/" + str5 + "* " + str6 + "/ || exit 8; am force-stop com.miui.home; cat " + bVar.f1542a.getAbsolutePath() + " > " + str4 + "/" + str5 + " && rm -f " + str4 + "/" + str5 + "-wal " + str4 + "/" + str5 + "-shm && sync; am start -a android.intent.action.MAIN -c android.intent.category.HOME");
            cVar.m1577a("关开桌面", "已换上修正后的桌面库，旧库备份在 MiDuo 的 album-fix-backup");
        }
        Log.i("MiDuoAlbum", "widget page set to screen " + longValue + "\n" + cVar.m1575a());
        dVar.mo771a("已设为桌面第 1 页，桌面重开后在第 1 页");
        return z;
    }
}
