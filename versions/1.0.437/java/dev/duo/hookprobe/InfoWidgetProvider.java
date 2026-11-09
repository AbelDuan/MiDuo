package dev.duo.hookprobe;

/* loaded from: classes.dex */
public class InfoWidgetProvider extends android.appwidget.AppWidgetProvider {
    static final java.lang.String a = "dev.duo.hookprobe.INFO_WIDGET_CHANGED";
    static final java.lang.String b = "dev.duo.hookprobe.INFO_WIDGET_REFRESH";
    static final java.lang.Class<?>[] c = {dev.duo.hookprobe.InfoWidgetProvider.BatterySmall.class, dev.duo.hookprobe.InfoWidgetProvider.BatteryMedium.class, dev.duo.hookprobe.InfoWidgetProvider.CalendarSmall.class, dev.duo.hookprobe.InfoWidgetProvider.CalendarMedium.class, dev.duo.hookprobe.InfoWidgetProvider.WeatherSmall.class, dev.duo.hookprobe.InfoWidgetProvider.WeatherMedium.class};
    static final java.lang.String[] d = {"battery", "battery", "calendar", "calendar", "weather", "weather"};
    static final java.lang.String[] e = {"电池 · 2×2", "电池 · 4×2", "日历 · 2×2", "日历 · 4×2", "天气 · 2×2", "天气 · 4×2"};
    private static final java.util.concurrent.ExecutorService f = java.util.concurrent.Executors.newSingleThreadExecutor();

    public static final class BatteryMedium extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    public static final class BatterySmall extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    public static final class CalendarMedium extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    public static final class CalendarSmall extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    public static final class WeatherMedium extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    public static final class WeatherSmall extends dev.duo.hookprobe.InfoWidgetProvider {
    }

    class a extends android.content.BroadcastReceiver {
        final /* synthetic */ android.os.Bundle[] a;
        final /* synthetic */ java.util.concurrent.CountDownLatch b;

        a(android.os.Bundle[] bundleArr, java.util.concurrent.CountDownLatch countDownLatch) {
            this.a = bundleArr;
            this.b = countDownLatch;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if (getResultCode() == -1) {
                this.a[0] = getResultExtras(false);
            }
            this.b.countDown();
        }
    }

