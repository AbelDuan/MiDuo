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
import dev.duo.hookprobe.UiKit;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class BugCaptureActivity extends Activity {

    /* renamed from: a */
    private TextView f785a;

    /* renamed from: b */
    private TextView f786b;

    /* renamed from: c */
    private TextView f787c;

    /* renamed from: d */
    private TextView f788d;

    /* renamed from: e */
    private TextView f789e;

    /* renamed from: f */
    private String f790f;

    /* renamed from: g */
    private final SharedPreferences.OnSharedPreferenceChangeListener f791g = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            BugCaptureActivity.this.m790a(sharedPreferences, str);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m790a(SharedPreferences sharedPreferences, String str) {
        m800d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m796b(View view) {
        m802e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m799c(View view) {
        if (checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
        } else {
            m788a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m801d(View view) {
        startService(new Intent(this, (Class<?>) BugCaptureService.class).setAction("dev.duo.hookprobe.STOP_BUG_CAPTURE"));
        this.f787c.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m803e(View view) {
        this.f790f = BugCaptureService.m805a(this).getString("file", null);
        startActivityForResult(new Intent("android.intent.action.CREATE_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("text/plain").putExtra("android.intent.extra.TITLE", "MiDuo-" + this.f790f), 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        final Uri data = intent.getData();
        final File file = new File(getFilesDir(), this.f790f);
        final Context applicationContext = getApplicationContext();
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                BugCaptureActivity.this.m792a(file, applicationContext, data);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConfigBroadcastHub.m972a(this);
        UiKit.d dVar = new UiKit.d(this);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(UiKit.m1399a((Context) this, 20.0f), UiKit.m1399a((Context) this, 20.0f), UiKit.m1399a((Context) this, 20.0f), UiKit.m1399a((Context) this, 28.0f));
        TextView m1415a = UiKit.m1415a((Context) this, "返回", false, 44.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BugCaptureActivity.this.m791a(view);
            }
        });
        m1411a.addView(m1415a, UiKit.m1408a());
        TextView m1413a = UiKit.m1413a(this, 24.0f, UiKit.f1345b, 600);
        m1413a.setText("Bug 抓取模式");
        m1411a.addView(m1413a, UiKit.m1410a(UiKit.m1408a(), this, 20.0f));
        TextView m1413a2 = UiKit.m1413a(this, 14.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a2.setText("1. 点开始并允许 Root 读取日志。\n2. 去出问题的 App 复现。冷启动问题请在打开 App 前开始抓取。\n3. 出问题后立即点通知里的结束，再回来导出。\n\n最多抓取 2 分钟、16 MiB，自动停止；默认关闭，不自动上传。\n\n报告包含：开头和结尾各一份状态快照（各进程载入的 MiDuo 版本、窗口与任务、图层、小组件、权限、内存、崩溃记录）、MiDuo 全部模块日志、所有警告与错误日志、设备与应用版本。不截屏，不读聊天和照片内容。可能含正在使用的 App 名称，分享前请检查。应用私有目录最多保留最近 3 份报告。\n\n“常驻轻量记录”默认关闭：打开后后台只留 MiDuo 相关日志的最近约 8 MiB，抓取报告会一并附上，用来抓两分钟复现不出来的偶发问题；关闭即删除。重启手机后需打开一次 MiDuo 才会恢复。");
        m1413a2.setLineSpacing(0.0f, 1.2f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 16.0f));
        TextView m1413a3 = UiKit.m1413a(this, 14.0f, UiKit.f1345b, 500);
        this.f785a = m1413a3;
        m1411a.addView(m1413a3, UiKit.m1410a(UiKit.m1408a(), this, 20.0f));
        this.f786b = UiKit.m1415a((Context) this, "开始抓取", true, 48.0f);
        this.f787c = UiKit.m1415a((Context) this, "结束抓取", false, 48.0f);
        this.f788d = UiKit.m1415a((Context) this, "导出最近一次报告", false, 48.0f);
        TextView m1415a2 = UiKit.m1415a((Context) this, "", false, 48.0f);
        this.f789e = m1415a2;
        TextView[] textViewArr = {this.f786b, this.f787c, this.f788d, m1415a2};
        for (int i = 0; i < 4; i++) {
            m1411a.addView(textViewArr[i], UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        }
        this.f789e.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BugCaptureActivity.this.m796b(view);
            }
        });
        this.f786b.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BugCaptureActivity.this.m799c(view);
            }
        });
        this.f787c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BugCaptureActivity.this.m801d(view);
            }
        });
        this.f788d.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BugCaptureActivity.this.m803e(view);
            }
        });
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.addView(m1411a);
        dVar.f1395b.addView(scrollView);
        setContentView(dVar.f1394a);
        if (bundle != null) {
            this.f790f = bundle.getString("selected");
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1 && iArr.length > 0 && iArr[0] == 0) {
            m788a();
        } else if (i == 1) {
            Toast.makeText(this, "未开始抓取：需要通知权限显示结束按钮", 1).show();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selected", this.f790f);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        m798c();
        if (m797b()) {
            m793a(RootCaptureProtocol.m1710b(), (String) null, "RING_STARTED", "RING_ALREADY");
        }
        BugCaptureService.m805a(this).registerOnSharedPreferenceChangeListener(this.f791g);
        m800d();
    }

    @Override // android.app.Activity
    protected void onStop() {
        BugCaptureService.m805a(this).unregisterOnSharedPreferenceChangeListener(this.f791g);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m791a(View view) {
        finish();
    }

    /* renamed from: b */
    private boolean m797b() {
        return BugCaptureService.m805a(this).getBoolean("ring", false);
    }

    /* renamed from: a */
    private void m788a() {
        try {
            startForegroundService(new Intent(this, (Class<?>) BugCaptureService.class));
            this.f786b.setEnabled(false);
        } catch (RuntimeException e) {
            Toast.makeText(this, "无法开始抓取：" + e.getMessage(), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m795b(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }

    /* renamed from: d */
    private void m800d() {
        String string;
        SharedPreferences m805a = BugCaptureService.m805a(this);
        String string2 = m805a.getString("file", null);
        boolean z = BugCaptureService.f793f;
        boolean z2 = false;
        if (!z && m805a.getBoolean("capturing", false)) {
            string = "上次抓取被中断，可导出已保存的部分";
        } else {
            string = m805a.getString("status", "尚未抓取");
        }
        this.f785a.setText((z ? "进行中\n" : "已停止\n") + string + ((z || string2 == null) ? "" : "\n报告：" + string2));
        this.f786b.setEnabled(!z);
        this.f787c.setEnabled(z);
        TextView textView = this.f788d;
        if (!z && string2 != null && new File(getFilesDir(), string2).isFile()) {
            z2 = true;
        }
        textView.setEnabled(z2);
    }

    /* renamed from: c */
    private void m798c() {
        this.f789e.setText(m797b() ? "常驻轻量记录：已开启（点此关闭并删除记录）" : "常驻轻量记录：已关闭（点此开启）");
    }

    /* renamed from: e */
    private void m802e() {
        boolean m797b = m797b();
        BugCaptureService.m805a(this).edit().putBoolean("ring", !m797b).apply();
        m798c();
        m793a(!m797b ? RootCaptureProtocol.m1710b() : RootCaptureProtocol.m1711c(), !m797b ? "常驻记录已开启" : "常驻记录已关闭并删除", !m797b ? new String[]{"RING_STARTED", "RING_ALREADY"} : new String[]{"RING_STOPPED"});
    }

    /* renamed from: a */
    private void m793a(final String str, final String str2, final String... strArr) {
        final Context applicationContext = getApplicationContext();
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BugCaptureActivity.this.m794a(str2, str, strArr, applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m794a(final String str, String str2, String[] strArr, final Context context) {
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
            RootCaptureProtocol.m1709a(inputStream, byteArrayOutputStream, 8192L);
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
                        BugCaptureActivity.m795b(context, str);
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
    /* renamed from: a */
    public /* synthetic */ void m792a(File file, final Context context, Uri uri) {
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
                RootCaptureProtocol.m1709a(fileInputStream, openOutputStream, 16777216L);
                str = "报告已导出";
                openOutputStream.close();
                fileInputStream.close();
                runOnUiThread(new Runnable() { // from class: dev.duo.hookprobe.BugCaptureActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        BugCaptureActivity.m789a(context, str);
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
    /* renamed from: a */
    public static /* synthetic */ void m789a(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }
}
