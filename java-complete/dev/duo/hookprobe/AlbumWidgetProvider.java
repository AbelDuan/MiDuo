package dev.duo.hookprobe;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.RemoteViews;
import android.widget.Toast;
import dev.duo.hookprobe.AlbumWidgetProvider;
import dev.duo.hookprobe.H;
import dev.duo.hookprobe.b;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class AlbumWidgetProvider extends AppWidgetProvider {
    private static final String a = "com.lsposed.miduo.ALBUM_REFRESH";
    private static final String b = "MiDuoAlbum";
    private static final String c = "after_home";
    private static final String d = "album_widget";
    private static final long[] e = {800, 1200};
    private static final ExecutorService f = Executors.newSingleThreadExecutor();

    class a implements b.d {
        final /* synthetic */ Handler a;
        final /* synthetic */ Context b;

        a(Handler handler, Context context) {
            this.a = handler;
            this.b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Context context, String str) {
            Toast.makeText(context, str, 1).show();
        }

        @Override // dev.duo.hookprobe.b.d
        public void a(final String str) {
            Handler handler = this.a;
            final Context context = this.b;
            handler.post(new Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumWidgetProvider.a.a(context, str);
                }
            });
        }

        @Override // dev.duo.hookprobe.b.d
        public void a(b.c cVar, Exception exc) {
            Log.w(AlbumWidgetProvider.b, "widget page not set (provider process)\n" + cVar.a(), exc);
            a("没能自动设为第 1 页，请打开 MiDuo 的小组件页点「设为第 1 页」");
        }
    }

    static b.d a(Context context) {
        return new a(new Handler(Looper.getMainLooper()), context);
    }

    static void b(Context context, int i) {
        context.sendBroadcast(new Intent(a).setClass(context, dev.duo.hookprobe.AlbumWidgetProvider.class).putExtra("appWidgetId", i).putExtra(c, true));
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        SharedPreferences.Editor edit = context.getSharedPreferences(d, 0).edit();
        for (int i : iArr) {
            c.a(context, i);
            edit.remove(a(i));
        }
        edit.apply();
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        if ("miui.appwidget.action.APPWIDGET_UPDATE".equals(intent.getAction())) {
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra != null) {
                a(context, appWidgetManager, intArrayExtra, false);
                return;
            }
            return;
        }
        if (!dev.duo.hookprobe.a.equals(intent.getAction())) {
            super.onReceive(context, intent);
            return;
        }
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        if (a(context, intExtra)) {
            a(context, appWidgetManager, new int[]{intExtra}, intent.getBooleanExtra(c, false));
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        a(context, appWidgetManager, iArr, false);
    }

    static boolean a(Context context, int i) {
        for (int i2 : AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) dev.duo.hookprobe.AlbumWidgetProvider.class))) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static String a(int i) {
        return "layout_b_" + i;
    }

    private void a(Context context, final AppWidgetManager appWidgetManager, final int[] iArr, final boolean z) {
        if (iArr.length == 0) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        dev.duo.hookprobe.f.execute(new Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AlbumWidgetProvider.a(z, iArr, applicationContext, appWidgetManager, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, int[] iArr, Context context, AppWidgetManager appWidgetManager, BroadcastReceiver.PendingResult pendingResult) {
        try {
            if (z) {
                for (long j : e) {
                    Thread.sleep(j);
                    for (int i : iArr) {
                        if (a(context, i)) {
                            a(context, appWidgetManager, i);
                        }
                    }
                }
            } else {
                for (int i2 : iArr) {
                    a(context, appWidgetManager, i2);
                }
                if (b.b(context)) {
                    AlbumPageJob.a(context, iArr);
                }
            }
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
        } finally {
            pendingResult.finish();
        }
    }

    private static boolean a(SharedPreferences sharedPreferences, int i) {
        return !sharedPreferences.getBoolean(a(i), false);
    }

    private static void a(Context context, AppWidgetManager appWidgetManager, int i) {
        Bitmap bitmap;
        String a2 = d.a(i);
        Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
        if (!a2.equals(appWidgetOptions.getString("miuiEditUri"))) {
            appWidgetOptions.putString("miuiEditUri", a2);
            appWidgetManager.updateAppWidgetOptions(i, appWidgetOptions);
        }
        Bitmap c2 = c.c(context, i);
        if (c2 == null && c.b(context, i)) {
            Log.w(b, "cannot decode photo for widget " + i);
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        boolean a3 = a(sharedPreferences, i);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), a3 ? H.d.b : H.d.a);
        remoteViews.setOnClickPendingIntent(H.c.b, PendingIntent.getActivity(context, i, new Intent(context, (Class<?>) dev.duo.hookprobe.WidgetCenterActivity.class).putExtra("appWidgetId", i), 201326592));
        if (c2 == null) {
            bitmap = null;
        } else {
            bitmap = e.a(c2);
            c2.recycle();
            remoteViews.setImageViewBitmap(H.c.b, bitmap);
            remoteViews.setViewVisibility(H.c.c, 8);
            remoteViews.setViewVisibility(H.c.a, 8);
        }
        appWidgetManager.updateAppWidget(i, remoteViews);
        if (bitmap != null) {
            bitmap.recycle();
        }
        sharedPreferences.edit().putBoolean(a(i), a3).commit();
    }
}
