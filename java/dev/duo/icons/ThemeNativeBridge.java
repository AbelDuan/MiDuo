package dev.duo.icons;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.Log;
import dev.duo.icons.IconPackageWriter;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;

/* renamed from: dev.duo.icons.f */
/* loaded from: classes.dex */
final class ThemeNativeBridge implements IconPackageWriter.a {

    /* renamed from: a */
    private final Class<?> f1960a;

    /* renamed from: b */
    private final Class<?> f1961b;

    /* renamed from: c */
    private final Class<?> f1962c;

    ThemeNativeBridge(Context context) throws Exception {
        if (Process.myUid() != 6101 || context.checkSelfPermission("android.permission.CHANGE_CONFIGURATION") != 0) {
            throw new SecurityException("主题进程缺少原生图标权限");
        }
        File file = new File("/data/system/theme");
        if (!file.getCanonicalPath().equals(file.getAbsolutePath()) || !file.isDirectory() || !file.canWrite()) {
            throw new IOException("原生主题目录不可写");
        }
        Class<?> cls = Class.forName("android.content.res.MiuiConfiguration");
        this.f1960a = cls;
        Class<?> cls2 = Class.forName("miui.content.res.IconCustomizer");
        this.f1961b = cls2;
        Class<?> cls3 = Class.forName("miui.content.res.ThemeResources");
        this.f1962c = cls3;
        if (cls.getField("THEME_FLAG_ICON").getLong(null) != 8) {
            throw new IOException("系统图标接口版本不兼容");
        }
        if (cls3.getMethod("getSystem", null).invoke(null, null) == null) {
            cls3.getMethod("getSystem", Class.forName("android.content.res.MiuiResources")).invoke(null, context.getResources());
        }
        cls.getMethod("sendThemeConfigurationChangeMsg", Long.TYPE);
        cls2.getMethod("clearCustomizedIcons", String.class);
    }

    /* renamed from: a */
    static void m2122a(byte[] bArr) throws Exception {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray == null) {
            throw new IOException("图标图片无法解码");
        }
        decodeByteArray.recycle();
    }

    @Override // dev.duo.icons.IconPackageWriter.a
    /* renamed from: b */
    public void mo2104b(Path path) throws Exception {
        if (!path.getParent().toString().equals("/data/system/theme") || !path.getFileName().toString().startsWith("duo-icons-") || Files.isSymbolicLink(path)) {
            throw new IOException("主题临时文件路径不匹配");
        }
        String str = (String) Class.forName("android.os.SELinux").getMethod("getFileContext", String.class).invoke(null, path.toString());
        String str2 = (String) Class.forName("android.os.SELinux").getMethod("getContext", null).invoke(null, null);
        if (str2 == null || !str2.startsWith("u:r:theme:")) {
            throw new IOException("图标桥不在原生主题安全域");
        }
        String str3 = "u:object_r:theme_data_file:" + str2.substring(10);
        Log.i("DuoIcons", "新图标文件继承的安全标签：" + str);
        if (!"u:object_r:theme_data_file:s0".equals(str) && !str3.equals(str)) {
            throw new IOException("新图标文件的原生安全标签不兼容，已保留当前图标");
        }
        StructStat stat = Os.stat(path.toString());
        if (stat.st_uid != 6101 || stat.st_gid != 6101) {
            throw new IOException("图标临时文件所有者不匹配");
        }
        Os.chmod(path.toString(), 420);
        if ((Os.stat(path.toString()).st_mode & 511) != 420) {
            throw new IOException("主题文件读取权限未确认");
        }
    }

    @Override // dev.duo.icons.IconPackageWriter.a
    /* renamed from: a */
    public void mo2103a(Path path) throws Exception {
        FileDescriptor open = Os.open(path.toString(), OsConstants.O_RDONLY, 0);
        try {
            Os.fsync(open);
        } finally {
            Os.close(open);
        }
    }

    @Override // dev.duo.icons.IconPackageWriter.a
    /* renamed from: a */
    public void mo2102a() throws Exception {
        long j = m2123b()[0];
        this.f1961b.getMethod("clearCustomizedIcons", String.class).invoke(null, null);
        Object invoke = this.f1962c.getMethod("getSystem", null).invoke(null, null);
        if (invoke != null) {
            invoke.getClass().getMethod("resetIcons", null).invoke(invoke, null);
            this.f1960a.getMethod("sendThemeConfigurationChangeMsg", Long.TYPE).invoke(null, 8L);
            long[] m2123b = m2123b();
            if (m2123b[0] <= j || m2123b[1] != 8) {
                throw new IOException("系统未确认仅图标刷新");
            }
            return;
        }
        throw new IOException("原生主题资源尚未就绪");
    }

    /* renamed from: b */
    private long[] m2123b() throws Exception {
        Method declaredMethod = Class.forName("android.app.ActivityManagerNative").getDeclaredMethod("getDefault", null);
        declaredMethod.setAccessible(true);
        return new long[]{this.f1960a.getField("themeChanged").getInt(r0), this.f1960a.getField("themeChangedFlags").getLong(this.f1960a.getMethod("getExtraConfig", Class.forName("android.content.res.Configuration")).invoke(null, Class.forName("android.app.IActivityManager").getMethod("getConfiguration", null).invoke(declaredMethod.invoke(null, null), null)))};
    }
}
