package btm.p000m.os4.systemuihook.hypermusiccover;

import android.app.KeyguardManager;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.Xml;
import java.io.File;
import java.io.FileInputStream;
import java.util.Objects;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.c */
/* loaded from: classes.dex */
final class C0002c {

    /* renamed from: a */
    private static final String f17a = "IosNc ";

    /* renamed from: b */
    private static final String f18b = "image";

    /* renamed from: c */
    private static Context f19c = null;

    /* renamed from: d */
    private static Handler f20d = null;

    /* renamed from: e */
    private static Handler f21e = null;

    /* renamed from: f */
    private static volatile Bitmap f22f = null;

    /* renamed from: g */
    private static StructStat f23g = null;

    /* renamed from: h */
    private static volatile Bitmap f24h = null;

    /* renamed from: i */
    private static volatile boolean f25i = false;

    /* renamed from: j */
    private static volatile int f26j = 0;

    /* renamed from: k */
    private static volatile long f27k = 0;

    /* renamed from: l */
    private static final long f28l = 150;

    /* renamed from: m */
    private static String f29m = "";

    /* renamed from: n */
    private static String f30n = "";

    /* renamed from: o */
    private static long f31o = 0;

    /* renamed from: p */
    private static boolean f32p = true;

    /* renamed from: q */
    private static boolean f33q = true;

    /* renamed from: r */
    private static boolean f34r;

    /* renamed from: s */
    private static SharedPreferencesC0000a f35s;

    /* renamed from: t */
    private static boolean f36t;

    /* renamed from: u */
    private static int f37u;

