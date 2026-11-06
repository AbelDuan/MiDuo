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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class ColorConfigActivity extends Activity {
    private b a;
    private AlertDialog b;

    private static final class b {
        Uri a;
        Map<String, String> b;
        boolean c;
        boolean d;
        String e;
        ColorConfigActivity f;

        private b() {
        }
    }

    static void a(Activity activity, String str, boolean z) {
        activity.startActivity(new Intent(activity, (Class<?>) dev.duo.hookprobe.ColorConfigActivity.class).putExtra("pkg", str).putExtra("export", z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        try {
            XposedService a2 = L.a(1500L);
            if (a2 == null) {
                throw new IOException("请先连接 LSPosed");
            }
            String a3 = m.a(new o(a2).a.getAll(), getIntent().getStringExtra("pkg"));
            OutputStream openOutputStream = getContentResolver().openOutputStream(this.a.a, "wt");
            try {
                if (openOutputStream == null) {
                    throw new IOException("无法写入所选文件");
                }
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openOutputStream, StandardCharsets.UTF_8);
                outputStreamWriter.write(a3);
                outputStreamWriter.flush();
                openOutputStream.close();
                b("颜色配置已导出");
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
            b("导出失败：" + dev.duo.hookprobe.e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        try {
            InputStream openInputStream = getContentResolver().openInputStream(this.a.a);
            try {
                if (openInputStream == null) {
                    throw new IOException("无法读取所选文件");
                }
                String a2 = m.a(openInputStream);
                openInputStream.close();
                Map<String, String> c = m.c(a2);
                b bVar = this.a;
                bVar.b = c;
                bVar.c = false;
                d();
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
            b("导入失败：" + dev.duo.hookprobe.e.getMessage());
        }
    }

    private void d() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.ColorConfigActivity.this.a();
            }
        });
    }

    private void e() {
        this.a.c = true;
        if (!getIntent().getBooleanExtra("export", false)) {
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.ColorConfigActivity.this.c();
                }
            });
        } else {
            this.a.d = true;
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.ColorConfigActivity.this.b();
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
        this.a.a = intent.getData();
        e();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        T.a((Activity) this);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackground(T.b(this));
        TextView a2 = T.a(this, 15.0f, T.c, 500);
        a2.setText("正在处理颜色配置…");
        frameLayout.addView(a2, new FrameLayout.LayoutParams(-2, -2, 17));
        setContentView(frameLayout);
        b bVar = (b) getLastNonConfigurationInstance();
        b bVar2 = bVar == null ? new b() : bVar;
        this.a = bVar2;
        bVar2.f = this;
        if (bVar != null) {
            d();
            return;
        }
        if (bundle == null) {
            boolean booleanExtra = getIntent().getBooleanExtra("export", false);
            Intent type = new Intent(booleanExtra ? "android.intent.action.CREATE_DOCUMENT" : "android.intent.action.OPEN_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType(booleanExtra ? "application/octet-stream" : "*/*");
            if (booleanExtra) {
                String stringExtra = getIntent().getStringExtra("pkg");
                type.putExtra("android.intent.extra.TITLE", (stringExtra == null ? "MiDuo-全部颜色配置" : a(stringExtra) + "-颜色配置").replaceAll("[\\\\/:*?\"<>|\\p{Cntrl}]", "_") + J.e + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT).format(new Date()) + ".miduocolors");
            }
            startActivityForResult(type, 1);
            return;
        }
        if (bundle.getBoolean("writing")) {
            b("操作被中断，请检查当前配置后再操作");
            return;
        }
        String string = bundle.getString("selected");
        if (string != null) {
            this.a.a = Uri.parse(string);
            e();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        b bVar = this.a;
        if (bVar != null && bVar.f == this) {
            bVar.f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.a;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Uri uri = this.a.a;
        if (uri != null) {
            bundle.putString("selected", uri.toString());
        }
        bundle.putBoolean("writing", this.a.d);
    }

    private String a(String str) {
        try {
            return getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return str;
        }
    }

    private void a(final Map<String, String> map) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        AlertDialog alertDialog = this.b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = m.a(map).iterator();
            while (it.hasNext()) {
                sb.append("\n• ").append(a(it.next()));
            }
            final AlertDialog create = T.a((Activity) this, "替换颜色配置？").setMessage("将替换以下 App 的全部配色：" + ((Object) sb) + "\n\n其他 App 和其他设置保持不变。未安装 App 的配色也会保存。").setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(dialogInterface, i);
                }
            }).setPositiveButton("确认替换", (DialogInterface.OnClickListener) null).create();
            this.b = create;
            create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(dialogInterface);
                }
            });
            T.a(create);
            create.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.ColorConfigActivity.this.a(create, map, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AlertDialog alertDialog, final Map map, View view) {
        b bVar = this.a;
        bVar.c = true;
        bVar.d = true;
        alertDialog.getButton(-1).setEnabled(false);
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.ColorConfigActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.ColorConfigActivity.this.b(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        Map<String, String> map;
        ColorConfigActivity colorConfigActivity = this.a.f;
        if (colorConfigActivity == null || colorConfigActivity.isFinishing() || colorConfigActivity.isDestroyed()) {
            return;
        }
        b bVar = this.a;
        String str = bVar.e;
        if (str != null) {
            Toast.makeText(colorConfigActivity, str, 1).show();
            colorConfigActivity.finish();
        } else {
            if (bVar.c || (map = bVar.b) == null) {
                return;
            }
            colorConfigActivity.a(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Map map) {
        try {
            XposedService a2 = L.a(1500L);
            if (a2 != null) {
                synchronized (dev.duo.hookprobe.F.class) {
                    if (new o(a2).a((Map<String, String>) map)) {
                        Bundle a3 = F.a("");
                        if (m.a((Map<String, String>) map).contains(a3.getString("package"))) {
                            F.a(this, a3.getLong("token"));
                        }
                    } else {
                        throw new IOException("颜色配置保存失败");
                    }
                }
                b("颜色配置已导入");
                return;
            }
            throw new IOException("LSPosed 配置服务未连接");
        } catch (IOException | RuntimeException e) {
            b("导入失败：" + dev.duo.hookprobe.e.getMessage());
        }
    }

    private void b(String str) {
        b bVar = this.a;
        bVar.e = str;
        bVar.c = false;
        d();
    }
}
