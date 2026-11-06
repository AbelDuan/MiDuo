package dev.duo.workspaceprobe;

import android.app.BroadcastOptions;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import dev.duo.workspaceprobe.InfoWidgetRelay;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: dev.duo.workspaceprobe.d */
/* loaded from: classes.dex */
final class InfoWidgetRelay {

    /* renamed from: a */
    static final String f2792a = "dev.duo.hookprobe.INFO_WIDGET_REQUEST";

    /* renamed from: b */
    private static final String f2793b = "dev.duo.hookprobe.INFO_WIDGET_CHANGED";

    /* renamed from: c */
    private static final String f2794c = "dev.duo.hookprobe";

    /* renamed from: d */
    private static final Handler f2795d;

    /* renamed from: e */
    private static final ExecutorService f2796e;

    /* renamed from: f */
    private static Context f2797f;

    /* renamed from: g */
    private static boolean f2798g;

    /* renamed from: h */
    private static boolean f2799h;

    /* renamed from: i */
    private static long f2800i;

    /* renamed from: j */
    private static String f2801j;

    /* renamed from: k */
    private static final ContentObserver f2802k;

    /* renamed from: l */
    private static final BroadcastReceiver f2803l;

    /* renamed from: dev.duo.workspaceprobe.d$a */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            InfoWidgetRelay.m2915f();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.d$b */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            InfoWidgetRelay.m2915f();
        }
    }

    /* renamed from: dev.duo.workspaceprobe.d$c */
    class c extends BroadcastReceiver {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static /* synthetic */ void m2916a(String str, BroadcastReceiver.PendingResult pendingResult) {
            Bundle bundle = new Bundle();
            try {
                if ("battery".equals(str)) {
                    bundle.putBundle("batteryDevices", InfoWidgetRelay.m2909b("content://com.miui.securitycenter.widgetProvider/getWearableAndHeadSetData", false));
                }
                if ("weather".equals(str)) {
                    bundle.putBundle("weatherCurrent", InfoWidgetRelay.m2909b("content://weather/weatherData/4/", false));
                    bundle.putBundle("weatherHourly", InfoWidgetRelay.m2909b("content://weather/hourlyData/4/", false));
                }
                if ("probe".equals(str)) {
                    bundle.putBundle("weatherCurrent", InfoWidgetRelay.m2909b("content://weather/weatherData/4/", true));
                    bundle.putBundle("weatherLegacy", InfoWidgetRelay.m2909b("content://weather/actualWeatherData/1", true));
                    bundle.putBundle("weatherSelectedCity", InfoWidgetRelay.m2909b("content://weather/selected_city", true));
                    bundle.putBundle("weatherTable", InfoWidgetRelay.m2909b("content://weather/weather", true));
                }
                if (InfoWidgetRelay.f2801j != null) {
                    bundle.putString("refreshError", InfoWidgetRelay.f2801j);
                }
                pendingResult.setResultCode(-1);
                pendingResult.setResultExtras(bundle);
            } finally {
                pendingResult.finish();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("dev.duo.hookprobe".equals(getSentFromPackage())) {
                if (intent.hasExtra("batteryActive")) {
                    InfoWidgetRelay.m2911b(intent);
                }
                final String stringExtra = intent.getStringExtra("kind");
                if ("sync".equals(stringExtra)) {
                    setResultCode(-1);
                } else {
                    final BroadcastReceiver.PendingResult goAsync = goAsync();
                    InfoWidgetRelay.f2796e.execute(new Runnable() { // from class: dev.duo.workspaceprobe.d$c$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            InfoWidgetRelay.c.m2916a(stringExtra, goAsync);
                        }
                    });
                }
            }
        }
    }

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        f2795d = handler;
        f2796e = Executors.newSingleThreadExecutor();
        f2800i = Long.MAX_VALUE;
        f2802k = new a(handler);
        f2803l = new b();
    }

    InfoWidgetRelay() {
    }

    /* renamed from: d */
    static void m2913d() {
        if (f2798g) {
            m2915f();
        }
    }

    /* renamed from: e */
    static void m2914e() {
        if (System.currentTimeMillis() >= f2800i) {
            f2800i = Long.MAX_VALUE;
            m2915f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m2915f() {
        Context context = f2797f;
        if (context == null) {
            return;
        }
        context.sendBroadcast(new Intent(f2793b).setClassName("dev.duo.hookprobe", "dev.duo.hookprobe.InfoWidgetProvider"), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Bundle m2909b(String str, boolean z) {
        Cursor query;
        Bundle bundle = new Bundle();
        try {
            query = f2797f.getContentResolver().query(Uri.parse(str), null, null, null, null);
            try {
            } finally {
            }
        } catch (RuntimeException e) {
            bundle.clear();
            if (z) {
                bundle.putString("error", e.getClass().getSimpleName());
            } else {
                bundle.putString("error", e.getClass().getSimpleName() + ": " + e.getMessage());
                Log.w("MiDuoWidgets", "widget query failed: " + str, e);
            }
        }
        if (query == null) {
            bundle.putString("error", "原生接口返回空游标");
            if (query != null) {
                query.close();
                return bundle;
            }
            return bundle;
        }
        bundle.putStringArray("columns", query.getColumnNames());
        bundle.putInt("count", query.getCount());
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        while (arrayList.size() < 48 && query.moveToNext()) {
            Bundle bundle2 = new Bundle();
            for (int i = 0; i < query.getColumnCount(); i++) {
                if (!query.isNull(i)) {
                    String columnName = query.getColumnName(i);
                    if (!z || columnName.toLowerCase(Locale.ROOT).matches("(city_?id|city_?name|local_?id|posid|_?id|name|position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)")) {
                        Locale locale = Locale.ROOT;
                        if (!columnName.toLowerCase(locale).matches(".*(latitude|longitude|address|mac|device_name|icon).*") && query.getType(i) != 4) {
                            String string = query.getString(i);
                            if ((!z || (!string.startsWith("{") && !string.startsWith("["))) && (!z || !columnName.toLowerCase(locale).matches("(position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)") || string.matches("-?[0-9]+|true|false"))) {
                                if (string.length() > 16000) {
                                    throw new IllegalStateException("原生字段过大: " + columnName);
                                }
                                bundle2.putString(columnName, string);
                            }
                        }
                    }
                }
            }
            arrayList.add(bundle2);
        }
        bundle.putParcelableArrayList("rows", arrayList);
        query.close();
        return bundle;
    }

    /* renamed from: a */
    static void m2907a(Context context) {
        if (f2797f != null) {
            return;
        }
        f2797f = context;
        context.registerReceiver(new c(), new IntentFilter(f2792a), null, f2795d, 2);
        m2915f();
        Log.i("MiDuoWidgets", "SystemUI widget data bridge ready");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m2911b(Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("batteryActive", false);
        boolean booleanExtra2 = intent.getBooleanExtra("weatherActive", false);
        f2800i = intent.getLongExtra("calendarNext", Long.MAX_VALUE);
        try {
            if (booleanExtra != f2798g) {
                if (booleanExtra) {
                    IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.BATTERY_LEVEL_CHANGED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
                    f2797f.registerReceiver(f2803l, intentFilter, null, f2795d, 2);
                } else {
                    f2797f.unregisterReceiver(f2803l);
                }
                f2798g = booleanExtra;
            }
            if (booleanExtra2 != f2799h) {
                if (booleanExtra2) {
                    f2797f.getContentResolver().registerContentObserver(Uri.parse("content://weather"), true, f2802k);
                } else {
                    f2797f.getContentResolver().unregisterContentObserver(f2802k);
                }
                f2799h = booleanExtra2;
            }
            f2801j = null;
        } catch (RuntimeException e) {
            f2801j = e.getClass().getSimpleName() + ": " + e.getMessage();
            Log.w("MiDuoWidgets", "widget change subscription failed", e);
        }
    }
}
