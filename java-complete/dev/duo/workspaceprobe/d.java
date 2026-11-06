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
import dev.duo.workspaceprobe.d;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class d {
    static final String a = "com.lsposed.miduo.INFO_WIDGET_REQUEST";
    private static final String b = "com.lsposed.miduo.INFO_WIDGET_CHANGED";
    private static final String c = "com.lsposed.miduo";
    private static final Handler d;
    private static final ExecutorService e;
    private static Context f;
    private static boolean g;
    private static boolean h;
    private static long i;
    private static String j;
    private static final ContentObserver k;
    private static final BroadcastReceiver l;

    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            dev.duo.workspaceprobe.d.f();
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            dev.duo.workspaceprobe.d.f();
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, BroadcastReceiver.PendingResult pendingResult) {
            Bundle bundle = new Bundle();
            try {
                if ("battery".equals(str)) {
                    bundle.putBundle("batteryDevices", d.b("content://com.miui.securitycenter.widgetProvider/getWearableAndHeadSetData", false));
                }
                if ("weather".equals(str)) {
                    bundle.putBundle("weatherCurrent", d.b("content://weather/weatherData/4/", false));
                    bundle.putBundle("weatherHourly", d.b("content://weather/hourlyData/4/", false));
                }
                if ("probe".equals(str)) {
                    bundle.putBundle("weatherCurrent", d.b("content://weather/weatherData/4/", true));
                    bundle.putBundle("weatherLegacy", d.b("content://weather/actualWeatherData/1", true));
                    bundle.putBundle("weatherSelectedCity", d.b("content://weather/selected_city", true));
                    bundle.putBundle("weatherTable", d.b("content://weather/weather", true));
                }
                if (d.j != null) {
                    bundle.putString("refreshError", d.j);
                }
                pendingResult.setResultCode(-1);
                pendingResult.setResultExtras(bundle);
            } finally {
                pendingResult.finish();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.lsposed.miduo".equals(getSentFromPackage())) {
                if (intent.hasExtra("batteryActive")) {
                    d.b(intent);
                }
                final String stringExtra = intent.getStringExtra("kind");
                if ("sync".equals(stringExtra)) {
                    setResultCode(-1);
                } else {
                    final BroadcastReceiver.PendingResult goAsync = goAsync();
                    d.e.execute(new Runnable() { // from class: dev.duo.workspaceprobe.d$c$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.c.a(stringExtra, goAsync);
                        }
                    });
                }
            }
        }
    }

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        d = handler;
        e = Executors.newSingleThreadExecutor();
        i = Long.MAX_VALUE;
        k = new a(handler);
        l = new b();
    }

    d() {
    }

    static void d() {
        if (g) {
            f();
        }
    }

    static void e() {
        if (System.currentTimeMillis() >= i) {
            i = Long.MAX_VALUE;
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        Context context = f;
        if (context == null) {
            return;
        }
        context.sendBroadcast(new Intent(b).setClassName("com.lsposed.miduo", "dev.duo.hookprobe.InfoWidgetProvider"), null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle b(String str, boolean z) {
        Cursor query;
        Bundle bundle = new Bundle();
        try {
            query = f.getContentResolver().query(Uri.parse(str), null, null, null, null);
            try {
            } finally {
            }
        } catch (RuntimeException e2) {
            bundle.clear();
            if (z) {
                bundle.putString("error", e2.getClass().getSimpleName());
            } else {
                bundle.putString("error", e2.getClass().getSimpleName() + ": " + e2.getMessage());
                Log.w("MiDuoWidgets", "widget query failed: " + str, e2);
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
            for (int i2 = 0; i2 < query.getColumnCount(); i2++) {
                if (!query.isNull(i2)) {
                    String columnName = query.getColumnName(i2);
                    if (!z || columnName.toLowerCase(Locale.ROOT).matches("(city_?id|city_?name|local_?id|posid|_?id|name|position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)")) {
                        Locale locale = Locale.ROOT;
                        if (!columnName.toLowerCase(locale).matches(".*(latitude|longitude|address|mac|device_name|icon).*") && query.getType(i2) != 4) {
                            String string = query.getString(i2);
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

    static void a(Context context) {
        if (f != null) {
            return;
        }
        f = context;
        context.registerReceiver(new c(), new IntentFilter(a), null, d, 2);
        f();
        Log.i("MiDuoWidgets", "SystemUI widget data bridge ready");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("batteryActive", false);
        boolean booleanExtra2 = intent.getBooleanExtra("weatherActive", false);
        i = intent.getLongExtra("calendarNext", Long.MAX_VALUE);
        try {
            if (booleanExtra != g) {
                if (booleanExtra) {
                    IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.BATTERY_LEVEL_CHANGED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
                    f.registerReceiver(l, intentFilter, null, d, 2);
                } else {
                    f.unregisterReceiver(l);
                }
                g = booleanExtra;
            }
            if (booleanExtra2 != h) {
                if (booleanExtra2) {
                    f.getContentResolver().registerContentObserver(Uri.parse("content://weather"), true, k);
                } else {
                    f.getContentResolver().unregisterContentObserver(k);
                }
                h = booleanExtra2;
            }
            j = null;
        } catch (RuntimeException e2) {
            j = e2.getClass().getSimpleName() + ": " + e2.getMessage();
            Log.w("MiDuoWidgets", "widget change subscription failed", e2);
        }
    }
}
