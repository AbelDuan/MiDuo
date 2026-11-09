package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class BugCaptureService extends android.app.Service {
    static final java.lang.String e = "dev.duo.hookprobe.STOP_BUG_CAPTURE";
    static volatile boolean f = false;
    private static final int g = 332;
    private static final long h = 45000;
    private final android.os.Handler a = new android.os.Handler(android.os.Looper.getMainLooper());
    private volatile java.lang.Process b;
    private volatile java.lang.String c;
    private volatile long d;

    static android.content.SharedPreferences a(android.content.Context context) {
        return context.getSharedPreferences("bug_capture", 0);
    }

    private void b(java.lang.String str) {
        a(this).edit().putString("status", str).apply();
    }

    private void c(java.lang.String str) {
        if (this.c != null) {
            return;
        }
        this.c = str;
        this.d = java.lang.System.currentTimeMillis();
        b("正在结束：" + str);
        b();
        this.a.postDelayed(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureService.this.e();
            }
        }, h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        c("已达到 2 分钟上限");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        java.lang.Process process = this.b;
        if (process == null || !process.isAlive()) {
            return;
        }
        process.destroyForcibly();
    }

    private void f() {
        java.io.File[] listFiles = getFilesDir().listFiles(new java.io.FilenameFilter() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(java.io.File file, java.lang.String str) {
                boolean a;
                a = dev.duo.hookprobe.BugCaptureService.a(file, str);
                return a;
            }
        });
        if (listFiles != null) {
            if (listFiles.length <= 2) {
                return;
            }
            java.util.Arrays.sort(listFiles, new java.util.Comparator() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                    int a;
                    a = dev.duo.hookprobe.BugCaptureService.a((java.io.File) obj, (java.io.File) obj2);
                    return a;
                }
            });
            for (int i = 2; i < listFiles.length; i++) {
                if (!listFiles[i].delete()) {
                    android.util.Log.w("DuoBugCapture", "旧报告删除失败：" + listFiles[i].getName());
                }
            }
        }
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (f) {
            c("抓取服务被系统结束");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        if (intent == null || e.equals(intent.getAction())) {
            if (f) {
                c("用户结束复现");
            } else {
                stopSelf();
            }
            return 2;
        }
        if (f) {
            return 2;
        }
        ((android.app.NotificationManager) getSystemService(android.app.NotificationManager.class)).createNotificationChannel(new android.app.NotificationChannel("bug_capture", "Bug 抓取", 2));
        startForeground(g, new android.app.Notification.Builder(this, "bug_capture").setSmallIcon(android.R.drawable.ic_menu_info_details).setContentTitle("MiDuo 正在抓取问题日志").setContentText("请复现问题，完成后点结束；最多 2 分钟").setContentIntent(android.app.PendingIntent.getActivity(this, 0, new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.BugCaptureActivity.class), 67108864)).setOngoing(true).addAction(new android.app.Notification.Action.Builder((android.graphics.drawable.Icon) null, "结束抓取", android.app.PendingIntent.getService(this, 0, new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.BugCaptureService.class).setAction(e), 67108864)).build()).build(), 2048);
        f = true;
        a(this).edit().putBoolean("capturing", true).apply();
        b("等待 Root 授权…");
        this.a.postDelayed(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureService.this.d();
            }
        }, 120000L);
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureService.this.a();
            }
        }, "MiDuo-bug-capture").start();
        return 2;
    }

    @Override // android.app.Service
    public void onTimeout(int i) {
        c("系统结束短时抓取");
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        final java.lang.String str;
        java.io.BufferedOutputStream bufferedOutputStream;
        java.lang.String str2 = "bug-" + new java.text.SimpleDateFormat("yyyyMMdd-HHmmss-SSS", java.util.Locale.ROOT).format(new java.util.Date()) + ".txt";
        java.io.File file = new java.io.File(getFilesDir(), str2);
        f();
        try {
            bufferedOutputStream = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file));
        } catch (java.io.IOException | java.lang.RuntimeException e2) {
            str = "抓取失败：" + e2.getMessage();
            android.util.Log.e("DuoBugCapture", str, e2);
        }
        try {
            a(this).edit().putString("file", str2).apply();
            bufferedOutputStream.write(c().getBytes(java.nio.charset.StandardCharsets.UTF_8));
            bufferedOutputStream.flush();
            try {
                try {
                } catch (java.io.IOException e3) {
                    java.lang.String str3 = this.c == null ? "抓取失败：" + e3.getMessage() : this.c;
                    android.util.Log.w("DuoBugCapture", "抓取结束：" + str3, e3);
                    b();
                    java.lang.Process process = this.b;
                    if (process != null) {
                        try {
                            if (!process.waitFor(h, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                                process.destroyForcibly();
                                android.util.Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (java.lang.InterruptedException e4) {
                            java.lang.Thread.currentThread().interrupt();
                            process.destroyForcibly();
                            android.util.Log.w("DuoBugCapture", "等待日志退出被中断", e4);
                        }
                        this.b = null;
                    }
                    str = str3;
                }
                if (this.c != null) {
                    throw new java.io.IOException(this.c);
                }
                this.b = new java.lang.ProcessBuilder("su", "-c", dev.duo.hookprobe.C0021j.a()).redirectErrorStream(true).start();
                if (this.c != null) {
                    b();
                }
                java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(this.b.getInputStream());
                try {
                    dev.duo.hookprobe.C0021j.a(bufferedInputStream);
                    b("抓取中：请去复现，完成后结束抓取");
                    if (dev.duo.hookprobe.C0021j.a(bufferedInputStream, bufferedOutputStream, 16773120 - r4.length)) {
                        this.c = "日志已达到 16 MiB 上限";
                    }
                    if (this.c == null) {
                        throw new java.io.IOException("日志进程提前退出，请查看报告末尾的错误");
                    }
                    str = this.c;
                    bufferedInputStream.close();
                    b();
                    java.lang.Process process2 = this.b;
                    if (process2 != null) {
                        try {
                            if (!process2.waitFor(h, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                                process2.destroyForcibly();
                                android.util.Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (java.lang.InterruptedException e5) {
                            java.lang.Thread.currentThread().interrupt();
                            process2.destroyForcibly();
                            android.util.Log.w("DuoBugCapture", "等待日志退出被中断", e5);
                        }
                        this.b = null;
                    }
                    byte[] bytes = ("\n\n停止请求时间=" + (this.d == 0 ? "自动限量/错误" : new java.util.Date(this.d)) + "\n结束时间=" + new java.util.Date() + "\n结果=" + str + "\n").getBytes(java.nio.charset.StandardCharsets.UTF_8);
                    bufferedOutputStream.write(bytes, 0, java.lang.Math.min(bytes.length, dev.duo.taskcore.h.A));
                    bufferedOutputStream.close();
                    this.a.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.BugCaptureService.this.a(str);
                        }
                    });
                } catch (java.lang.Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (java.lang.Throwable th3) {
                b();
                java.lang.Process process3 = this.b;
                if (process3 != null) {
                    try {
                        if (!process3.waitFor(h, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                            process3.destroyForcibly();
                            android.util.Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                        }
                    } catch (java.lang.InterruptedException e6) {
                        java.lang.Thread.currentThread().interrupt();
                        process3.destroyForcibly();
                        android.util.Log.w("DuoBugCapture", "等待日志退出被中断", e6);
                    }
                    this.b = null;
                }
                throw th3;
            }
        } catch (java.lang.Throwable th4) {
            try {
                bufferedOutputStream.close();
            } catch (java.lang.Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    private void b() {
        java.lang.Process process = this.b;
        if (process == null) {
            return;
        }
        try {
            process.getOutputStream().close();
        } catch (java.io.IOException e2) {
            android.util.Log.w("DuoBugCapture", "关闭日志输入失败", e2);
        }
    }

    public void onTimeout(int i, int i2) {
        c("系统结束短时抓取");
        stopSelf();
    }

    private java.lang.String c() {
        java.lang.StringBuilder append = new java.lang.StringBuilder("MiDuo 问题复现日志\n开始时间=").append(new java.util.Date()).append("\n设备=").append(android.os.Build.MANUFACTURER).append(' ').append(android.os.Build.MODEL).append("\nROM=").append(android.os.Build.FINGERPRINT).append("\nAndroid SDK=").append(android.os.Build.VERSION.SDK_INT).append("\n资源配置=").append(getResources().getConfiguration()).append('\n');
        append.append("MiDuo构建标识=").append(dev.duo.hookprobe.C0023l.a).append('\n');
        java.lang.String[] strArr = {getPackageName(), "com.ss.android.ugc.aweme", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", "com.miui.gallery", "com.miui.securitycenter", "com.android.quicksearchbox"};
        for (int i = 0; i < 8; i++) {
            java.lang.String str = strArr[i];
            try {
                android.content.pm.PackageInfo packageInfo = getPackageManager().getPackageInfo(str, 0);
                append.append(str).append('=').append(packageInfo.versionName).append(" (").append(packageInfo.getLongVersionCode()).append(")\n");
            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                append.append(str).append("=未安装\n");
            }
        }
        io.github.libxposed.service.XposedService c = dev.duo.hookprobe.L.c();
        if (c == null) {
            append.append("MiDuo配置=LSPosed未连接\n");
        } else {
            try {
                android.content.SharedPreferences sharedPreferences = new dev.duo.hookprobe.C0026o(c).a;
                append.append("MiDuo master=").append(dev.duo.hookprobe.P.b(sharedPreferences)).append(" awemeDuo=").append(sharedPreferences.getBoolean(dev.duo.hookprobe.P.f("com.ss.android.ugc.aweme"), dev.duo.hookprobe.P.e("com.ss.android.ugc.aweme"))).append(" hiddenTops=").append(dev.duo.hookprobe.P.c(sharedPreferences, "com.ss.android.ugc.aweme")).append(" innerNativeBar=").append(dev.duo.hookprobe.P.d(sharedPreferences, "com.ss.android.ugc.aweme")).append(" outerScale=").append(dev.duo.hookprobe.P.g(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
                java.lang.String[] strArr2 = {"outer", "inner"};
                for (int i2 = 0; i2 < 2; i2++) {
                    java.lang.String str2 = strArr2[i2];
                    append.append("抖音 ").append(str2).append(" topPx=").append(dev.duo.hookprobe.P.b(sharedPreferences, "com.ss.android.ugc.aweme", str2)).append(" fit=").append(sharedPreferences.getBoolean(dev.duo.hookprobe.P.a(str2), true)).append('\n');
                }
                append.append("抖音 nonDuoOuterPx=").append(dev.duo.hookprobe.P.e(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
                java.util.TreeMap treeMap = new java.util.TreeMap();
                for (java.util.Map.Entry<java.lang.String, ?> entry : sharedPreferences.getAll().entrySet()) {
                    java.lang.String key = entry.getKey();
                    java.lang.Object value = entry.getValue();
                    if (key.startsWith("_global/") && ((value instanceof java.lang.Boolean) || (value instanceof java.lang.Integer))) {
                        if (!key.toLowerCase(java.util.Locale.ROOT).matches(".*(license|token|secret|key|device|uuid|sign|pay|account).*")) {
                            treeMap.put(key, value);
                        }
                    }
                }
                append.append("MiDuo全局设置(").append(treeMap.size()).append(")：");
                for (java.util.Map.Entry entry2 : treeMap.entrySet()) {
                    append.append(((java.lang.String) entry2.getKey()).substring(8)).append('=').append(entry2.getValue()).append(' ');
                }
                append.append('\n');
            } catch (java.lang.RuntimeException e3) {
                append.append("MiDuo配置读取失败=").append(e3).append('\n');
            }
        }
        append.append("\n覆盖模块：桌面/负一屏/侧栏/Dock/搜索/取色/待机/锁屏/壁纸/分屏/工作台/开合动画引擎/相册与小组件页/智能助理选择页/").append("授权与计费/引导（日志标签 Duo*、MiDuo*、TaskCore*，另含全部警告错误与系统窗口/小组件/崩溃关键日志）。\n");
        return append.append("以下内容只用于定位，可能含正在使用的应用、页面与报错信息；不含截图、聊天与照片内容。\n").toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str) {
        f = false;
        this.a.removeCallbacksAndMessages(null);
        a(this).edit().putBoolean("capturing", false).apply();
        b(str);
        stopForeground(1);
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(java.io.File file, java.lang.String str) {
        return str.startsWith("bug-") && str.endsWith(".txt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.io.File file, java.io.File file2) {
        return file2.getName().compareTo(file.getName());
    }
}