    static void a(android.content.Context context) {
        context.sendBroadcast(new android.content.Intent(b).setClass(context, dev.duo.hookprobe.InfoWidgetProvider.class), null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    private void b(android.content.Context context) {
        a(context, -1);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(android.content.Context context, int[] iArr) {
        b(context);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        java.lang.String action = intent.getAction();
        if (a.equals(action)) {
            if ("com.android.systemui".equals(getSentFromPackage())) {
                b(context);
            }
        } else if (b.equals(action)) {
            if (context.getPackageName().equals(getSentFromPackage())) {
                b(context);
            }
        } else if ("android.intent.action.MY_PACKAGE_REPLACED".equals(action) || "android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action) || "miui.appwidget.action.APPWIDGET_UPDATE".equals(action)) {
            b(context);
        } else {
            super.onReceive(context, intent);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(android.content.Context context, android.appwidget.AppWidgetManager appWidgetManager, int[] iArr) {
        int i = 0;
        while (true) {
            java.lang.Class<?>[] clsArr = c;
            if (i >= clsArr.length) {
                return;
            }
            if (clsArr[i] == getClass()) {
                a(context, i);
                return;
            }
            i++;
        }
    }

    private void a(android.content.Context context, final int i) {
        final android.content.Context applicationContext = context.getApplicationContext();
        final android.content.BroadcastReceiver.PendingResult goAsync = goAsync();
        f.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.InfoWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.InfoWidgetProvider.a(applicationContext, i, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [int] */
    public static /* synthetic */ void a(android.content.Context context, int i, android.content.BroadcastReceiver.PendingResult pendingResult) {
        android.os.Bundle bundle;
        java.lang.String str;
        java.lang.String str2;
        android.content.Intent intent;
        int i2 = i;
        java.lang.String str3 = "miduo_info_layout_b";
        try {
            android.appwidget.AppWidgetManager appWidgetManager = android.appwidget.AppWidgetManager.getInstance(context);
            int[][] iArr = new int[c.length][];
            boolean z = false;
            int i3 = 0;
            while (true) {
                java.lang.Class<?>[] clsArr = c;
                if (i3 >= clsArr.length) {
                    break;
                }
                iArr[i3] = appWidgetManager.getAppWidgetIds(new android.content.ComponentName(context, clsArr[i3]));
                i3++;
            }
            boolean z2 = iArr[0].length + iArr[1].length > 0;
            boolean z3 = iArr[2].length + iArr[3].length > 0;
            boolean z4 = iArr[4].length + iArr[5].length > 0;
            if (z3) {
                bundle = dev.duo.hookprobe.A.a(context);
            } else {
                bundle = new android.os.Bundle();
            }
            int i4 = 1;
            a(context, z2, z4, bundle.getLong("next", Long.MAX_VALUE));
            android.os.Bundle[] bundleArr = new android.os.Bundle[3];
            if (z2 && (i2 < 0 || i2 / 2 == 0)) {
                bundleArr[0] = dev.duo.hookprobe.A.a(context, a(context, "battery"));
            }
            bundleArr[1] = bundle;
            if (z4 && (i2 < 0 || i2 / 2 == 2)) {
                bundleArr[2] = dev.duo.hookprobe.A.a(a(context, "weather"));
            }
            int i5 = 0;
            while (i5 < c.length) {
                if (i2 >= 0 && i5 != i2) {
                    str = str3;
                } else if (iArr[i5].length == 0) {
                    str = str3;
                } else {
                    android.graphics.Bitmap a2 = dev.duo.hookprobe.z.a(d[i5], i5 % 2 == i4 ? true : z, bundleArr[i5 / 2]);
                    try {
                        int[] iArr2 = iArr[i5];
                        int length = iArr2.length;
                        for (?? r13 = z; r13 < length; r13++) {
                            int i6 = iArr2[r13];
                            android.os.Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i6);
                            boolean z5 = appWidgetOptions.getBoolean(str3, z);
                            appWidgetOptions.putBoolean(str3, !z5);
                            appWidgetManager.updateAppWidgetOptions(i6, appWidgetOptions);
                            android.widget.RemoteViews remoteViews = new android.widget.RemoteViews(context.getPackageName(), !z5 ? dev.duo.workspaceprobe.b.R.layout.info_widget_b : dev.duo.workspaceprobe.b.R.layout.info_widget);
                            remoteViews.setImageViewBitmap(dev.duo.workspaceprobe.b.R.id.info_image, a2);
                            remoteViews.setContentDescription(dev.duo.workspaceprobe.b.R.id.info_image, e[i5]);
                            android.content.Intent putExtra = new android.content.Intent(context, (java.lang.Class<?>) dev.duo.hookprobe.InfoWidgetActivity.class).putExtra("type", i5);
                            if (i5 / 2 == 1) {
                                str2 = str3;
                                intent = new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.android.calendar", "com.android.calendar.homepage.AllInOneActivity").addFlags(268435456);
                            } else {
                                str2 = str3;
                                if (i5 / 2 == 2) {
                                    intent = new android.content.Intent("com.miui.weather.widget_weather_detail").setClassName("com.miui.weather2", "com.miui.weather2.ActivityWeatherMain").putExtra("localId", "").putExtra("cityId", bundleArr[2].getString("cityId", "")).addFlags(270532608);
                                } else {
                                    intent = putExtra;
                                    remoteViews.setOnClickPendingIntent(dev.duo.workspaceprobe.b.R.id.info_image, android.app.PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
                                    appWidgetManager.updateAppWidget(i6, remoteViews);
                                    str3 = str2;
                                    z = false;
                                }
                            }
                            remoteViews.setOnClickPendingIntent(dev.duo.workspaceprobe.b.R.id.info_image, android.app.PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
                            appWidgetManager.updateAppWidget(i6, remoteViews);
                            str3 = str2;
                            z = false;
                        }
                        str = str3;
                    } finally {
                    }
                }
                i5++;
                i2 = i;
                str3 = str;
                z = false;
                i4 = 1;
            }
        } catch (java.lang.InterruptedException e2) {
            java.lang.Thread.currentThread().interrupt();
            android.util.Log.w("MiDuoWidgets", "widget update interrupted", e2);
        } finally {
            pendingResult.finish();
        }
    }

    static android.os.Bundle a(android.content.Context context, java.lang.String str) throws java.lang.InterruptedException {
        android.os.Bundle bundle;
        java.util.concurrent.CountDownLatch countDownLatch = new java.util.concurrent.CountDownLatch(1);
        android.os.Bundle[] bundleArr = new android.os.Bundle[1];
        context.sendOrderedBroadcast(new android.content.Intent("dev.duo.hookprobe.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", str), (java.lang.String) null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), new dev.duo.hookprobe.InfoWidgetProvider.a(bundleArr, countDownLatch), new android.os.Handler(android.os.Looper.getMainLooper()), 0, (java.lang.String) null, (android.os.Bundle) null);
        if (countDownLatch.await(3L, java.util.concurrent.TimeUnit.SECONDS) && (bundle = bundleArr[0]) != null) {
            return bundle;
        }
        android.os.Bundle bundle2 = new android.os.Bundle();
        bundle2.putString("error", "系统数据服务未响应");
        return bundle2;
    }

    private static void a(android.content.Context context, boolean z, boolean z2, long j) {
        context.sendOrderedBroadcast(new android.content.Intent("dev.duo.hookprobe.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", "sync").putExtra("batteryActive", z).putExtra("weatherActive", z2).putExtra("calendarNext", j), (java.lang.String) null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), (android.content.BroadcastReceiver) null, (android.os.Handler) null, 0, (java.lang.String) null, (android.os.Bundle) null);
    }
}
