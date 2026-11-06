package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.T;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class BugCaptureActivity extends Activity {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private String f;
    private final SharedPreferences.OnSharedPreferenceChangeListener g = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            dev.duo.hookprobe.BugCaptureActivity.this.a(sharedPreferences, str);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        if (checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        startService(new Intent(this, (Class<?>) dev.duo.hookprobe.BugCaptureService.class).setAction("com.lsposed.miduo.STOP_BUG_CAPTURE"));
        this.c.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        this.f = BugCaptureService.a(this).getString("file", null);
        startActivityForResult(new Intent("android.intent.action.CREATE_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("text/plain").putExtra("android.intent.extra.TITLE", "MiDuo-" + this.f), 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        final Uri data = intent.getData();
        final File file = new File(getFilesDir(), this.f);
        final Context applicationContext = getApplicationContext();
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureActivity.this.a(file, applicationContext, data);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        L.a(this);
        T.d dVar = new T.d(this);
        LinearLayout a = T.a((Context) this);
        a.setPadding(T.a((Context) this, 20.0f), T.a((Context) this, 20.0f), T.a((Context) this, 20.0f), T.a((Context) this, 28.0f));
        TextView a2 = T.a((Context) this, "返回", false, 44.0f);
        a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.a(view);
            }
        });
        a.addView(a2, T.a());
        TextView a3 = T.a(this, 24.0f, T.b_v, 600);
        a3.setText("Bug 抓取模式");
        a.addView(a3, T.a(T.a(), this, 20.0f));
        TextView a4 = T.a(this, 14.0f, T.c, J.m);
        a4.setText("1. 点开始并允许 Root 读取日志。\n2. 去出问题的 App 复现。冷启动问题请在打开 App 前开始抓取。\n3. 出问题后立即点通知里的结束，再回来导出。\n\n最多抓取 2 分钟、16 MiB，自动停止；默认关闭，不自动上传。\n\n报告包含：开头和结尾各一份状态快照（各进程载入的 MiDuo 版本、窗口与任务、图层、小组件、权限、内存、崩溃记录）、MiDuo 全部模块日志、所有警告与错误日志、设备与应用版本。不截屏，不读聊天和照片内容。可能含正在使用的 App 名称，分享前请检查。应用私有目录最多保留最近 3 份报告。\n\n“常驻轻量记录”默认关闭：打开后后台只留 MiDuo 相关日志的最近约 8 MiB，抓取报告会一并附上，用来抓两分钟复现不出来的偶发问题；关闭即删除。重启手机后需打开一次 MiDuo 才会恢复。");
        a4.setLineSpacing(0.0f, 1.2f);
        a.addView(a4, T.a(T.a(), this, 16.0f));
        TextView a5 = T.a(this, 14.0f, T.b_v, 500);
        this.a = a5;
        a.addView(a5, T.a(T.a(), this, 20.0f));
        this.b = T.a((Context) this, "开始抓取", true, 48.0f);
        this.c = T.a((Context) this, "结束抓取", false, 48.0f);
        this.d = T.a((Context) this, "导出最近一次报告", false, 48.0f);
        TextView a6 = T.a((Context) this, "", false, 48.0f);
        this.e = a6;
        TextView[] textViewArr = {this.b, this.c, this.d, a6};
        for (int i = 0; i < 4; i++) {
            a.addView(textViewArr[i], T.a(T.a(), this, 12.0f));
        }
        this.e.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.b(view);
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.c(view);
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.d(view);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.BugCaptureActivity.this.e(view);
            }
        });
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.addView(a);
        dVar.b.addView(scrollView);
        setContentView(dVar.a);
        if (bundle != null) {
            this.f = bundle.getString("selected");
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1 && iArr.length > 0 && iArr[0] == 0) {
            a();
        } else if (i == 1) {
            Toast.makeText(this, "未开始抓取：需要通知权限显示结束按钮", 1).show();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selected", this.f);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        c();
        if (b()) {
            a(j.b(), (String) null, "RING_STARTED", "RING_ALREADY");
        }
        BugCaptureService.a(this).registerOnSharedPreferenceChangeListener(this.g);
        d();
    }

    @Override // android.app.Activity
    protected void onStop() {
        BugCaptureService.a(this).unregisterOnSharedPreferenceChangeListener(this.g);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        finish();
    }

    private boolean b() {
        return BugCaptureService.a(this).getBoolean("ring", false);
    }

    private void a() {
        try {
            startForegroundService(new Intent(this, (Class<?>) dev.duo.hookprobe.BugCaptureService.class));
            this.b.setEnabled(false);
        } catch (RuntimeException e) {
            Toast.makeText(this, "无法开始抓取：" + e.getMessage(), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }

    private void d() {
        String string;
        SharedPreferences a = BugCaptureService.a(this);
        String string2 = a.getString("file", null);
        boolean z = BugCaptureService.f;
        boolean z2 = false;
        if (!z && a.getBoolean("capturing", false)) {
            string = "上次抓取被中断，可导出已保存的部分";
        } else {
            string = a.getString("status", "尚未抓取");
        }
        this.a.setText((z ? "进行中\n" : "已停止\n") + string + ((z || string2 == null) ? "" : "\n报告：" + string2));
        this.b.setEnabled(!z);
        this.c.setEnabled(z);
        TextView textView = this.d;
        if (!z && string2 != null && new File(getFilesDir(), string2).isFile()) {
            z2 = true;
        }
        textView.setEnabled(z2);
    }

    private void c() {
        this.e.setText(b() ? "常驻轻量记录：已开启（点此关闭并删除记录）" : "常驻轻量记录：已关闭（点此开启）");
    }

    private void e() {
        boolean b = b();
        BugCaptureService.a(this).edit().putBoolean("ring", !b).apply();
        c();
        a(!b ? j.b() : j.c(), !b ? "常驻记录已开启" : "常驻记录已关闭并删除", !b ? new String[]{"RING_STARTED", "RING_ALREADY"} : new String[]{"RING_STOPPED"});
    }

    private void a(final String str, final String str2, final String... strArr) {
        final Context applicationContext = getApplicationContext();
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.BugCaptureActivity.this.a(str2, str, strArr, applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str, String str2, String[] strArr, final Context context) {
        Process start;
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream;
        try {
            start = new ProcessBuilder("su", "-c", str2).redirectErrorStream(true).start();
            byteArrayOutputStream = new ByteArrayOutputStream();
            inputStream = start.getInputStream();
        } catch (IOException | InterruptedException | RuntimeException e) {
            String str3 = "常驻记录操作失败：" + e.getMessage();
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            str = str3;
        }
        try {
            j.a(inputStream, byteArrayOutputStream, 8192L);
            if (inputStream != null) {
                inputStream.close();
            }
            if (start.waitFor(20L, TimeUnit.SECONDS)) {
                String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                boolean z = false;
                for (String str4 : strArr) {
                    z |= byteArrayOutputStream2.contains(str4);
                }
                if (!z) {
                    str = "常驻记录操作失败：" + (byteArrayOutputStream2.trim().isEmpty() ? "没有结果" : byteArrayOutputStream2.trim());
                }
            } else {
                start.destroyForcibly();
                str = "操作超时";
            }
            if (str != null) {
                runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BugCaptureActivity.b(context, str);
                    }
                });
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(File file, final Context context, Uri uri) {
        final String str;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException | RuntimeException e) {
            str = "导出失败：" + e.getMessage();
        }
        try {
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri, "wt");
            try {
                if (openOutputStream == null) {
                    throw new IOException("无法打开所选位置");
                }
                j.a(fileInputStream, openOutputStream, 16777216L);
                str = "报告已导出";
                openOutputStream.close();
                fileInputStream.close();
                runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        BugCaptureActivity.a(context, str);
                    }
                });
            } finally {
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }
}