    /* renamed from: v */
    private static boolean f38v;

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.c$a */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long unused = C0002c.f31o = 0L;
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                return;
            }
            C0007h.m115O();
        }
    }

    private C0002c() {
    }

    /* renamed from: a */
    static boolean m30a() {
        return false;
    }

    /* renamed from: b */
    static void m36b(boolean z) {
    }

    /* renamed from: c */
    static void m42c(boolean z) {
    }

    /* renamed from: d */
    static boolean m44d() {
        m46f();
        return f32p;
    }

    /* renamed from: e */
    private static Handler m45e() {
        if (f21e == null) {
            f21e = new Handler(Looper.getMainLooper());
        }
        return f21e;
    }

    /* renamed from: f */
    private static void m46f() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - f31o < f28l) {
            return;
        }
        if (f19c == null) {
            m37b();
        }
        Context context = f19c;
        if (context == null) {
            return;
        }
        f31o = uptimeMillis;
        f32p = m43c(context);
        f33q = m38b(context);
    }

    /* renamed from: g */
    static void m47g() {
        if (!C0007h.m181w() || C0007h.m101A()) {
            if (f19c == null && !m37b()) {
                int i = f37u;
                f37u = i + 1;
                if (i < 50) {
                    if (!f38v) {
                        f38v = true;
                        C0009j.m209a("IosNc waiting for the application context");
                    }
                    m45e().postDelayed(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0002c.m47g();
                        }
                    }, 200L);
                    return;
                }
                return;
            }
            final Context context = f19c;
            if (context == null || f25i || SystemClock.uptimeMillis() < f27k) {
                return;
            }
            final boolean m104D = C0007h.m104D();
            final int i2 = f26j;
            final Bitmap bitmap = f22f;
            final StructStat structStat = f23g;
            f25i = true;
            m53m().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C0002c.m26a(context, m104D, bitmap, structStat, i2);
                }
            });
        }
    }

    /* renamed from: h */
    static boolean m48h() {
        m46f();
        return f33q;
    }

    /* renamed from: i */
    static int m49i() {
        return 0;
    }

    /* renamed from: j */
    static String m50j() {
        return "0";
    }

    /* renamed from: k */
    private static void m51k() {
        if (f34r || f19c == null) {
            return;
        }
        f34r = true;
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            f19c.registerReceiver(new a(), intentFilter, 4);
        } catch (Throwable th) {
            C0009j.m209a("IosNc screen watch failed: " + th);
        }
    }

    /* renamed from: l */
    private static void m52l() {
        if (f36t) {
            return;
        }
        f36t = true;
        try {
            ((WallpaperManager) f19c.getSystemService(WallpaperManager.class)).addOnColorsChangedListener(new WallpaperManager.OnColorsChangedListener() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda1
                @Override // android.app.WallpaperManager.OnColorsChangedListener
                public final void onColorsChanged(WallpaperColors wallpaperColors, int i) {
                    C0002c.m24a(wallpaperColors, i);
                }
            }, m45e());
        } catch (Throwable th) {
            C0009j.m209a("IosNc wallpaper watch failed: " + th);
        }
    }

    /* renamed from: m */
    private static synchronized Handler m53m() {
        Handler handler;
        synchronized (C0002c.class) {
            if (f20d == null) {
                HandlerThread handlerThread = new HandlerThread("ios-nc-wallpaper", -4);
                handlerThread.start();
                f20d = new Handler(handlerThread.getLooper());
            }
            handler = f20d;
        }
        return handler;
    }

    /* renamed from: b */
    static void m33b(int i) {
    }

    /* renamed from: c */
    static void m41c(final SharedPreferencesC0000a sharedPreferencesC0000a) {
        f35s = sharedPreferencesC0000a;
        if (f19c != null) {
            m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    C0002c.m35b(SharedPreferencesC0000a.this);
                }
            });
        }
    }

    /* renamed from: a */
    static void m25a(Context context) {
        if (context == null) {
            return;
        }
        f19c = context.getApplicationContext();
        m51k();
        m52l();
        final SharedPreferencesC0000a sharedPreferencesC0000a = f35s;
        if (sharedPreferencesC0000a != null) {
            m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    C0002c.m28a(SharedPreferencesC0000a.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m35b(SharedPreferencesC0000a sharedPreferencesC0000a) {
        sharedPreferencesC0000a.m8a(f19c, m53m());
    }

    /* renamed from: b */
    static boolean m37b() {
        if (f19c != null) {
            return true;
        }
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (!(invoke instanceof Context)) {
                return false;
            }
            m25a((Context) invoke);
            if (f37u > 0) {
                C0009j.m209a("IosNc application context attached");
            }
            return true;
        } catch (Throwable th) {
            C0009j.m209a("IosNc application context lookup failed: " + th);
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m43c(Context context) {
        try {
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (keyguardManager != null) {
                if (!keyguardManager.isKeyguardLocked()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            return true;
        }
    }

    /* renamed from: c */
    static void m40c() {
        f26j++;
        f27k = 0L;
        f23g = null;
        m34b((Bitmap) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m28a(SharedPreferencesC0000a sharedPreferencesC0000a) {
        sharedPreferencesC0000a.m8a(f19c, m53m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m24a(WallpaperColors wallpaperColors, int i) {
        f26j++;
        f27k = 0L;
        if (C0007h.m101A()) {
            m47g();
        }
    }

    /* renamed from: c */
    private static String m39c(Context context, String str) {
        boolean equals = "lock".equals(str);
        String m21a = m21a(str);
        String str2 = "MIUI's " + str + ".xml";
        if (m21a == null && equals) {
            str2 = "flag_lock_wallpaper_type";
            m21a = m32b(context, "flag_lock_wallpaper_type");
        }
        if (m21a == null) {
            m21a = m20a(context, equals ? "lockscreenInfo" : "homeInfo");
            str2 = "constant_template_editor_info";
        }
        if (!Objects.equals(equals ? f29m : f30n, m21a)) {
            C0009j.m209a(f17a + str + " wallpaper is " + (m21a == null ? "unknown" : m21a) + (m21a == null ? "" : " per " + str2));
            if (equals) {
                f29m = m21a;
                return m21a;
            }
            f30n = m21a;
        }
        return m21a;
    }

    /* renamed from: a */
    static void m29a(boolean z) {
        f32p = z;
        f31o = SystemClock.uptimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m26a(Context context, boolean z, Bitmap bitmap, StructStat structStat, int i) {
        final Bitmap bitmap2;
        final int i2;
        final Bitmap bitmap3;
        Object obj;
        String m39c;
        final StructStat[] structStatArr = new StructStat[1];
        try {
            m39c = m39c(context, z ? "lock" : "home");
        } catch (Throwable th) {
            th = th;
            bitmap2 = bitmap;
            i2 = i;
        }
        if (m39c != null) {
            try {
            } catch (Throwable th2) {
                obj = th2;
                bitmap2 = bitmap;
                i2 = i;
                C0009j.m209a("IosNc shade wallpaper load failed: " + obj);
                bitmap3 = null;
                m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0002c.m23a(i2, bitmap3, bitmap2, structStatArr);
                    }
                });
            }
            if (!f18b.equals(m39c)) {
                C0009j.m209a("IosNc shade wallpaper is " + m39c + "; keeping the platform background");
                bitmap2 = bitmap;
                i2 = i;
                bitmap3 = null;
                m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0002c.m23a(i2, bitmap3, bitmap2, structStatArr);
                    }
                });
            }
        }
        WallpaperManager wallpaperManager = (WallpaperManager) context.getSystemService("wallpaper");
        if (wallpaperManager == null) {
            bitmap2 = bitmap;
            i2 = i;
            bitmap3 = null;
            m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    C0002c.m23a(i2, bitmap3, bitmap2, structStatArr);
                }
            });
        }
        bitmap2 = bitmap;
        i2 = i;
        try {
            bitmap3 = m19a(wallpaperManager, z, bitmap2, structStat, structStatArr, i2);
        } catch (Throwable th3) {
            th = th3;
            obj = th;
            C0009j.m209a("IosNc shade wallpaper load failed: " + obj);
            bitmap3 = null;
            m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    C0002c.m23a(i2, bitmap3, bitmap2, structStatArr);
                }
            });
        }
        m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C0002c.m23a(i2, bitmap3, bitmap2, structStatArr);
            }
        });
    }

    /* renamed from: b */
    private static boolean m38b(Context context) {
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                if (powerManager.isInteractive()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    private static void m34b(Bitmap bitmap) {
        final Bitmap bitmap2 = f22f;
        if (bitmap2 == bitmap) {
            return;
        }
        f22f = bitmap;
        C0007h.m133a(bitmap);
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        Bitmap bitmap3 = f24h;
        f24h = bitmap2;
        if (bitmap3 != null && bitmap3 != bitmap2 && !bitmap3.isRecycled()) {
            bitmap3.recycle();
        }
        m45e().postDelayed(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0002c.m27a(bitmap2);
            }
        }, 32L);
    }

    /* renamed from: b */
    private static String m32b(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        String[] strArr = new String[3];
        try {
            strArr[0] = Settings.Secure.getString(contentResolver, str);
            strArr[1] = Settings.System.getString(contentResolver, str);
            strArr[2] = Settings.Global.getString(contentResolver, str);
        } catch (Throwable th) {
        }
        for (int i = 0; i < 3; i++) {
            String str2 = strArr[i];
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m23a(int i, Bitmap bitmap, Bitmap bitmap2, StructStat[] structStatArr) {
        f25i = false;
        if (i != f26j) {
            if (bitmap != null && bitmap != bitmap2 && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            if (C0007h.m101A()) {
                m47g();
                return;
            }
            return;
        }
        if (bitmap == null) {
            f23g = null;
            m34b((Bitmap) null);
            f27k = SystemClock.uptimeMillis() + 5000;
        } else {
            f23g = structStatArr[0];
            if (bitmap == bitmap2) {
                C0009j.m209a("IosNc shade wallpaper file unchanged; bitmap retained");
            } else {
                m34b(bitmap);
                C0009j.m209a("IosNc shade wallpaper loaded " + bitmap.getWidth() + "x" + bitmap.getHeight());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m27a(Bitmap bitmap) {
        if (f24h != bitmap) {
            return;
        }
        f24h = null;
        if (bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    /* renamed from: a */
    private static Bitmap m19a(WallpaperManager wallpaperManager, boolean z, Bitmap bitmap, StructStat structStat, StructStat[] structStatArr, final int i) throws Exception {
        ParcelFileDescriptor wallpaperFile = wallpaperManager.getWallpaperFile(z ? 2 : 1);
        if (wallpaperFile == null && z) {
            wallpaperFile = wallpaperManager.getWallpaperFile(1);
        }
        if (wallpaperFile == null) {
            Bitmap m18a = m18a(wallpaperManager);
            if (m18a == null) {
                return null;
            }
            return m18a.copy(Bitmap.Config.ARGB_8888, false);
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(wallpaperFile);
        try {
            StructStat fstat = Os.fstat(wallpaperFile.getFileDescriptor());
            structStatArr[0] = fstat;
            if (bitmap != null && !bitmap.isRecycled() && m31a(structStat, fstat)) {
                autoCloseInputStream.close();
                return bitmap;
            }
            if (bitmap != null) {
                m45e().post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.c$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0002c.m22a(i);
                    }
                });
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            Bitmap decodeStream = BitmapFactory.decodeStream(autoCloseInputStream, null, options);
            autoCloseInputStream.close();
            return decodeStream;
        } catch (Throwable th) {
            try {
                autoCloseInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m22a(int i) {
        if (i == f26j) {
            m34b((Bitmap) null);
        }
    }

    /* renamed from: a */
    static boolean m31a(StructStat structStat, StructStat structStat2) {
        return structStat != null && OsConstants.S_ISREG(structStat2.st_mode) && structStat.st_dev == structStat2.st_dev && structStat.st_ino == structStat2.st_ino && structStat.st_size == structStat2.st_size && structStat.st_mtim.equals(structStat2.st_mtim) && structStat.st_ctim.equals(structStat2.st_ctim);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v8, types: [android.graphics.Bitmap] */
    /* renamed from: a */
    private static Bitmap m18a(WallpaperManager wallpaperManager) {
        WallpaperManager wallpaperManager2;
        Bitmap bitmap;
        try {
            ParcelFileDescriptor wallpaperFile = wallpaperManager.getWallpaperFile(1);
            wallpaperManager2 = wallpaperManager;
            if (wallpaperFile != null) {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(wallpaperFile);
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    wallpaperManager = BitmapFactory.decodeStream(autoCloseInputStream, null, options);
                    try {
                        autoCloseInputStream.close();
                        return wallpaperManager;
                    } catch (Throwable th) {
                        return wallpaperManager;
                    }
                } catch (Throwable th2) {
                    try {
                        autoCloseInputStream.close();
                    } catch (Throwable th3) {
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            C0009j.m209a("IosNc reading the home wallpaper file failed: " + th4);
            wallpaperManager2 = wallpaperManager;
        }
        try {
            Drawable drawable = wallpaperManager2.getDrawable();
            if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
                return bitmap.copy(Bitmap.Config.ARGB_8888, false);
            }
            return null;
        } catch (Throwable th5) {
        }
        return null;
    }

    /* renamed from: a */
    private static String m21a(String str) {
        FileInputStream fileInputStream;
        File file;
        String attributeValue;
        try {
            try {
                file = new File("/data/system/theme_magic/users/" + (Process.myUid() / 100000) + "/wallpaper/data/" + str + ".xml");
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        if (!file.canRead()) {
            return null;
        }
        fileInputStream = new FileInputStream(file);
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setInput(fileInputStream, null);
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType == 2 && (attributeValue = newPullParser.getAttributeValue(null, "type")) != null && !attributeValue.isEmpty()) {
                    try {
                        fileInputStream.close();
                        return attributeValue;
                    } catch (Throwable th3) {
                        return attributeValue;
                    }
                }
            }
            fileInputStream.close();
        } catch (Throwable th4) {
            th = th4;
            try {
                C0009j.m209a("IosNc cannot read MIUI's " + str + " wallpaper record: " + th);
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return null;
            } catch (Throwable th5) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                    }
                }
                throw th5;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static String m20a(Context context, String str) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "constant_template_editor_info");
            if (string == null || string.isEmpty() || (optJSONObject = new JSONObject(string).optJSONObject(str)) == null || (optJSONObject2 = optJSONObject.optJSONObject("wallpaperInfo")) == null) {
                return null;
            }
            String optString = optJSONObject2.optString("resourceType", "");
            if (optString.isEmpty()) {
                return null;
            }
            return optString;
        } catch (Throwable th) {
            C0009j.m209a("IosNc cannot read " + str + " from the editor info: " + th);
            return null;
        }
    }
}
