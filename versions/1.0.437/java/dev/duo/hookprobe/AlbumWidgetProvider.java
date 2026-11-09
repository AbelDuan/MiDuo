package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class AlbumWidgetProvider extends android.appwidget.AppWidgetProvider {
    private static final java.lang.String a = "dev.duo.hookprobe.ALBUM_REFRESH";
    private static final java.lang.String b = "MiDuoAlbum";
    private static final java.lang.String c = "after_home";
    private static final java.lang.String d = "album_widget";
    private static final long[] e = {800, 1200};
    private static final java.util.concurrent.ExecutorService f = java.util.concurrent.Executors.newSingleThreadExecutor();

    class a implements dev.duo.hookprobe.C0012b.d {
        final /* synthetic */ android.os.Handler a;
        final /* synthetic */ android.content.Context b;

        a(android.os.Handler handler, android.content.Context context) {
            this.a = handler;
            this.b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(android.content.Context context, java.lang.String str) {
            android.widget.Toast.makeText(context, str, 1).show();
        }

        @Override // dev.duo.hookprobe.C0012b.d
        public void a(final java.lang.String str) {
            android.os.Handler handler = this.a;
            final android.content.Context context = this.b;
            handler.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.AlbumWidgetProvider.a.a(context, str);
                }
            });
        }

        @Override // dev.duo.hookprobe.C0012b.d
        public void a(dev.duo.hookprobe.C0012b.c cVar, java.lang.Exception exc) {
            android.util.Log.w(dev.duo.hookprobe.AlbumWidgetProvider.b, "widget page not set (provider process)\n" + cVar.a(), exc);
            a("没能自动设为第 1 页，请打开 MiDuo 的小组件页点「设为第 1 页」");
        }
    }

    static dev.duo.hookprobe.C0012b.d a(android.content.Context context) {
        return new dev.duo.hookprobe.AlbumWidgetProvider.a(new android.os.Handler(android.os.Looper.getMainLooper()), context);
    }

    static void b(android.content.Context context, int i) {
        context.sendBroadcast(new android.content.Intent(a).setClass(context, dev.duo.hookprobe.AlbumWidgetProvider.class).putExtra("appWidgetId", i).putExtra(c, true));
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(android.content.Context context, int[] iArr) {
        android.content.SharedPreferences.Editor edit = context.getSharedPreferences(d, 0).edit();
        for (int i : iArr) {
            dev.duo.hookprobe.C0013c.a(context, i);
            edit.remove(a(i));
        }
        edit.apply();
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        android.appwidget.AppWidgetManager appWidgetManager = android.appwidget.AppWidgetManager.getInstance(context);
        if ("miui.appwidget.action.APPWIDGET_UPDATE".equals(intent.getAction())) {
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra != null) {
                a(context, appWidgetManager, intArrayExtra, false);
                return;
            }
            return;
        }
        if (!a.equals(intent.getAction())) {
            super.onReceive(context, intent);
            return;
        }
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        if (a(context, intExtra)) {
            a(context, appWidgetManager, new int[]{intExtra}, intent.getBooleanExtra(c, false));
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(android.content.Context context, android.appwidget.AppWidgetManager appWidgetManager, int[] iArr) {
        a(context, appWidgetManager, iArr, false);
    }

    static boolean a(android.content.Context context, int i) {
        for (int i2 : android.appwidget.AppWidgetManager.getInstance(context).getAppWidgetIds(new android.content.ComponentName(context, (java.lang.Class<?>) dev.duo.hookprobe.AlbumWidgetProvider.class))) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static java.lang.String a(int i) {
        return "layout_b_" + i;
    }

    private void a(android.content.Context context, final android.appwidget.AppWidgetManager appWidgetManager, final int[] iArr, final boolean z) {
        if (iArr.length == 0) {
            return;
        }
        final android.content.Context applicationContext = context.getApplicationContext();
        final android.content.BroadcastReceiver.PendingResult goAsync = goAsync();
        f.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumWidgetProvider.a(z, iArr, applicationContext, appWidgetManager, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, int[] iArr, android.content.Context context, android.appwidget.AppWidgetManager appWidgetManager, android.content.BroadcastReceiver.PendingResult pendingResult) {
        try {
            if (z) {
                for (long j : e) {
                    java.lang.Thread.sleep(j);
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
                if (dev.duo.hookprobe.C0012b.b(context)) {
                    dev.duo.hookprobe.AlbumPageJob.a(context, iArr);
                }
            }
        } catch (java.lang.InterruptedException e2) {
            java.lang.Thread.currentThread().interrupt();
        } finally {
            pendingResult.finish();
        }
    }

    private static boolean a(android.content.SharedPreferences sharedPreferences, int i) {
        return !sharedPreferences.getBoolean(a(i), false);
    }

    private static void a(android.content.Context context, android.appwidget.AppWidgetManager appWidgetManager, int i) {
        android.graphics.Bitmap bitmap;
        java.lang.String a2 = dev.duo.hookprobe.C0014d.a(i);
        android.os.Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
        if (!a2.equals(appWidgetOptions.getString("miuiEditUri"))) {
            appWidgetOptions.putString("miuiEditUri", a2);
            appWidgetManager.updateAppWidgetOptions(i, appWidgetOptions);
        }
        android.graphics.Bitmap c2 = dev.duo.hookprobe.C0013c.c(context, i);
        if (c2 == null && dev.duo.hookprobe.C0013c.b(context, i)) {
            android.util.Log.w(b, "cannot decode photo for widget " + i);
            return;
        }
        android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        boolean a3 = a(sharedPreferences, i);
        android.widget.RemoteViews remoteViews = new android.widget.RemoteViews(context.getPackageName(), a3 ? dev.duo.workspaceprobe.b.R.layout.album_widget_b : dev.duo.workspaceprobe.b.R.layout.album_widget);
        remoteViews.setOnClickPendingIntent(dev.duo.workspaceprobe.b.R.id.album_image, android.app.PendingIntent.getActivity(context, i, new android.content.Intent(context, (java.lang.Class<?>) dev.duo.hookprobe.WidgetCenterActivity.class).putExtra("appWidgetId", i), 201326592));
        if (c2 == null) {
            bitmap = null;
        } else {
            bitmap = dev.duo.hookprobe.C0015e.a(c2);
            c2.recycle();
            remoteViews.setImageViewBitmap(dev.duo.workspaceprobe.b.R.id.album_image, bitmap);
            remoteViews.setViewVisibility(dev.duo.workspaceprobe.b.R.id.album_placeholder, 8);
            remoteViews.setViewVisibility(dev.duo.workspaceprobe.b.R.id.album_hint, 8);
        }
        appWidgetManager.updateAppWidget(i, remoteViews);
        if (bitmap != null) {
            bitmap.recycle();
        }
        sharedPreferences.edit().putBoolean(a(i), a3).commit();
    }
}
