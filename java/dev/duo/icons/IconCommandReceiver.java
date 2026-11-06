package dev.duo.icons;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: dev.duo.icons.b */
/* loaded from: classes.dex */
final class IconCommandReceiver extends BroadcastReceiver {

    /* renamed from: d */
    private static IconCommandReceiver f1925d;

    /* renamed from: a */
    private final Application f1926a;

    /* renamed from: b */
    private final ExecutorService f1927b = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    private final File f1928c;

    private IconCommandReceiver(Application application) {
        this.f1926a = application;
        this.f1928c = new File(application.getFilesDir(), "duo-icons-v1");
    }

    /* renamed from: a */
    static synchronized void m2088a(Application application) {
        synchronized (IconCommandReceiver.class) {
            if (f1925d != null) {
                return;
            }
            IconCommandReceiver c0126b = new IconCommandReceiver(application);
            f1925d = c0126b;
            application.registerReceiver(c0126b, new IntentFilter(IconConst.f1966d), IconConst.f1967e, null, 2);
            Log.i("DuoIcons", "图标桥已注册，仅主题壁纸作用域");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        final ResultReceiver resultReceiver;
        try {
            if (getSentFromUid() == this.f1926a.getPackageManager().getApplicationInfo(IconConst.f1963a, 0).uid && IconConst.f1963a.equals(getSentFromPackage())) {
                final String stringExtra = intent.getStringExtra("op");
                final String stringExtra2 = intent.getStringExtra("nonce");
                if (Arrays.asList("STATUS", "APPLY", "RESTORE").contains(stringExtra) && stringExtra2 != null && stringExtra2.matches("[a-f0-9]{32}") && (resultReceiver = (ResultReceiver) intent.getParcelableExtra("reply", ResultReceiver.class)) != null) {
                    final BroadcastReceiver.PendingResult goAsync = goAsync();
                    this.f1927b.execute(new Runnable() { // from class: dev.duo.icons.b$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            IconCommandReceiver.this.m2089a(stringExtra, intent, stringExtra2, resultReceiver, goAsync);
                        }
                    });
                }
            }
        } catch (Exception e) {
            Log.w("DuoIcons", "拒绝不匹配请求", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /*
    */
    public /* synthetic */ void m2089a(String str, Intent intent, String str2, ResultReceiver resultReceiver, BroadcastReceiver.PendingResult pendingResult) {
        ResultReceiver resultReceiver2;
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        File file;
        String str3;
        String str4;
        IconPackageWriter c0128d;
        Bundle bundle = new Bundle();
        try {
            ThemeNativeBridge c0130f = new ThemeNativeBridge(this.f1926a);
            this.f1928c.mkdirs();
            file = new File(this.f1928c, "incoming.zip");
            str3 = "";
            if (str.equals("APPLY")) {
                try {
                    Uri uri = (Uri) intent.getParcelableExtra("uri", Uri.class);
                    String stringExtra = intent.getStringExtra("hash");
                    String stringExtra2 = intent.getStringExtra("title");
                    if (uri == null || !uri.toString().equals("content://dev.duo.hookprobe.icons.files/stage/" + str2) || stringExtra == null || !stringExtra.matches("[a-f0-9]{64}") || stringExtra2 == null || stringExtra2.length() > 120) {
                        throw new IOException("图标请求格式不匹配");
                    }
                    InputStream openInputStream = this.f1926a.getContentResolver().openInputStream(uri);
                    try {
                        if (openInputStream == null) {
                            throw new IOException("无法读取导入图标");
                        }
                        str4 = "backup";
                        IconZipCodec.m2112a(openInputStream, file, IconZipCodec.f1935b);
                        openInputStream.close();
                        if (!IconZipCodec.m2109a(file).equals(stringExtra)) {
                            throw new IOException("图标包传输校验失败");
                        }
                        IconZipCodec.m2105a(file, new MainActivity$$ExternalSyntheticLambda5());
                        str3 = stringExtra2;
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                    resultReceiver2 = resultReceiver;
                    parcelFileDescriptor2 = null;
                    try {
                        Log.e("DuoIcons", "限定图标操作失败", th);
                        bundle.putString("message", th.getMessage() != null ? "图标操作失败，备份仍保留" : th.getMessage());
                        resultReceiver2.send(1, bundle);
                        if (parcelFileDescriptor2 != null) {
                        }
                        pendingResult.finish();
                    } catch (Throwable th2) {
                        if (parcelFileDescriptor2 != null) {
                            try {
                                parcelFileDescriptor2.close();
                            } catch (IOException e) {
                                Log.w("DuoIcons", "关闭备份描述符", e);
                            }
                        }
                        pendingResult.finish();
                        throw th2;
                    }
                }
            } else {
                str4 = "backup";
            }
            c0128d = new IconPackageWriter(Paths.get("/data/system/theme/icons", new String[0]), this.f1928c.toPath(), c0130f);
            parcelFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
            resultReceiver2 = resultReceiver;
            parcelFileDescriptor = null;
        }
        try {
            Properties m2101a = c0128d.m2101a(str, str.equals("APPLY") ? file.toPath() : null, str3, null);
            for (String str5 : m2101a.stringPropertyNames()) {
                bundle.putString(str5, m2101a.getProperty(str5));
            }
            bundle.putString("message", str.equals("STATUS") ? "图标桥已连接，应用兼容性以操作结果为准" : str.equals("APPLY") ? "图标已应用，其他主题组件未改" : "已恢复首次应用前的图标");
            if (!m2101a.containsKey(str4) || IconPackageWriter.f1930d.equals(m2101a.getProperty(str4))) {
                parcelFileDescriptor2 = null;
            } else {
                parcelFileDescriptor2 = ParcelFileDescriptor.open(new File(this.f1928c, "baseline.icons"), 268435456);
                try {
                    bundle.putParcelable("backupFd", parcelFileDescriptor2);
                } catch (Throwable th4) {
                    th = th4;
                    resultReceiver2 = resultReceiver;
                    Log.e("DuoIcons", "限定图标操作失败", th);
                    bundle.putString("message", th.getMessage() != null ? "图标操作失败，备份仍保留" : th.getMessage());
                    resultReceiver2.send(1, bundle);
                    if (parcelFileDescriptor2 != null) {
                        try {
                            parcelFileDescriptor2.close();
                        } catch (IOException e2) {
                            e = e2;
                            Log.w("DuoIcons", "关闭备份描述符", e);
                            pendingResult.finish();
                        }
                    }
                    pendingResult.finish();
                }
            }
            resultReceiver2 = resultReceiver;
            try {
                resultReceiver2.send(0, bundle);
                if (parcelFileDescriptor2 != null) {
                    try {
                        parcelFileDescriptor2.close();
                    } catch (IOException e3) {
                        e = e3;
                        Log.w("DuoIcons", "关闭备份描述符", e);
                        pendingResult.finish();
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                Log.e("DuoIcons", "限定图标操作失败", th);
                bundle.putString("message", th.getMessage() != null ? "图标操作失败，备份仍保留" : th.getMessage());
                resultReceiver2.send(1, bundle);
                if (parcelFileDescriptor2 != null) {
                }
                pendingResult.finish();
            }
        } catch (Throwable th6) {
            th = th6;
            resultReceiver2 = resultReceiver;
            parcelFileDescriptor2 = parcelFileDescriptor;
            Log.e("DuoIcons", "限定图标操作失败", th);
            bundle.putString("message", th.getMessage() != null ? "图标操作失败，备份仍保留" : th.getMessage());
            resultReceiver2.send(1, bundle);
            if (parcelFileDescriptor2 != null) {
            }
            pendingResult.finish();
        }
        pendingResult.finish();
    }
}
