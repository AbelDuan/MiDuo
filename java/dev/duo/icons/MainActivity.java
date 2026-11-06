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
import dev.duo.icons.C0125a;
import dev.duo.icons.C0129e;
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

/* loaded from: classes.dex */
public final class MainActivity extends Activity {

    /* renamed from: o */
    private static final int f1897o = 1;

    /* renamed from: p */
    private static final AtomicBoolean f1898p = new AtomicBoolean();

    /* renamed from: a */
    private final ExecutorService f1899a = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: b */
    private TextView f1900b;

    /* renamed from: c */
    private TextView f1901c;

    /* renamed from: d */
    private TextView f1902d;

    /* renamed from: e */
    private TextView f1903e;

    /* renamed from: f */
    private LinearLayout f1904f;

    /* renamed from: g */
    private Button f1905g;

    /* renamed from: h */
    private Button f1906h;

    /* renamed from: i */
    private Button f1907i;

    /* renamed from: j */
    private Button f1908j;

    /* renamed from: k */
    private boolean f1909k;

    /* renamed from: l */
    private boolean f1910l;

    /* renamed from: m */
    private boolean f1911m;

    /* renamed from: n */
    private SharedPreferences f1912n;

    /* renamed from: a */
    private int m2058a(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m2071b() {
        m2067a("STATUS");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m2072c() {
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT").setType("*/*").addCategory("android.intent.category.OPENABLE"), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m2073d() {
        m2067a("APPLY");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m2074e() {
        new AlertDialog.Builder(this).setTitle("恢复图标备份").setMessage("只恢复本 App 首次应用前的图标，不改壁纸、桌面布局或 Dock。继续？").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("恢复", new DialogInterface.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.m2062a(dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: f */
    private void m2075f() {
        this.f1904f.removeAllViews();
        if (!m2076g().exists()) {
            this.f1901c.setText("尚未选择 MTZ");
            return;
        }
        this.f1901c.setText(this.f1912n.getString("selectedTitle", "已导入主题") + " · " + this.f1912n.getInt("selectedCount", 0) + " 个图标资源");
        try {
            ZipFile zipFile = new ZipFile(m2076g());
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
                        byte[] m2113a = C0129e.m2113a(inputStream, 2097152L);
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(m2113a, 0, m2113a.length);
                        if (decodeByteArray != null) {
                            ImageView imageView = new ImageView(this);
                            imageView.setImageBitmap(decodeByteArray);
                            imageView.setContentDescription(str2.substring(str2.lastIndexOf(47) + 1));
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m2058a(56), m2058a(56));
                            layoutParams.setMargins(0, m2058a(8), m2058a(10), m2058a(12));
                            this.f1904f.addView(imageView, layoutParams);
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
            this.f1902d.setText("预览不可用，请重新导入主题。");
        }
    }

    /* renamed from: g */
    private File m2076g() {
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
        if (!f1898p.compareAndSet(false, true)) {
            this.f1902d.setText("上一次主题导入仍在进行，请稍后再试。");
            return;
        }
        this.f1909k = true;
        m2061a();
        this.f1902d.setText("正在检查主题及图标资源…");
        this.f1899a.execute(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2063a(data, str);
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedPreferences sharedPreferences = getSharedPreferences("state", 0);
        this.f1912n = sharedPreferences;
        sharedPreferences.edit().remove("labelBlocked").apply();
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(m2058a(24), m2058a(32), m2058a(24), m2058a(28));
        scrollView.addView(linearLayout);
        m2060a(linearLayout, "MiDuo 图标", 28, -15260885).setTypeface(null, 1);
        m2060a(linearLayout, "从 MTZ 主题中单独更换应用图标", 15, -10655632);
        this.f1900b = m2060a(linearLayout, "模块状态：待检查", 16, -14724508);
        m2060a(linearLayout, "主题壁纸版本：" + C0125a.m2079a(this), 13, -10655632);
        this.f1908j = m2059a(linearLayout, "检查模块状态", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2071b();
            }
        });
        m2060a(linearLayout, "选择主题", 19, -15260885).setTypeface(null, 1);
        this.f1901c = m2060a(linearLayout, "尚未选择 MTZ", 16, -15260885);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.f1904f = linearLayout2;
        horizontalScrollView.addView(linearLayout2);
        linearLayout.addView(horizontalScrollView);
        this.f1905g = m2059a(linearLayout, "选择 .mtz 主题包（.zip 也可）", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2072c();
            }
        });
        this.f1906h = m2059a(linearLayout, "应用图标", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2073d();
            }
        });
        this.f1903e = m2060a(linearLayout, "首次应用前会备份当前图标；恢复按钮回到该备份。", 14, -10655632);
        this.f1907i = m2059a(linearLayout, "恢复首次应用前的图标", new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2074e();
            }
        });
        this.f1902d = m2060a(linearLayout, "只使用适配应用的静态 PNG，未适配应用保留原图标。壁纸、锁屏、控制中心、布局和 Dock 样式不参与应用。", 14, -10655632);
        m2060a(linearLayout, "在 LSPosed 的 MiDuo 作用域中增加「主题壁纸」，原有勾选保持。加载图标桥后再检查状态。无需电脑或额外 Root 授权。", 13, -10655632);
        setContentView(scrollView);
        m2075f();
        m2061a();
        m2067a("STATUS");
    }

    /* renamed from: a */
    private TextView m2060a(LinearLayout linearLayout, String str, int i, int i2) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(i2);
        textView.setPadding(0, m2058a(8), 0, m2058a(8));
        linearLayout.addView(textView);
        return textView;
    }

    /* renamed from: a */
    private Button m2059a(LinearLayout linearLayout, String str, final Runnable runnable) {
        Button button = new Button(this);
        button.setText(str);
        button.setAllCaps(false);
        linearLayout.addView(button, new LinearLayout.LayoutParams(-1, m2058a(52)));
        button.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2062a(DialogInterface dialogInterface, int i) {
        m2067a("RESTORE");
    }

    /* renamed from: a */
    private void m2061a() {
        this.f1905g.setEnabled(!this.f1909k);
        this.f1908j.setEnabled(!this.f1909k);
        this.f1906h.setEnabled(!this.f1909k && this.f1910l && m2076g().exists());
        this.f1907i.setEnabled(!this.f1909k && this.f1910l && this.f1911m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2063a(Uri uri, String str) {
        File file = new File(getCacheDir(), "import.mtz");
        File file2 = new File(getCacheDir(), "prepared.zip");
        try {
            InputStream openInputStream = getContentResolver().openInputStream(uri);
            try {
                if (openInputStream != null) {
                    C0129e.m2112a(openInputStream, file, C0129e.f1934a);
                    openInputStream.close();
                    final C0129e.b m2108a = C0129e.m2108a(file, file2, str, new MainActivity$$ExternalSyntheticLambda5());
                    Files.move(file2.toPath(), m2076g().toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    if (this.f1912n.edit().putString("selectedTitle", m2108a.f1955a).putString("selectedHash", m2108a.f1956b).putInt("selectedCount", m2108a.f1958d).commit()) {
                        runOnUiThread(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainActivity.this.m2065a(m2108a);
                            }
                        });
                        return;
                    } else {
                        m2076g().delete();
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
                        MainActivity.this.m2069a(th);
                    }
                });
            } finally {
                file.delete();
                file2.delete();
                new File(file2.getPath() + ".new").delete();
                f1898p.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2065a(C0129e.b bVar) {
        this.f1909k = false;
        m2075f();
        this.f1902d.setText("导入完成：" + bVar.f1958d + " 个静态图标资源" + (bVar.f1959e > 0 ? "，跳过 " + bVar.f1959e + " 个（" + bVar.f1957c + "）" : "") + "。点击「应用图标」生效。");
        m2061a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2069a(Throwable th) {
        this.f1909k = false;
        m2075f();
        this.f1902d.setText("导入失败，当前图标未改变：" + (th.getMessage() == null ? th.toString() : th.getMessage()));
        m2061a();
    }

    /* renamed from: a */
    private void m2067a(final String str) {
        if (this.f1909k) {
            return;
        }
        this.f1909k = true;
        m2061a();
        this.f1902d.setText(str.equals("STATUS") ? "正在连接主题壁纸中的图标桥…" : str.equals("APPLY") ? "正在备份并应用图标…" : "正在恢复图标备份…");
        new C0125a(this).m2087a(str, this.f1912n.getString("selectedTitle", "主题"), this.f1912n.getString("selectedHash", ""), new C0125a.c() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda8
            @Override // dev.duo.icons.C0125a.c
            /* renamed from: a */
            public final void mo2078a(boolean z, Bundle bundle) {
                MainActivity.this.m2068a(str, z, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2068a(final String str, final boolean z, final Bundle bundle) {
        if (!str.equals("STATUS")) {
            this.f1912n.edit().putString("lastOperationResult", bundle.getString("message", "未收到明确结果")).commit();
        }
        final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("backupFd", ParcelFileDescriptor.class);
        this.f1899a.execute(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2064a(parcelFileDescriptor, bundle, z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2064a(ParcelFileDescriptor parcelFileDescriptor, final Bundle bundle, final boolean z, final String str) {
        final String str2;
        if (parcelFileDescriptor != null) {
            try {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                try {
                    File file = new File(getFilesDir(), "backup.new");
                    C0129e.m2112a(autoCloseInputStream, file, C0129e.f1935b);
                    if (C0129e.m2109a(file).equals(bundle.getString("backup"))) {
                        Files.move(file.toPath(), new File(getFilesDir(), "backup.icons").toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                        autoCloseInputStream.close();
                    } else {
                        throw new IOException("备份副本校验失败");
                    }
                } finally {
                }
            } catch (Exception e) {
                str2 = "\n手机主题进程内的备份仍保留；App 内副本未保存：" + e.getMessage();
            }
        }
        str2 = "";
        runOnUiThread(new Runnable() { // from class: dev.duo.icons.MainActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2070a(z, bundle, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2070a(boolean z, Bundle bundle, String str, String str2) {
        boolean z2 = false;
        this.f1909k = false;
        this.f1910l = z;
        if (z && Boolean.parseBoolean(bundle.getString("canRestore", "false"))) {
            z2 = true;
        }
        this.f1911m = z2;
        this.f1900b.setText(z ? "图标桥已连接" : "模块未就绪或操作失败");
        String string = bundle.getString("backup");
        String str3 = "";
        if (string != null) {
            this.f1903e.setText("首次应用前的图标已备份到手机。" + (C0128d.f1930d.equals(string) ? "备份为系统原图标，无覆盖文件。" : ""));
        }
        String string2 = bundle.getString("message", "未收到明确结果");
        if (z && str.equals("STATUS") && this.f1912n.contains("lastOperationResult")) {
            string2 = string2 + "\n上次操作：" + this.f1912n.getString("lastOperationResult", "");
        }
        TextView textView = this.f1902d;
        StringBuilder append = new StringBuilder().append(string2).append(str2);
        if (z && !str.equals("STATUS")) {
            str3 = "\n桌面与 Dock 使用原生图标；App 侧栏最近项会在切换应用后刷新。";
        }
        textView.setText(append.append(str3).toString());
        m2061a();
    }
}
