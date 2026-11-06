package dev.duo.icons;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import dev.duo.icons.a;
import dev.duo.icons.e;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class MainActivity extends Activity {
    private static final int o = 1;
    private static final AtomicBoolean p = new AtomicBoolean();
    private final ExecutorService a = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private LinearLayout f;
    private Button g;
    private Button h;
    private Button i;
    private Button j;
    private boolean k;
    private boolean l;
    private boolean m;
    private SharedPreferences n;

    private int a(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        a("STATUS");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT").setType("*/*").addCategory("android.intent.category.OPENABLE"), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        a("APPLY");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        new AlertDialog.Builder(this).setTitle("恢复图标备份").setMessage("只恢复本 App 首次应用前的图标，不改壁纸、桌面布局或 Dock。继续？").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("恢复", new DialogInterface.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dev.duo.icons.MainActivity.this.a(dialogInterface, i);
            }
        }).show();
    }

    private void f() {
        this.f.removeAllViews();
        if (!g().exists()) {
            this.c.setText("尚未选择 MTZ");
            return;
        }
        this.c.setText(this.n.getString("selectedTitle", "已导入主题") + " · " + this.n.getInt("selectedCount", 0) + " 个图标资源");
        try {
            ZipFile zipFile = new ZipFile(g());
            try {
                ArrayList arrayList = new ArrayList();
                String[] strArr = {"com.android.contacts", "com.android.mms", "com.android.settings", "com.android.camera", "com.tencent.mm", "com.miui.gallery"};
                for (int i = 0; i < 6; i++) {
                    String str = strArr[i];
                    if (zipFile.getEntry("res/drawable-xxhdpi/" + str + ".png") != null) {
                        arrayList.add("res/drawable-xxhdpi/" + str + ".png");
                    }
                }
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (arrayList.size() < 6 && entries.hasMoreElements()) {
                    String name = entries.nextElement().getName();
                    if (!arrayList.contains(name)) {
                        arrayList.add(name);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String str2 = (String) obj;
                    InputStream inputStream = zipFile.getInputStream(zipFile.getEntry(str2));
                    try {
                        byte[] a = e.a(inputStream, 2097152L);
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(a, 0, dev.duo.icons.a.length);
                        if (decodeByteArray != null) {
                            ImageView imageView = new ImageView(this);
                            imageView.setImageBitmap(decodeByteArray);
                            imageView.setContentDescription(str2.substring(str2.lastIndexOf(47) + 1));
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a(56), a(56));
                            layoutParams.setMargins(0, a(8), a(10), a(12));
                            this.f.addView(imageView, layoutParams);
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable th) {
                        if (inputStream == null) {
                            throw th;
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
                zipFile.close();
            } finally {
            }
        } catch (Exception e) {
            this.d.setText("预览不可用，请重新导入主题。");
        }
    }

    private File g() {
        return new File(getFilesDir(), "selected.zip");
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        final Uri data = intent.getData();
        final String str = "主题.mtz";
        try {
            Cursor query = getContentResolver().query(data, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(0);
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
        }
        if (!p.compareAndSet(false, true)) {
            this.d.setText("上一次主题导入仍在进行，请稍后再试。");
            return;
        }
        this.k = true;
        a();
        this.d.setText("正在检查主题及图标资源…");
        this.a.execute(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(data, str);
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedPreferences sharedPreferences = getSharedPreferences("state", 0);
        this.n = sharedPreferences;
        sharedPreferences.edit().remove("labelBlocked").apply();
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(a(24), a(32), a(24), a(28));
        scrollView.addView(linearLayout);
        a(linearLayout, "MiDuo 图标", 28, -15260885).setTypeface(null, 1);
        a(linearLayout, "从 MTZ 主题中单独更换应用图标", 15, -10655632);
        this.b = a(linearLayout, "模块状态：待检查", 16, -14724508);
        a(linearLayout, "主题壁纸版本：" + a.a(this), 13, -10655632);
        this.j = a(linearLayout, "检查模块状态", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.b();
            }
        });
        a(linearLayout, "选择主题", 19, -15260885).setTypeface(null, 1);
        this.c = a(linearLayout, "尚未选择 MTZ", 16, -15260885);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.f = linearLayout2;
        horizontalScrollView.addView(linearLayout2);
        linearLayout.addView(horizontalScrollView);
        this.g = a(linearLayout, "选择 .mtz 主题包（.zip 也可）", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.c();
            }
        });
        this.h = a(linearLayout, "应用图标", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.d();
            }
        });
        this.e = a(linearLayout, "首次应用前会备份当前图标；恢复按钮回到该备份。", 14, -10655632);
        this.i = a(linearLayout, "恢复首次应用前的图标", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.e();
            }
        });
        this.d = a(linearLayout, "只使用适配应用的静态 PNG，未适配应用保留原图标。壁纸、锁屏、控制中心、布局和 Dock 样式不参与应用。", 14, -10655632);
        a(linearLayout, "在 LSPosed 的 MiDuo 作用域中增加「主题壁纸」，原有勾选保持。加载图标桥后再检查状态。无需电脑或额外 Root 授权。", 13, -10655632);
        setContentView(scrollView);
        f();
        a();
        a("STATUS");
    }

    private TextView a(LinearLayout linearLayout, String str, int i, int i2) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(i2);
        textView.setPadding(0, a(8), 0, a(8));
        linearLayout.addView(textView);
        return textView;
    }

    private Button a(LinearLayout linearLayout, String str, final Runnable runnable) {
        Button button = new Button(this);
        button.setText(str);
        button.setAllCaps(false);
        linearLayout.addView(button, new LinearLayout.LayoutParams(-1, a(52)));
        button.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        a("RESTORE");
    }

    private void a() {
        this.g.setEnabled(!this.k);
        this.j.setEnabled(!this.k);
        this.h.setEnabled(!this.k && this.l && g().exists());
        this.i.setEnabled(!this.k && this.l && this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Uri uri, String str) {
        File file = new File(getCacheDir(), "import.mtz");
        File file2 = new File(getCacheDir(), "prepared.zip");
        try {
            InputStream openInputStream = getContentResolver().openInputStream(uri);
            try {
                if (openInputStream != null) {
                    e.a(openInputStream, file, e.a);
                    openInputStream.close();
                    final e.b a = e.a(file, file2, str, new Runnable() { public void run() { } });
                    Files.move(file2.toPath(), g().toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    if (this.n.edit().putString("selectedTitle", a.a).putString("selectedHash", a.b).putInt("selectedCount", a.d).commit()) {
                        runOnUiThread(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                dev.duo.icons.MainActivity.this.a(a);
                            }
                        });
                        return;
                    } else {
                        g().delete();
                        throw new IOException("导入信息未能保存，请重新导入");
                    }
                }
                throw new IOException("无法读取所选文件");
            } finally {
            }
        } catch (Throwable th) {
            try {
                runOnUiThread(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.icons.MainActivity.this.a(th);
                    }
                });
            } finally {
                file.delete();
                file2.delete();
                new File(file2.getPath() + ".new").delete();
                p.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(e.b bVar) {
        this.k = false;
        f();
        this.d.setText("导入完成：" + bVar.d + " 个静态图标资源" + (bVar.e > 0 ? "，跳过 " + bVar.e + " 个（" + bVar.c + "）" : "") + "。点击「应用图标」生效。");
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) {
        this.k = false;
        f();
        this.d.setText("导入失败，当前图标未改变：" + (th.getMessage() == null ? th.toString() : th.getMessage()));
        a();
    }

    private void a(final String str) {
        if (this.k) {
            return;
        }
        this.k = true;
        a();
        this.d.setText(str.equals("STATUS") ? "正在连接主题壁纸中的图标桥…" : str.equals("APPLY") ? "正在备份并应用图标…" : "正在恢复图标备份…");
        new a(this).a(str, this.n.getString("selectedTitle", "主题"), this.n.getString("selectedHash", ""), new a.c() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda8
            @Override // dev.duo.icons.a.c
            public final void a(boolean z, Bundle bundle) {
                dev.duo.icons.MainActivity.this.a(str, z, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str, final boolean z, final Bundle bundle) {
        if (!str.equals("STATUS")) {
            this.n.edit().putString("lastOperationResult", bundle.getString("message", "未收到明确结果")).commit();
        }
        final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("backupFd", ParcelFileDescriptor.class);
        this.a.execute(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(parcelFileDescriptor, bundle, z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ParcelFileDescriptor parcelFileDescriptor, final Bundle bundle, final boolean z, final String str) {
        final String str2;
        if (parcelFileDescriptor != null) {
            try {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                try {
                    File file = new File(getFilesDir(), "backup.new");
                    e.a(autoCloseInputStream, file, e.b);
                    if (e.a(file).equals(bundle.getString("backup"))) {
                        Files.move(file.toPath(), new File(getFilesDir(), "backup.icons").toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                        autoCloseInputStream.close();
                    } else {
                        throw new IOException("备份副本校验失败");
                    }
                } finally {
                }
            } catch (Exception e) {
                str2 = "\n手机主题进程内的备份仍保留；App 内副本未保存：" + dev.duo.icons.e.getMessage();
            }
        }
        str2 = "";
        runOnUiThread(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.icons.MainActivity.this.a(z, bundle, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, Bundle bundle, String str, String str2) {
        boolean z2 = false;
        this.k = false;
        this.l = z;
        if (z && Boolean.parseBoolean(bundle.getString("canRestore", "false"))) {
            z2 = true;
        }
        this.m = z2;
        this.b.setText(z ? "图标桥已连接" : "模块未就绪或操作失败");
        String string = bundle.getString("backup");
        String str3 = "";
        if (string != null) {
            this.e.setText("首次应用前的图标已备份到手机。" + (d.d.equals(string) ? "备份为系统原图标，无覆盖文件。" : ""));
        }
        String string2 = bundle.getString("message", "未收到明确结果");
        if (z && str.equals("STATUS") && this.n.contains("lastOperationResult")) {
            string2 = string2 + "\n上次操作：" + this.n.getString("lastOperationResult", "");
        }
        TextView textView = this.d;
        StringBuilder append = new StringBuilder().append(string2).append(str2);
        if (z && !str.equals("STATUS")) {
            str3 = "\n桌面与 Dock 使用原生图标；App 侧栏最近项会在切换应用后刷新。";
        }
        textView.setText(append.append(str3).toString());
        a();
    }
}
