package dev.duo.icons;

/* loaded from: classes.dex */
final class f implements dev.duo.icons.d.a {
    private final java.lang.Class<?> a;
    private final java.lang.Class<?> b;
    private final java.lang.Class<?> c;

    f(android.content.Context context) throws java.lang.Exception {
        if (android.os.Process.myUid() != 6101 || context.checkSelfPermission("android.permission.CHANGE_CONFIGURATION") != 0) {
            throw new java.lang.SecurityException("主题进程缺少原生图标权限");
        }
        java.io.File file = new java.io.File("/data/system/theme");
        if (!file.getCanonicalPath().equals(file.getAbsolutePath()) || !file.isDirectory() || !file.canWrite()) {
            throw new java.io.IOException("原生主题目录不可写");
        }
        java.lang.Class<?> cls = java.lang.Class.forName("android.content.res.MiuiConfiguration");
        this.a = cls;
        java.lang.Class<?> cls2 = java.lang.Class.forName("miui.content.res.IconCustomizer");
        this.b = cls2;
        java.lang.Class<?> cls3 = java.lang.Class.forName("miui.content.res.ThemeResources");
        this.c = cls3;
        if (cls.getField("THEME_FLAG_ICON").getLong(null) != 8) {
            throw new java.io.IOException("系统图标接口版本不兼容");
        }
        if (cls3.getMethod("getSystem", null).invoke(null, null) == null) {
            cls3.getMethod("getSystem", java.lang.Class.forName("android.content.res.MiuiResources")).invoke(null, context.getResources());
        }
        cls.getMethod("sendThemeConfigurationChangeMsg", java.lang.Long.TYPE);
        cls2.getMethod("clearCustomizedIcons", java.lang.String.class);
    }

    static void a(byte[] bArr) throws java.lang.Exception {
        android.graphics.Bitmap decodeByteArray = android.graphics.BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray == null) {
            throw new java.io.IOException("图标图片无法解码");
        }
        decodeByteArray.recycle();
    }

    @Override // dev.duo.icons.d.a
    public void b(java.nio.file.Path path) throws java.lang.Exception {
        if (!path.getParent().toString().equals("/data/system/theme") || !path.getFileName().toString().startsWith("duo-icons-") || java.nio.file.Files.isSymbolicLink(path)) {
            throw new java.io.IOException("主题临时文件路径不匹配");
        }
        java.lang.String str = (java.lang.String) java.lang.Class.forName("android.os.SELinux").getMethod("getFileContext", java.lang.String.class).invoke(null, path.toString());
        java.lang.String str2 = (java.lang.String) java.lang.Class.forName("android.os.SELinux").getMethod("getContext", null).invoke(null, null);
        if (str2 == null || !str2.startsWith("u:r:theme:")) {
            throw new java.io.IOException("图标桥不在原生主题安全域");
        }
        java.lang.String str3 = "u:object_r:theme_data_file:" + str2.substring(10);
        android.util.Log.i("DuoIcons", "新图标文件继承的安全标签：" + str);
        if (!"u:object_r:theme_data_file:s0".equals(str) && !str3.equals(str)) {
            throw new java.io.IOException("新图标文件的原生安全标签不兼容，已保留当前图标");
        }
        android.system.StructStat stat = android.system.Os.stat(path.toString());
        if (stat.st_uid != 6101 || stat.st_gid != 6101) {
            throw new java.io.IOException("图标临时文件所有者不匹配");
        }
        android.system.Os.chmod(path.toString(), 420);
        if ((android.system.Os.stat(path.toString()).st_mode & 511) != 420) {
            throw new java.io.IOException("主题文件读取权限未确认");
        }
    }

    @Override // dev.duo.icons.d.a
    public void a(java.nio.file.Path path) throws java.lang.Exception {
        java.io.FileDescriptor open = android.system.Os.open(path.toString(), android.system.OsConstants.O_RDONLY, 0);
        try {
            android.system.Os.fsync(open);
        } finally {
            android.system.Os.close(open);
        }
    }

    @Override // dev.duo.icons.d.a
    public void a() throws java.lang.Exception {
        long j = b()[0];
        this.b.getMethod("clearCustomizedIcons", java.lang.String.class).invoke(null, null);
        java.lang.Object invoke = this.c.getMethod("getSystem", null).invoke(null, null);
        if (invoke != null) {
            invoke.getClass().getMethod("resetIcons", null).invoke(invoke, null);
            this.a.getMethod("sendThemeConfigurationChangeMsg", java.lang.Long.TYPE).invoke(null, 8L);
            long[] b = b();
            if (b[0] <= j || b[1] != 8) {
                throw new java.io.IOException("系统未确认仅图标刷新");
            }
            return;
        }
        throw new java.io.IOException("原生主题资源尚未就绪");
    }

    private long[] b() throws java.lang.Exception {
        java.lang.reflect.Method declaredMethod = java.lang.Class.forName("android.app.ActivityManagerNative").getDeclaredMethod("getDefault", null);
        declaredMethod.setAccessible(true);
        return new long[]{this.a.getField("themeChanged").getInt(r0), this.a.getField("themeChangedFlags").getLong(this.a.getMethod("getExtraConfig", java.lang.Class.forName("android.content.res.Configuration")).invoke(null, java.lang.Class.forName("android.app.IActivityManager").getMethod("getConfiguration", null).invoke(declaredMethod.invoke(null, null), null)))};
    }
}
