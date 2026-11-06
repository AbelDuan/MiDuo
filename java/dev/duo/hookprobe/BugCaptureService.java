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

/* loaded from: classes.dex */
public final class BugCaptureService extends Service {

    /* renamed from: e */
    static final String f792e = "dev.duo.hookprobe.STOP_BUG_CAPTURE";

    /* renamed from: f */
    static volatile boolean f793f = false;

    /* renamed from: g */
    private static final int f794g = 332;

    /* renamed from: h */
    private static final long f795h = 45000;

    /* renamed from: a */
    private final Handler f796a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private volatile Process f797b;

    /* renamed from: c */
    private volatile String f798c;

    /* renamed from: d */
    private volatile long f799d;

    /* renamed from: a */
    static SharedPreferences m805a(Context context) {
        return context.getSharedPreferences("bug_capture", 0);
    }

    /* renamed from: b */
    private void m810b(String str) {
        m805a(this).edit().putString("status", str).apply();
    }

    /* renamed from: c */
    private void m812c(String str) {
        if (this.f798c != null) {
            return;
        }
        this.f798c = str;
        this.f799d = System.currentTimeMillis();
        m810b("正在结束：" + str);
        m809b();
        this.f796a.postDelayed(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                BugCaptureService.this.m814e();
            }
        }, f795h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m813d() {
        m812c("已达到 2 分钟上限");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m814e() {
        Process process = this.f797b;
        if (process == null || !process.isAlive()) {
            return;
        }
        process.destroyForcibly();
    }

    /* renamed from: f */
    private void m815f() {
        File[] listFiles = getFilesDir().listFiles(new FilenameFilter() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m808a;
                m808a = BugCaptureService.m808a(file, str);
                return m808a;
            }
        });
        if (listFiles != null) {
            if (listFiles.length <= 2) {
                return;
            }
            Arrays.sort(listFiles, new Comparator() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m804a;
                    m804a = BugCaptureService.m804a((File) obj, (File) obj2);
                    return m804a;
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
        if (f793f) {
            m812c("抓取服务被系统结束");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || f792e.equals(intent.getAction())) {
            if (f793f) {
                m812c("用户结束复现");
            } else {
                stopSelf();
            }
            return 2;
        }
        if (f793f) {
            return 2;
        }
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("bug_capture", "Bug 抓取", 2));
        startForeground(f794g, new Notification.Builder(this, "bug_capture").setSmallIcon(R.drawable.ic_menu_info_details).setContentTitle("MiDuo 正在抓取问题日志").setContentText("请复现问题，完成后点结束；最多 2 分钟").setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) BugCaptureActivity.class), 67108864)).setOngoing(true).addAction(new Notification.Action.Builder((Icon) null, "结束抓取", PendingIntent.getService(this, 0, new Intent(this, (Class<?>) BugCaptureService.class).setAction(f792e), 67108864)).build()).build(), 2048);
        f793f = true;
        m805a(this).edit().putBoolean("capturing", true).apply();
        m810b("等待 Root 授权…");
        this.f796a.postDelayed(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BugCaptureService.this.m813d();
            }
        }, 120000L);
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                BugCaptureService.this.m806a();
            }
        }, "MiDuo-bug-capture").start();
        return 2;
    }

    @Override // android.app.Service
    public void onTimeout(int i) {
        m812c("系统结束短时抓取");
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m806a() {
        final String str;
        BufferedOutputStream bufferedOutputStream;
        String str2 = "bug-" + new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.ROOT).format(new Date()) + ".txt";
        File file = new File(getFilesDir(), str2);
        m815f();
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (IOException | RuntimeException e) {
            str = "抓取失败：" + e.getMessage();
            Log.e("DuoBugCapture", str, e);
        }
        try {
            m805a(this).edit().putString("file", str2).apply();
            bufferedOutputStream.write(m811c().getBytes(StandardCharsets.UTF_8));
            bufferedOutputStream.flush();
            try {
                try {
                } catch (IOException e2) {
                    String str3 = this.f798c == null ? "抓取失败：" + e2.getMessage() : this.f798c;
                    Log.w("DuoBugCapture", "抓取结束：" + str3, e2);
                    m809b();
                    Process process = this.f797b;
                    if (process != null) {
                        try {
                            if (!process.waitFor(f795h, TimeUnit.MILLISECONDS)) {
                                process.destroyForcibly();
                                Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (InterruptedException e3) {
                            Thread.currentThread().interrupt();
                            process.destroyForcibly();
                            Log.w("DuoBugCapture", "等待日志退出被中断", e3);
                        }
                        this.f797b = null;
                    }
                    str = str3;
                }
                if (this.f798c != null) {
                    throw new IOException(this.f798c);
                }
                this.f797b = new ProcessBuilder("su", "-c", RootCaptureProtocol.m1706a()).redirectErrorStream(true).start();
                if (this.f798c != null) {
                    m809b();
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f797b.getInputStream());
                try {
                    RootCaptureProtocol.m1708a(bufferedInputStream);
                    m810b("抓取中：请去复现，完成后结束抓取");
                    if (RootCaptureProtocol.m1709a(bufferedInputStream, bufferedOutputStream, 16773120 - r4.length)) {
                        this.f798c = "日志已达到 16 MiB 上限";
                    }
                    if (this.f798c == null) {
                        throw new IOException("日志进程提前退出，请查看报告末尾的错误");
                    }
                    str = this.f798c;
                    bufferedInputStream.close();
                    m809b();
                    Process process2 = this.f797b;
                    if (process2 != null) {
                        try {
                            if (!process2.waitFor(f795h, TimeUnit.MILLISECONDS)) {
                                process2.destroyForcibly();
                                Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                            }
                        } catch (InterruptedException e4) {
                            Thread.currentThread().interrupt();
                            process2.destroyForcibly();
                            Log.w("DuoBugCapture", "等待日志退出被中断", e4);
                        }
                        this.f797b = null;
                    }
                    byte[] bytes = ("\n\n停止请求时间=" + (this.f799d == 0 ? "自动限量/错误" : new Date(this.f799d)) + "\n结束时间=" + new Date() + "\n结果=" + str + "\n").getBytes(StandardCharsets.UTF_8);
                    bufferedOutputStream.write(bytes, 0, Math.min(bytes.length, WorkspaceProtocol.MAX_PAYLOAD));
                    bufferedOutputStream.close();
                    this.f796a.post(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureService$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            BugCaptureService.this.m807a(str);
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
                m809b();
                Process process3 = this.f797b;
                if (process3 != null) {
                    try {
                        if (!process3.waitFor(f795h, TimeUnit.MILLISECONDS)) {
                            process3.destroyForcibly();
                            Log.w("DuoBugCapture", "Root 包装进程未及时退出；日志子进程有独立超时");
                        }
                    } catch (InterruptedException e5) {
                        Thread.currentThread().interrupt();
                        process3.destroyForcibly();
                        Log.w("DuoBugCapture", "等待日志退出被中断", e5);
                    }
                    this.f797b = null;
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

    /* renamed from: b */
    private void m809b() {
        Process process = this.f797b;
        if (process == null) {
            return;
        }
        try {
            process.getOutputStream().close();
        } catch (IOException e) {
            Log.w("DuoBugCapture", "关闭日志输入失败", e);
        }
    }

    public void onTimeout(int i, int i2) {
        m812c("系统结束短时抓取");
        stopSelf();
    }

    /* renamed from: c */
    private String m811c() {
        StringBuilder append = new StringBuilder("MiDuo 问题复现日志\n开始时间=").append(new Date()).append("\n设备=").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append("\nROM=").append(Build.FINGERPRINT).append("\nAndroid SDK=").append(Build.VERSION.SDK_INT).append("\n资源配置=").append(getResources().getConfiguration()).append('\n');
        append.append("MiDuo构建标识=").append(BuildConst.f1643a).append('\n');
        String[] strArr = {getPackageName(), "com.ss.android.ugc.aweme", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", "com.miui.gallery", "com.miui.securitycenter", "com.android.quicksearchbox"};
        for (int i = 0; i < 8; i++) {
            String str = strArr[i];
            try {
                PackageInfo packageInfo = getPackageManager().getPackageInfo(str, 0);
                append.append(str).append('=').append(packageInfo.versionName).append(" (").append(packageInfo.getLongVersionCode()).append(")\n");
            } catch (PackageManager.NameNotFoundException e) {
                append.append(str).append("=未安装\n");
            }
        }
        XposedService m975c = ConfigBroadcastHub.m975c();
        if (m975c == null) {
            append.append("MiDuo配置=LSPosed未连接\n");
        } else {
            try {
                SharedPreferences sharedPreferences = new ConfigStore(m975c).f1684a;
                append.append("MiDuo master=").append(ConfigKeys.m1229b(sharedPreferences)).append(" awemeDuo=").append(sharedPreferences.getBoolean(ConfigKeys.m1243f("com.ss.android.ugc.aweme"), ConfigKeys.m1242e("com.ss.android.ugc.aweme"))).append(" hiddenTops=").append(ConfigKeys.m1231c(sharedPreferences, "com.ss.android.ugc.aweme")).append(" innerNativeBar=").append(ConfigKeys.m1239d(sharedPreferences, "com.ss.android.ugc.aweme")).append(" outerScale=").append(ConfigKeys.m1245g(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
                String[] strArr2 = {"outer", "inner"};
                for (int i2 = 0; i2 < 2; i2++) {
                    String str2 = strArr2[i2];
                    append.append("抖音 ").append(str2).append(" topPx=").append(ConfigKeys.m1224b(sharedPreferences, "com.ss.android.ugc.aweme", str2)).append(" fit=").append(sharedPreferences.getBoolean(ConfigKeys.m1214a(str2), true)).append('\n');
                }
                append.append("抖音 nonDuoOuterPx=").append(ConfigKeys.m1240e(sharedPreferences, "com.ss.android.ugc.aweme")).append('\n');
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
                for (Map.Entry entry2 : treeMap.entrySet()) {
                    append.append(((String) entry2.getKey()).substring(8)).append('=').append(entry2.getValue()).append(' ');
                }
                append.append('\n');
            } catch (RuntimeException e2) {
                append.append("MiDuo配置读取失败=").append(e2).append('\n');
            }
        }
        append.append("\n覆盖模块：桌面/负一屏/侧栏/Dock/搜索/取色/待机/锁屏/壁纸/分屏/工作台/开合动画引擎/相册与小组件页/智能助理选择页/").append("授权与计费/引导（日志标签 Duo*、MiDuo*、TaskCore*，另含全部警告错误与系统窗口/小组件/崩溃关键日志）。\n");
        return append.append("以下内容只用于定位，可能含正在使用的应用、页面与报错信息；不含截图、聊天与照片内容。\n").toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m807a(String str) {
        f793f = false;
        this.f796a.removeCallbacksAndMessages(null);
        m805a(this).edit().putBoolean("capturing", false).apply();
        m810b(str);
        stopForeground(1);
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ boolean m808a(File file, String str) {
        return str.startsWith("bug-") && str.endsWith(".txt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m804a(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }
}
