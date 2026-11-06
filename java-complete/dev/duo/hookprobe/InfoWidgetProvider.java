package dev.duo.hookprobe;

import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.RemoteViews;
import dev.duo.hookprobe.H;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public class InfoWidgetProvider extends AppWidgetProvider {
    static final String a = "com.lsposed.miduo.INFO_WIDGET_CHANGED";
    static final String b = "com.lsposed.miduo.INFO_WIDGET_REFRESH";
    static final Class<?>[] c = {BatterySmall.class, BatteryMedium.class, CalendarSmall.class, CalendarMedium.class, WeatherSmall.class, WeatherMedium.class};
    static final String[] d = {"battery", "battery", "calendar", "calendar", "weather", "weather"};
    static final String[] e = {"电池 · 2×2", "电池 · 4×2", "日历 · 2×2", "日历 · 4×2", "天气 · 2×2", "天气 · 4×2"};
    private static final ExecutorService f = Executors.newSingleThreadExecutor();

    public static final class BatteryMedium extends InfoWidgetProvider {
    }

    public static final class BatterySmall extends InfoWidgetProvider {
    }

    public static final class CalendarMedium extends InfoWidgetProvider {
    }

    public static final class CalendarSmall extends InfoWidgetProvider {
    }

    public static final class WeatherMedium extends InfoWidgetProvider {
    }

    public static final class WeatherSmall extends InfoWidgetProvider {
    }

    class a extends BroadcastReceiver {
        final /* synthetic */ Bundle[] a;
        final /* synthetic */ CountDownLatch b;

        a(Bundle[] bundleArr, CountDownLatch countDownLatch) {
            this.a = bundleArr;
            this.b = countDownLatch;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (getResultCode() == -1) {
                this.a[0] = getResultExtras(false);
            }
            this.b.countDown();
        }
    }

    static void a(Context context) {
        context.sendBroadcast(new Intent(b).setClass(context, dev.duo.hookprobe.InfoWidgetProvider.class), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    private void b(Context context) {
        a(context, -1);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        b(context);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (dev.duo.hookprobe.a.equals(action)) {
            if ("com.android.systemui".equals(getSentFromPackage())) {
                b(context);
            }
        } else if (dev.duo.hookprobe.b.equals(action)) {
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
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        int i = 0;
        while (true) {
            Class<?>[] clsArr = c;
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

    private void a(Context context, final int i) {
        final Context applicationContext = context.getApplicationContext();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        dev.duo.hookprobe.f.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InfoWidgetProvider.a(applicationContext, i, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [int] */
    public static /* synthetic */ void a(Context context, int i, BroadcastReceiver.PendingResult pendingResult) {
        Bundle bundle;
        String str;
        String str2;
        Intent intent;
        int i2 = i;
        String str3 = "miduo_info_layout_b";
        try {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int[][] iArr = new int[dev.duo.hookprobe.c.length][];
            boolean z = false;
            int i3 = 0;
            while (true) {
                Class<?>[] clsArr = c;
                if (i3 >= clsArr.length) {
                    break;
                }
                iArr[i3] = appWidgetManager.getAppWidgetIds(new ComponentName(context, clsArr[i3]));
                i3++;
            }
            boolean z2 = iArr[0].length + iArr[1].length > 0;
            boolean z3 = iArr[2].length + iArr[3].length > 0;
            boolean z4 = iArr[4].length + iArr[5].length > 0;
            if (z3) {
                bundle = A.a(context);
            } else {
                bundle = new Bundle();
            }
            int i4 = 1;
            a(context, z2, z4, bundle.getLong("next", Long.MAX_VALUE));
            Bundle[] bundleArr = new Bundle[3];
            if (z2 && (i2 < 0 || i2 / 2 == 0)) {
                bundleArr[0] = A.a(context, a(context, "battery"));
            }
            bundleArr[1] = bundle;
            if (z4 && (i2 < 0 || i2 / 2 == 2)) {
                bundleArr[2] = A.a(a(context, "weather"));
            }
            int i5 = 0;
            while (i5 < dev.duo.hookprobe.c.length) {
                if (i2 >= 0 && i5 != i2) {
                    str = str3;
                } else if (iArr[i5].length == 0) {
                    str = str3;
                } else {
                    Bitmap a2 = z.a(d[i5], i5 % 2 == i4 ? true : z, bundleArr[i5 / 2]);
                    try {
                        int[] iArr2 = iArr[i5];
                        int length = iArr2.length;
                        for (int r13 = z; r13 < length; r13++) {
                            int i6 = iArr2[r13];
                            Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i6);
                            boolean z5 = appWidgetOptions.getBoolean(str3, z);
                            appWidgetOptions.putBoolean(str3, !z5);
                            appWidgetManager.updateAppWidgetOptions(i6, appWidgetOptions);
                            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), !z5 ? H.d.d : H.d.c);
                            remoteViews.setImageViewBitmap(H.c.d, a2);
                            remoteViews.setContentDescription(H.c.d, e[i5]);
                            Intent putExtra = new Intent(context, (Class<?>) dev.duo.hookprobe.InfoWidgetActivity.class).putExtra("type", i5);
                            if (i5 / 2 == 1) {
                                str2 = str3;
                                intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.android.calendar", "com.android.calendar.homepage.AllInOneActivity").addFlags(268435456);
                            } else {
                                str2 = str3;
                                if (i5 / 2 == 2) {
                                    intent = new Intent("com.miui.weather.widget_weather_detail").setClassName("com.miui.weather2", "com.miui.weather2.ActivityWeatherMain").putExtra("localId", "").putExtra("cityId", bundleArr[2].getString("cityId", "")).addFlags(270532608);
                                } else {
                                    intent = putExtra;
                                    remoteViews.setOnClickPendingIntent(H.c.d, PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
                                    appWidgetManager.updateAppWidget(i6, remoteViews);
                                    str3 = str2;
                                    z = false;
                                }
                            }
                            remoteViews.setOnClickPendingIntent(H.c.d, PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
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
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            Log.w("MiDuoWidgets", "widget update interrupted", e2);
        } finally {
            pendingResult.finish();
        }
    }

    static Bundle a(Context context, String str) throws InterruptedException {
        Bundle bundle;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Bundle[] bundleArr = new Bundle[1];
        context.sendOrderedBroadcast(new Intent("com.lsposed.miduo.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", str), (String) null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), new a(bundleArr, countDownLatch), new Handler(Looper.getMainLooper()), 0, (String) null, (Bundle) null);
        if (countDownLatch.await(3L, TimeUnit.SECONDS) && (bundle = bundleArr[0]) != null) {
            return bundle;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("error", "系统数据服务未响应");
        return bundle2;
    }

    private static void a(Context context, boolean z, boolean z2, long j) {
        context.sendOrderedBroadcast(new Intent("com.lsposed.miduo.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", "sync").putExtra("batteryActive", z).putExtra("weatherActive", z2).putExtra("calendarNext", j), (String) null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), (BroadcastReceiver) null, (Handler) null, 0, (String) null, (Bundle) null);
    }
}
