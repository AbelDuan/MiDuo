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
import dev.duo.workspaceprobe.b.R;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class InfoWidgetProvider extends AppWidgetProvider {

    /* renamed from: a */
    static final String f905a = "dev.duo.hookprobe.INFO_WIDGET_CHANGED";

    /* renamed from: b */
    static final String f906b = "dev.duo.hookprobe.INFO_WIDGET_REFRESH";

    /* renamed from: c */
    static final Class<?>[] f907c = {BatterySmall.class, BatteryMedium.class, CalendarSmall.class, CalendarMedium.class, WeatherSmall.class, WeatherMedium.class};

    /* renamed from: d */
    static final String[] f908d = {"battery", "battery", "calendar", "calendar", "weather", "weather"};

    /* renamed from: e */
    static final String[] f909e = {"电池 · 2×2", "电池 · 4×2", "日历 · 2×2", "日历 · 4×2", "天气 · 2×2", "天气 · 4×2"};

    /* renamed from: f */
    private static final ExecutorService f910f = Executors.newSingleThreadExecutor();

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

    /* renamed from: dev.duo.hookprobe.InfoWidgetProvider$a */
    class C0053a extends BroadcastReceiver {

        /* renamed from: a */
        final /* synthetic */ Bundle[] f911a;

        /* renamed from: b */
        final /* synthetic */ CountDownLatch f912b;

        C0053a(Bundle[] bundleArr, CountDownLatch countDownLatch) {
            this.f911a = bundleArr;
            this.f912b = countDownLatch;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (getResultCode() == -1) {
                this.f911a[0] = getResultExtras(false);
            }
            this.f912b.countDown();
        }
    }

    /* renamed from: a */
    static void m913a(Context context) {
        context.sendBroadcast(new Intent(f906b).setClass(context, InfoWidgetProvider.class), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    /* renamed from: b */
    private void m917b(Context context) {
        m914a(context, -1);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        m917b(context);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (f905a.equals(action)) {
            if ("com.android.systemui".equals(getSentFromPackage())) {
                m917b(context);
            }
        } else if (f906b.equals(action)) {
            if (context.getPackageName().equals(getSentFromPackage())) {
                m917b(context);
            }
        } else if ("android.intent.action.MY_PACKAGE_REPLACED".equals(action) || "android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action) || "miui.appwidget.action.APPWIDGET_UPDATE".equals(action)) {
            m917b(context);
        } else {
            super.onReceive(context, intent);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        int i = 0;
        while (true) {
            Class<?>[] clsArr = f907c;
            if (i >= clsArr.length) {
                return;
            }
            if (clsArr[i] == getClass()) {
                m914a(context, i);
                return;
            }
            i++;
        }
    }

    /* renamed from: a */
    private void m914a(Context context, final int i) {
        final Context applicationContext = context.getApplicationContext();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        f910f.execute(new Runnable() { // from class: dev.duo.hookprobe.InfoWidgetProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InfoWidgetProvider.m915a(applicationContext, i, goAsync);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [int] */
    /* renamed from: a */
    public static /* synthetic */ void m915a(Context context, int i, BroadcastReceiver.PendingResult pendingResult) {
        Bundle bundle;
        String str;
        String str2;
        Intent intent;
        int i2 = i;
        String str3 = "miduo_info_layout_b";
        try {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int[][] iArr = new int[f907c.length][];
            boolean z = false;
            int i3 = 0;
            while (true) {
                Class<?>[] clsArr = f907c;
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
                bundle = C0041A.m745a(context);
            } else {
                bundle = new Bundle();
            }
            int i4 = 1;
            m916a(context, z2, z4, bundle.getLong("next", Long.MAX_VALUE));
            Bundle[] bundleArr = new Bundle[3];
            if (z2 && (i2 < 0 || i2 / 2 == 0)) {
                bundleArr[0] = C0041A.m746a(context, m912a(context, "battery"));
            }
            bundleArr[1] = bundle;
            if (z4 && (i2 < 0 || i2 / 2 == 2)) {
                bundleArr[2] = C0041A.m747a(m912a(context, "weather"));
            }
            int i5 = 0;
            while (i5 < f907c.length) {
                if (i2 >= 0 && i5 != i2) {
                    str = str3;
                } else if (iArr[i5].length == 0) {
                    str = str3;
                } else {
                    Bitmap m2046a = C0124z.m2046a(f908d[i5], i5 % 2 == i4 ? true : z, bundleArr[i5 / 2]);
                    try {
                        int[] iArr2 = iArr[i5];
                        int length = iArr2.length;
                        for (int r13 = 0; r13 < length; r13++) {
                            int i6 = iArr2[r13];
                            Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i6);
                            boolean z5 = appWidgetOptions.getBoolean(str3, z);
                            appWidgetOptions.putBoolean(str3, !z5);
                            appWidgetManager.updateAppWidgetOptions(i6, appWidgetOptions);
                            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), !z5 ? R.layout.info_widget_b : R.layout.info_widget);
                            remoteViews.setImageViewBitmap(R.C0161id.info_image, m2046a);
                            remoteViews.setContentDescription(R.C0161id.info_image, f909e[i5]);
                            Intent putExtra = new Intent(context, (Class<?>) InfoWidgetActivity.class).putExtra("type", i5);
                            if (i5 / 2 == 1) {
                                str2 = str3;
                                intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.android.calendar", "com.android.calendar.homepage.AllInOneActivity").addFlags(268435456);
                            } else {
                                str2 = str3;
                                if (i5 / 2 == 2) {
                                    intent = new Intent("com.miui.weather.widget_weather_detail").setClassName("com.miui.weather2", "com.miui.weather2.ActivityWeatherMain").putExtra("localId", "").putExtra("cityId", bundleArr[2].getString("cityId", "")).addFlags(270532608);
                                } else {
                                    intent = putExtra;
                                    remoteViews.setOnClickPendingIntent(R.C0161id.info_image, PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
                                    appWidgetManager.updateAppWidget(i6, remoteViews);
                                    str3 = str2;
                                    z = false;
                                }
                            }
                            remoteViews.setOnClickPendingIntent(R.C0161id.info_image, PendingIntent.getActivity(context, 39600 + i5, intent, 201326592));
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
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Log.w("MiDuoWidgets", "widget update interrupted", e);
        } finally {
            pendingResult.finish();
        }
    }

    /* renamed from: a */
    static Bundle m912a(Context context, String str) throws InterruptedException {
        Bundle bundle;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Bundle[] bundleArr = new Bundle[1];
        context.sendOrderedBroadcast(new Intent("dev.duo.hookprobe.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", str), (String) null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), new C0053a(bundleArr, countDownLatch), new Handler(Looper.getMainLooper()), 0, (String) null, (Bundle) null);
        if (countDownLatch.await(3L, TimeUnit.SECONDS) && (bundle = bundleArr[0]) != null) {
            return bundle;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("error", "系统数据服务未响应");
        return bundle2;
    }

    /* renamed from: a */
    private static void m916a(Context context, boolean z, boolean z2, long j) {
        context.sendOrderedBroadcast(new Intent("dev.duo.hookprobe.INFO_WIDGET_REQUEST").setPackage("com.android.systemui").putExtra("kind", "sync").putExtra("batteryActive", z).putExtra("weatherActive", z2).putExtra("calendarNext", j), (String) null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle(), (BroadcastReceiver) null, (Handler) null, 0, (String) null, (Bundle) null);
    }
}
