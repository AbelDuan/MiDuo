package dev.duo.hookprobe;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import io.github.libxposed.service.XposedService;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class ColorConfigActivity extends Activity {

    /* renamed from: a */
    private C0046b f812a;

    /* renamed from: b */
    private AlertDialog f813b;

    /* renamed from: dev.duo.hookprobe.ColorConfigActivity$b */
    private static final class C0046b {

        /* renamed from: a */
        Uri f814a;

        /* renamed from: b */
        Map<String, String> f815b;

        /* renamed from: c */
        boolean f816c;

        /* renamed from: d */
        boolean f817d;

        /* renamed from: e */
        String f818e;

        /* renamed from: f */
        ColorConfigActivity f819f;

        private C0046b() {
        }
    }

    /* renamed from: a */
    static void m828a(Activity activity, String str, boolean z) {
        activity.startActivity(new Intent(activity, (Class<?>) ColorConfigActivity.class).putExtra("pkg", str).putExtra("export", z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m833b() {
        try {
            XposedService m970a = C0056L.m970a(1500L);
            if (m970a == null) {
                throw new IOException("请先连接 LSPosed");
            }
            String m1713a = C0111m.m1713a(new C0113o(m970a).f1684a.getAll(), getIntent().getStringExtra("pkg"));
            OutputStream openOutputStream = getContentResolver().openOutputStream(this.f812a.f814a, "wt");
            try {
                if (openOutputStream == null) {
                    throw new IOException("无法写入所选文件");
                }
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openOutputStream, StandardCharsets.UTF_8);
                outputStreamWriter.write(m1713a);
                outputStreamWriter.flush();
                openOutputStream.close();
                m834b("颜色配置已导出");
            } catch (Throwable th) {
                if (openOutputStream != null) {
                    try {
                        openOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            m834b("导出失败：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m836c() {
        try {
            InputStream openInputStream = getContentResolver().openInputStream(this.f812a.f814a);
            try {
                if (openInputStream == null) {
                    throw new IOException("无法读取所选文件");
                }
                String m1712a = C0111m.m1712a(openInputStream);
                openInputStream.close();
                Map<String, String> m1718c = C0111m.m1718c(m1712a);
                C0046b c0046b = this.f812a;
                c0046b.f815b = m1718c;
                c0046b.f816c = false;
                m837d();
            } catch (Throwable th) {
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            m834b("导入失败：" + e.getMessage());
        }
    }

    /* renamed from: d */
    private void m837d() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ColorConfigActivity.this.m827a();
            }
        });
    }

    /* renamed from: e */
    private void m838e() {
        this.f812a.f816c = true;
        if (!getIntent().getBooleanExtra("export", false)) {
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ColorConfigActivity.this.m836c();
                }
            });
        } else {
            this.f812a.f817d = true;
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ColorConfigActivity.this.m833b();
                }
            });
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1 || i2 != -1 || intent == null || intent.getData() == null) {
            finish();
            return;
        }
        this.f812a.f814a = intent.getData();
        m838e();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C0087T.m1416a((Activity) this);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackground(C0087T.m1425b(this));
        TextView m1413a = C0087T.m1413a(this, 15.0f, C0087T.f1347c, 500);
        m1413a.setText("正在处理颜色配置…");
        frameLayout.addView(m1413a, new FrameLayout.LayoutParams(-2, -2, 17));
        setContentView(frameLayout);
        C0046b c0046b = (C0046b) getLastNonConfigurationInstance();
        C0046b c0046b2 = c0046b == null ? new C0046b() : c0046b;
        this.f812a = c0046b2;
        c0046b2.f819f = this;
        if (c0046b != null) {
            m837d();
            return;
        }
        if (bundle == null) {
            boolean booleanExtra = getIntent().getBooleanExtra("export", false);
            Intent type = new Intent(booleanExtra ? "android.intent.action.CREATE_DOCUMENT" : "android.intent.action.OPEN_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType(booleanExtra ? "application/octet-stream" : "*/*");
            if (booleanExtra) {
                String stringExtra = getIntent().getStringExtra("pkg");
                type.putExtra("android.intent.extra.TITLE", (stringExtra == null ? "MiDuo-全部颜色配置" : m826a(stringExtra) + "-颜色配置").replaceAll("[\\\\/:*?\"<>|\\p{Cntrl}]", "_") + C0054J.f922e + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT).format(new Date()) + ".miduocolors");
            }
            startActivityForResult(type, 1);
            return;
        }
        if (bundle.getBoolean("writing")) {
            m834b("操作被中断，请检查当前配置后再操作");
            return;
        }
        String string = bundle.getString("selected");
        if (string != null) {
            this.f812a.f814a = Uri.parse(string);
            m838e();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        C0046b c0046b = this.f812a;
        if (c0046b != null && c0046b.f819f == this) {
            c0046b.f819f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.f812a;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Uri uri = this.f812a.f814a;
        if (uri != null) {
            bundle.putString("selected", uri.toString());
        }
        bundle.putBoolean("writing", this.f812a.f817d);
    }

    /* renamed from: a */
    private String m826a(String str) {
        try {
            return getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return str;
        }
    }

    /* renamed from: a */
    private void m832a(final Map<String, String> map) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        AlertDialog alertDialog = this.f813b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = C0111m.m1715a(map).iterator();
            while (it.hasNext()) {
                sb.append("\n• ").append(m826a(it.next()));
            }
            final AlertDialog create = C0087T.m1400a((Activity) this, "替换颜色配置？").setMessage("将替换以下 App 的全部配色：" + ((Object) sb) + "\n\n其他 App 和其他设置保持不变。未安装 App 的配色也会保存。").setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ColorConfigActivity.this.m831a(dialogInterface, i);
                }
            }).setPositiveButton("确认替换", (DialogInterface.OnClickListener) null).create();
            this.f813b = create;
            create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    ColorConfigActivity.this.m830a(dialogInterface);
                }
            });
            C0087T.m1417a(create);
            create.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorConfigActivity.this.m829a(create, map, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m831a(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m830a(DialogInterface dialogInterface) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m829a(AlertDialog alertDialog, final Map map, View view) {
        C0046b c0046b = this.f812a;
        c0046b.f816c = true;
        c0046b.f817d = true;
        alertDialog.getButton(-1).setEnabled(false);
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ColorConfigActivity.this.m835b(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m827a() {
        Map<String, String> map;
        ColorConfigActivity colorConfigActivity = this.f812a.f819f;
        if (colorConfigActivity == null || colorConfigActivity.isFinishing() || colorConfigActivity.isDestroyed()) {
            return;
        }
        C0046b c0046b = this.f812a;
        String str = c0046b.f818e;
        if (str != null) {
            Toast.makeText(colorConfigActivity, str, 1).show();
            colorConfigActivity.finish();
        } else {
            if (c0046b.f816c || (map = c0046b.f815b) == null) {
                return;
            }
            colorConfigActivity.m832a(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m835b(Map map) {
        try {
            XposedService m970a = C0056L.m970a(1500L);
            if (m970a != null) {
                synchronized (C0049F.class) {
                    if (new C0113o(m970a).m1785a((Map<String, String>) map)) {
                        Bundle m851a = C0049F.m851a("");
                        if (C0111m.m1715a((Map<String, String>) map).contains(m851a.getString("package"))) {
                            C0049F.m852a(this, m851a.getLong("token"));
                        }
                    } else {
                        throw new IOException("颜色配置保存失败");
                    }
                }
                m834b("颜色配置已导入");
                return;
            }
            throw new IOException("LSPosed 配置服务未连接");
        } catch (IOException | RuntimeException e) {
            m834b("导入失败：" + e.getMessage());
        }
    }

    /* renamed from: b */
    private void m834b(String str) {
        C0046b c0046b = this.f812a;
        c0046b.f818e = str;
        c0046b.f816c = false;
        m837d();
    }
}
