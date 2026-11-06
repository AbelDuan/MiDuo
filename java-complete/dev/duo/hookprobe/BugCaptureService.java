package dev.duo.hookprobe;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import dev.duo.taskcore.WorkspaceProtocol;
import io.github.libxposed.service.XposedService;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class BugCaptureService extends Service {
    static final String e = "com.lsposed.miduo.STOP_BUG_CAPTURE";
    static volatile boolean f = false;
    private static final int g = 332;
    private static final long h = 45000;
    private final Handler a = new Handler(Looper.getMainLooper());
    private volatile Process b;
    private volatile String c;
    private volatile long d;

    static SharedPreferences a(Context context) {
        return context.getSharedPreferences("bug_capture", 0);
    }

    private void b(String str) {
        a(this).edit().putString("status", str).apply();
    }

    private void c(String str) {
        if (this.c != null) {
            return;
        }
        this.c = str;
        this.d = System.currentTimeMillis();
        b("正在结束：" + str);
        b();
        this.a.postDelayed(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda3
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
        Process process = this.b;
        if (process == null || !process.isAlive()) {
            return;
        }
        process.destroyForcibly();
    }

    private void f() {
        File[] listFiles = getFilesDir().listFiles(new FilenameFilter() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean a;
                a = BugCaptureService.a(file, str);
                return a;
            }
        });
        if (listFiles != null) {
            if (listFiles.length <= 2) {
                return;
            }
            Arrays.sort(listFiles, new Comparator() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int a;
                    a = BugCaptureService.a((File) obj, (File) obj2);
                    return a;
                }
            });
            for (int i = 2; i < listFiles.length; i++) {
                if (!listFiles[i].delete()) {
                    Log.w("DuoBugCapture", "旧报告删除失败：" + listFiles[i].getName());
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
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
    public int onStartCommand(Intent intent, int i, int i2) {
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
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("bug_capture", "Bug 抓取", 2));
        startForeground(g, new Notification.Builder(this, "bug_capture").setSmallIcon(ResIds.drawable.ic_menu_info_details).setContentTitle("MiDuo 正在抓取问题日志").setContentText("请复现问题，完成后点结束；最多 2 分钟").setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) dev.duo.hookprobe.BugCaptureActivity.class), 67108864)).setOngoing(true).addAction(new Notification.Action.Builder((Icon) null, "结束抓取", PendingIntent.getService(this, 0, new Intent(this, (Class<?>) dev.duo.hookprobe.BugCaptureService.class).setAction(e), 67108864)).build()).build(), 2048);
        f = true;
        a(this).edit().putBoolean("capturing", true).apply();
        b("等待 Root 授权…");
        this.a.postDelayed(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureService.this.d();
            }
        }, 120000L);
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda5
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
        final String str;
        BufferedOutputStream bufferedOutputStream;
        String str2 = "bug-" + new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.ROOT).format(new Date()) + ".txt";
        File file = new File(getFilesDir(), str2);
        f();
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (IOException | RuntimeException e2) {
            str = "抓取失败：" + e2.getMessage();
            Log.e("DuoBugCapture", str, e2);
        }
        try {
            a(this).edit().putString("file", str2).apply();
            bufferedOutputStream.write(c().getBytes(StandardCharsets.UTF_8));
            bufferedOutputStream.flush();
            try {
                try {
                } catch (IOException e3) {
                    String str3 = this.c == null ? "抓取失败：" + e3.getMessage() : this.c;
                    Log.w("DuoBugCapture", "抓取结束：" + str3, e3);
                    b();
                    Process process = this.b;
                    if (process != null) {
                        try {
                            if (!process.waitFor(h, TimeUnit.MILLISECONDS)) {
                                process.destroyForcibly();
                                Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (InterruptedException e4) {
                            Thread.currentThread().interrupt();
                            process.destroyForcibly();
                            Log.w("DuoBugCapture", "等待日志退出被中断", e4);
                        }
                        this.b = null;
                    }
                    str = str3;
                }
                if (this.c != null) {
                    throw new IOException(this.c);
                }
                this.b = new ProcessBuilder("su", "-c", j.a()).redirectErrorStream(true).start();
                if (this.c != null) {
                    b();
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.b.getInputStream());
                try {
                    j.a(bufferedInputStream);
                    b("抓取中：请去复现，完成后结束抓取");
                    if (j.a(bufferedInputStream, bufferedOutputStream, 16773120 - r4.length)) {
                        this.c = "日志已达到 16 MiB 上限";
                    }
                    if (this.c == null) {
                        throw new IOException("日志进程提前退出，请查看报告末尾的错误");
                    }
                    str = this.c;
                    bufferedInputStream.close();
                    b();
                    Process process2 = this.b;
                    if (process2 != null) {
                        try {
                            if (!process2.waitFor(h, TimeUnit.MILLISECONDS)) {
                                process2.destroyForcibly();
                                Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (InterruptedException e5) {
                            Thread.currentThread().interrupt();
                            process2.destroyForcibly();
                            Log.w("DuoBugCapture", "等待日志退出被中断", e5);
                        }
                        this.b = null;
                    }
                    byte[] bytes = ("\n\n停止请求时间=" + (this.d == 0 ? "自动限量/错误" : new Date(this.d)) + "\n结束时间=" + new Date() + "\n结果=" + str + "\n").getBytes(StandardCharsets.UTF_8);
                    bufferedOutputStream.write(bytes, 0, Math.min(bytes.length, WorkspaceProtocol.MAX_PAYLOAD));
                    bufferedOutputStream.close();
                    this.a.post(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.BugCaptureService.this.a(str);
                        }
                    });
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                b();
                Process process3 = this.b;
                if (process3 != null) {
                    try {
                        if (!process3.waitFor(h, TimeUnit.MILLISECONDS)) {
                            process3.destroyForcibly();
                            Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                        }
                    } catch (InterruptedException e6) {
                        Thread.currentThread().interrupt();
                        process3.destroyForcibly();
                        Log.w("DuoBugCapture", "等待日志退出被中断", e6);
                    }
                    this.b = null;
                }
                throw th3;
            }
        } catch (Throwable th4) {
            try {
                bufferedOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    private void b() {
        Process process = this.b;
        if (process == null) {
            return;
        }
        try {
            process.getOutputStream().close();
        } catch (IOException e2) {
            Log.w("DuoBugCapture", "关闭日志输入失败", e2);
        }
    }

    public void onTimeout(int i, int i2) {
        c("系统结束短时抓取");
        stopSelf();
    }

    private String c() {
        StringBuilder append = new StringBuilder("MiDuo 问题复现日志\n开始时间=").append(new Date()).append("\n设备=").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append("\nROM=").append(Build.FINGERPRINT).append("\nAndroid SDK=").append(Build.VERSION.SDK_INT).append("\n资源配置=").append(getResources().getConfiguration()).append('\n');
        append.append("MiDuo构建标识=").append(l.a).append('\n');
        String[] strArr = {getPackageName(), "com.ss.android.ugc.aweme", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", "com.miui.gallery", "com.miui.securitycenter", "com.android.quicksearchbox"};
        for (int i = 0; i < 8; i++) {
            String str = strArr[i];
            try {
                PackageInfo packageInfo = getPackageManager().getPackageInfo(str, 0);
                append.append(str).append('=').append(packageInfo.versionName).append(" (").append(packageInfo.getLongVersionCode()).append(")\n");
            } catch (PackageManager.NameNotFoundException e2) {
                append.append(str).append("=未安装\n");
            }
        }
        XposedService c = L.c();
        if (c == null) {
            append.append("MiDuo配置=LSPosed未连接\n");
        } else {
            try {
                SharedPreferences sharedPreferences = new o(c).a;
                append.append("MiDuo master=").append(P.b(sharedPreferences)).append(" awemeDuo=").append(sharedPreferences.getBoolean(P.f("com.ss.android.ugc.aweme"), P.e("com.ss.android.ugc.aweme"))).append(" hiddenTops=").append(P.c(sharedPreferences, "com.ss.android.ugc.aweme")).append(" innerNativeBar=").append(P.d(sharedPreferences, "com.ss.android.ugc.aweme")).append(" outerScale=").append(P.g(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
                String[] strArr2 = {"outer", "inner"};
                for (int i2 = 0; i2 < 2; i2++) {
                    String str2 = strArr2[i2];
                    append.append("抖音 ").append(str2).append(" topPx=").append(P.b(sharedPreferences, "com.ss.android.ugc.aweme", str2)).append(" fit=").append(sharedPreferences.getBoolean(P.a(str2), true)).append('\n');
                }
                append.append("抖音 nonDuoOuterPx=").append(P.e(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
                TreeMap treeMap = new TreeMap();
                for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (key.startsWith("_global/") && ((value instanceof Boolean) || (value instanceof Integer))) {
                        if (!key.toLowerCase(Locale.ROOT).matches(".*(license|token|secret|key|device|uuid|sign|pay|account).*")) {
                            treeMap.put(key, value);
                        }
                    }
                }
                append.append("MiDuo全局设置(").append(treeMap.size()).append(")：");
                for (Object entry2 : ((java.util.Map) treeMap).entrySet()) {
                    append.append(((String) ((java.util.Map.Entry) entry2).getKey()).substring(8)).append('=').append(((java.util.Map.Entry) entry2).getValue()).append(' ');
                }
                append.append('\n');
            } catch (RuntimeException e3) {
                append.append("MiDuo配置读取失败=").append(e3).append('\n');
            }
        }
        append.append("\n覆盖模块：桌面/负一屏/侧栏/Dock/搜索/取色/待机/锁屏/壁纸/分屏/工作台/开合动画引擎/相册与小组件页/智能助理选择页/").append("授权与计费/引导（日志标签 Duo*、MiDuo*、TaskCore*，另含全部警告错误与系统窗口/小组件/崩溃关键日志）。\n");
        return append.append("以下内容只用于定位，可能含正在使用的应用、页面与报错信息；不含截图、聊天与照片内容。\n").toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        f = false;
        this.a.removeCallbacksAndMessages(null);
        a(this).edit().putBoolean("capturing", false).apply();
        b(str);
        stopForeground(1);
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(File file, String str) {
        return str.startsWith("bug-") && str.endsWith(".txt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }
}
