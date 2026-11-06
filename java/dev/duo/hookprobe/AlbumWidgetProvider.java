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
import dev.duo.hookprobe.C0100b;
import dev.duo.workspaceprobe.b.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class AlbumWidgetProvider extends AppWidgetProvider {

    /* renamed from: a */
    private static final String f775a = "dev.duo.hookprobe.ALBUM_REFRESH";

    /* renamed from: b */
    private static final String f776b = "MiDuoAlbum";

    /* renamed from: c */
    private static final String f777c = "after_home";

    /* renamed from: d */
    private static final String f778d = "album_widget";

    /* renamed from: e */
    private static final long[] f779e = {800, 1200};

    /* renamed from: f */
    private static final ExecutorService f780f = Executors.newSingleThreadExecutor();

    /* renamed from: dev.duo.hookprobe.AlbumWidgetProvider$a */
    class C0042a implements C0100b.d {

        /* renamed from: a */
        final /* synthetic */ Handler f781a;

        /* renamed from: b */
        final /* synthetic */ Context f782b;

        C0042a(Handler handler, Context context) {
            this.f781a = handler;
            this.f782b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static /* synthetic */ void m769a(Context context, String str) {
            Toast.makeText(context, str, 1).show();
        }

        @Override // dev.duo.hookprobe.C0100b.d
        /* renamed from: a */
        public void mo771a(final String str) {
            Handler handler = this.f781a;
            final Context context = this.f782b;
            handler.post(new Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumWidgetProvider.C0042a.m769a(context, str);
                }
            });
        }

        @Override // dev.duo.hookprobe.C0100b.d
        /* renamed from: a */
        public void mo770a(C0100b.c cVar, Exception exc) {
            Log.w(AlbumWidgetProvider.f776b, "widget page not set (provider process)\n" + cVar.m1575a(), exc);
            mo771a("没能自动设为第 1 页，请打开 MiDuo 的小组件页点「设为第 1 页」");
        }
    }

    /* renamed from: a */
    static C0100b.d m761a(Context context) {
        return new C0042a(new Handler(Looper.getMainLooper()), context);
    }

    /* renamed from: b */
    static void m768b(Context context, int i) {
        context.sendBroadcast(new Intent(f775a).setClass(context, AlbumWidgetProvider.class).putExtra("appWidgetId", i).putExtra(f777c, true));
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        SharedPreferences.Editor edit = context.getSharedPreferences(f778d, 0).edit();
        for (int i : iArr) {
            C0101c.m1579a(context, i);
            edit.remove(m762a(i));
        }
        edit.apply();
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        if ("miui.appwidget.action.APPWIDGET_UPDATE".equals(intent.getAction())) {
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra != null) {
                m764a(context, appWidgetManager, intArrayExtra, false);
                return;
            }
            return;
        }
        if (!f775a.equals(intent.getAction())) {
            super.onReceive(context, intent);
            return;
        }
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        if (m766a(context, intExtra)) {
            m764a(context, appWidgetManager, new int[]{intExtra}, intent.getBooleanExtra(f777c, false));
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        m764a(context, appWidgetManager, iArr, false);
    }

    /* renamed from: a */
    static boolean m766a(Context context, int i) {
        for (int i2 : AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) AlbumWidgetProvider.class))) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static String m762a(int i) {
        return "layout_b_" + i;
    }

    /* renamed from: a */
    private void m764a(Context context, final AppWidgetManager appWidgetManager, final int[] iArr, final boolean z) {
        if (iArr.length == 0) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        f780f.execute(new Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AlbumWidgetProvider.m765a(z, iArr, applicationContext, appWidgetManager, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m765a(boolean z, int[] iArr, Context context, AppWidgetManager appWidgetManager, BroadcastReceiver.PendingResult pendingResult) {
        try {
            if (z) {
                for (long j : f779e) {
                    Thread.sleep(j);
                    for (int i : iArr) {
                        if (m766a(context, i)) {
                            m763a(context, appWidgetManager, i);
                        }
                    }
                }
            } else {
                for (int i2 : iArr) {
                    m763a(context, appWidgetManager, i2);
                }
                if (C0100b.m1571b(context)) {
                    AlbumPageJob.m758a(context, iArr);
                }
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            pendingResult.finish();
        }
    }

    /* renamed from: a */
    private static boolean m767a(SharedPreferences sharedPreferences, int i) {
        return !sharedPreferences.getBoolean(m762a(i), false);
    }

    /* renamed from: a */
    private static void m763a(Context context, AppWidgetManager appWidgetManager, int i) {
        Bitmap bitmap;
        String m1590a = C0102d.m1590a(i);
        Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
        if (!m1590a.equals(appWidgetOptions.getString("miuiEditUri"))) {
            appWidgetOptions.putString("miuiEditUri", m1590a);
            appWidgetManager.updateAppWidgetOptions(i, appWidgetOptions);
        }
        Bitmap m1585c = C0101c.m1585c(context, i);
        if (m1585c == null && C0101c.m1584b(context, i)) {
            Log.w(f776b, "cannot decode photo for widget " + i);
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(f778d, 0);
        boolean m767a = m767a(sharedPreferences, i);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), m767a ? R.layout.album_widget_b : R.layout.album_widget);
        remoteViews.setOnClickPendingIntent(R.C0161id.album_image, PendingIntent.getActivity(context, i, new Intent(context, (Class<?>) WidgetCenterActivity.class).putExtra("appWidgetId", i), 201326592));
        if (m1585c == null) {
            bitmap = null;
        } else {
            bitmap = C0103e.m1593a(m1585c);
            m1585c.recycle();
            remoteViews.setImageViewBitmap(R.C0161id.album_image, bitmap);
            remoteViews.setViewVisibility(R.C0161id.album_placeholder, 8);
            remoteViews.setViewVisibility(R.C0161id.album_hint, 8);
        }
        appWidgetManager.updateAppWidget(i, remoteViews);
        if (bitmap != null) {
            bitmap.recycle();
        }
        sharedPreferences.edit().putBoolean(m762a(i), m767a).commit();
    }
}
