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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class b extends BroadcastReceiver {
    private static b d;
    private final Application a;
    private final ExecutorService b = Executors.newSingleThreadExecutor();
    private final File c;

    private b(Application application) {
        this.a = application;
        this.c = new File(application.getFilesDir(), "duo-icons-v1");
    }

    static synchronized void a(Application application) {
        synchronized (dev.duo.icons.b.class) {
            if (d != null) {
                return;
            }
            b bVar = new b(application);
            d = bVar;
            application.registerReceiver(bVar, new IntentFilter(g.d), g.e, null, 2);
            Log.i("DuoIcons", "图标桥已注册，仅主题壁纸作用域");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        final ResultReceiver resultReceiver;
        try {
            if (getSentFromUid() == this.a.getPackageManager().getApplicationInfo(g.a, 0).uid && g.a.equals(getSentFromPackage())) {
                final String stringExtra = intent.getStringExtra("op");
                final String stringExtra2 = intent.getStringExtra("nonce");
                if (Arrays.asList("STATUS", "APPLY", "RESTORE").contains(stringExtra) && stringExtra2 != null && stringExtra2.matches("[a-f0-9]{32}") && (resultReceiver = (ResultReceiver) intent.getParcelableExtra("reply", ResultReceiver.class)) != null) {
                    final BroadcastReceiver.PendingResult goAsync = goAsync();
                    this.b.execute(new Runnable() { // from class: dev.duo.icons.b$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.icons.b.this.a(stringExtra, intent, stringExtra2, resultReceiver, goAsync);
                        }
                    });
                }
            }
        } catch (Exception e) {
            Log.w("DuoIcons", "拒绝不匹配请求", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0183 A[Catch: all -> 0x019d, TryCatch #9 {all -> 0x019d, blocks: (B:41:0x0175, B:44:0x0187, B:51:0x0183), top: B:40:0x0175 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void a(String str, Intent intent, String str2, ResultReceiver resultReceiver, BroadcastReceiver.PendingResult pendingResult) {
        ResultReceiver resultReceiver2;
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        File file;
        String str3;
        String str4;
        d dVar;
        Bundle bundle = new Bundle();
        try {
            f fVar = new f(this.a);
            this.c.mkdirs();
            file = new File(this.c, "incoming.zip");
            str3 = "";
            if (str.equals("APPLY")) {
                try {
                    Uri uri = (Uri) intent.getParcelableExtra("uri", Uri.class);
                    String stringExtra = intent.getStringExtra("hash");
                    String stringExtra2 = intent.getStringExtra("title");
                    if (uri == null || !uri.toString().equals("content://com.lsposed.miduo.icons.files/stage/" + str2) || stringExtra == null || !stringExtra.matches("[a-f0-9]{64}") || stringExtra2 == null || stringExtra2.length() > 120) {
                        throw new IOException("图标请求格式不匹配");
                    }
                    InputStream openInputStream = this.a.getContentResolver().openInputStream(uri);
                    try {
                        if (openInputStream == null) {
                            throw new IOException("无法读取导入图标");
                        }
                        str4 = "backup";
                        e.a(openInputStream, file, e.b);
                        openInputStream.close();
                        if (!e.a(file).equals(stringExtra)) {
                            throw new IOException("图标包传输校验失败");
                        }
                        e.a(file, new MainActivity$$ExternalSyntheticLambda5());
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
            dVar = new d(Paths.get("/data/system/theme/icons", new String[0]), this.c.toPath(), fVar);
            parcelFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
            resultReceiver2 = resultReceiver;
            parcelFileDescriptor = null;
        }
        try {
            Properties a = dVar.a(str, str.equals("APPLY") ? file.toPath() : null, str3, null);
            for (String str5 : dev.duo.icons.a.stringPropertyNames()) {
                bundle.putString(str5, dev.duo.icons.a.getProperty(str5));
            }
            bundle.putString("message", str.equals("STATUS") ? "图标桥已连接，应用兼容性以操作结果为准" : str.equals("APPLY") ? "图标已应用，其他主题组件未改" : "已恢复首次应用前的图标");
            if (!dev.duo.icons.a.containsKey(str4) || d.d.equals(dev.duo.icons.a.getProperty(str4))) {
                parcelFileDescriptor2 = null;
            } else {
                parcelFileDescriptor2 = ParcelFileDescriptor.open(new File(this.c, "baseline.icons"), 268435456);
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
