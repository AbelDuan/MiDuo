package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class d {
    static final java.lang.String a = "dev.duo.hookprobe.INFO_WIDGET_REQUEST";
    private static final java.lang.String b = "dev.duo.hookprobe.INFO_WIDGET_CHANGED";
    private static final java.lang.String c = "dev.duo.hookprobe";
    private static final android.os.Handler d;
    private static final java.util.concurrent.ExecutorService e;
    private static android.content.Context f = null;
    private static boolean g = false;
    private static boolean h = false;
    private static long i = 0;
    private static java.lang.String j = null;
    private static final long k = 1500;
    private static final long l = 3000;
    private static volatile long m;
    private static final java.lang.Runnable n;
    private static final android.database.ContentObserver o;
    private static final android.content.BroadcastReceiver p;

    class a extends android.database.ContentObserver {
        a(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (android.os.SystemClock.uptimeMillis() < dev.duo.workspaceprobe.d.m) {
                return;
            }
            dev.duo.workspaceprobe.d.d.removeCallbacks(dev.duo.workspaceprobe.d.n);
            dev.duo.workspaceprobe.d.d.postDelayed(dev.duo.workspaceprobe.d.n, dev.duo.workspaceprobe.d.k);
        }
    }

    class b extends android.content.BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            dev.duo.workspaceprobe.d.i();
        }
    }

    class c extends android.content.BroadcastReceiver {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(java.lang.String str, android.content.BroadcastReceiver.PendingResult pendingResult) {
            android.os.Bundle bundle = new android.os.Bundle();
            try {
                if ("battery".equals(str)) {
                    bundle.putBundle("batteryDevices", dev.duo.workspaceprobe.d.b("content://com.miui.securitycenter.widgetProvider/getWearableAndHeadSetData", false));
                }
                if ("weather".equals(str)) {
                    long unused = dev.duo.workspaceprobe.d.m = android.os.SystemClock.uptimeMillis() + dev.duo.workspaceprobe.d.l;
                    bundle.putBundle("weatherCurrent", dev.duo.workspaceprobe.d.b("content://weather/weatherData/4/", false));
                    bundle.putBundle("weatherHourly", dev.duo.workspaceprobe.d.b("content://weather/hourlyData/4/", false));
                    long unused2 = dev.duo.workspaceprobe.d.m = android.os.SystemClock.uptimeMillis() + dev.duo.workspaceprobe.d.l;
                }
                if ("probe".equals(str)) {
                    bundle.putBundle("weatherCurrent", dev.duo.workspaceprobe.d.b("content://weather/weatherData/4/", true));
                    bundle.putBundle("weatherLegacy", dev.duo.workspaceprobe.d.b("content://weather/actualWeatherData/1", true));
                    bundle.putBundle("weatherSelectedCity", dev.duo.workspaceprobe.d.b("content://weather/selected_city", true));
                    bundle.putBundle("weatherTable", dev.duo.workspaceprobe.d.b("content://weather/weather", true));
                }
                if (dev.duo.workspaceprobe.d.j != null) {
                    bundle.putString("refreshError", dev.duo.workspaceprobe.d.j);
                }
                pendingResult.setResultCode(-1);
                pendingResult.setResultExtras(bundle);
            } finally {
                pendingResult.finish();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if ("dev.duo.hookprobe".equals(getSentFromPackage())) {
                if (intent.hasExtra("batteryActive")) {
                    dev.duo.workspaceprobe.d.b(intent);
                }
                final java.lang.String stringExtra = intent.getStringExtra("kind");
                if ("sync".equals(stringExtra)) {
                    setResultCode(-1);
                } else {
                    final android.content.BroadcastReceiver.PendingResult goAsync = goAsync();
                    dev.duo.workspaceprobe.d.e.execute(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.d$c$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.workspaceprobe.d.c.a(stringExtra, goAsync);
                        }
                    });
                }
            }
        }
    }

    static {
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        d = handler;
        e = java.util.concurrent.Executors.newSingleThreadExecutor();
        i = Long.MAX_VALUE;
        n = new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.d$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.workspaceprobe.d.i();
            }
        };
        o = new dev.duo.workspaceprobe.d.a(handler);
        p = new dev.duo.workspaceprobe.d.b();
    }

    d() {
    }

    static void g() {
        if (g) {
            i();
        }
    }

    static void h() {
        if (java.lang.System.currentTimeMillis() >= i) {
            i = Long.MAX_VALUE;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i() {
        android.content.Context context = f;
        if (context == null) {
            return;
        }
        context.sendBroadcast(new android.content.Intent(b).setClassName("dev.duo.hookprobe", "dev.duo.hookprobe.InfoWidgetProvider"), null, android.app.BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static android.os.Bundle b(java.lang.String str, boolean z) {
        android.database.Cursor query;
        android.os.Bundle bundle = new android.os.Bundle();
        try {
            query = f.getContentResolver().query(android.net.Uri.parse(str), null, null, null, null);
            try {
            } finally {
            }
        } catch (java.lang.RuntimeException e2) {
            bundle.clear();
            if (z) {
                bundle.putString("error", e2.getClass().getSimpleName());
            } else {
                bundle.putString("error", e2.getClass().getSimpleName() + ": " + e2.getMessage());
                android.util.Log.w("MiDuoWidgets", "widget query failed: " + str, e2);
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
        java.util.ArrayList<? extends android.os.Parcelable> arrayList = new java.util.ArrayList<>();
        while (arrayList.size() < 48 && query.moveToNext()) {
            android.os.Bundle bundle2 = new android.os.Bundle();
            for (int i2 = 0; i2 < query.getColumnCount(); i2++) {
                if (!query.isNull(i2)) {
                    java.lang.String columnName = query.getColumnName(i2);
                    if (!z || columnName.toLowerCase(java.util.Locale.ROOT).matches("(city_?id|city_?name|local_?id|posid|_?id|name|position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)")) {
                        java.util.Locale locale = java.util.Locale.ROOT;
                        if (!columnName.toLowerCase(locale).matches(".*(latitude|longitude|address|mac|device_name|icon).*") && query.getType(i2) != 4) {
                            java.lang.String string = query.getString(i2);
                            if ((!z || (!string.startsWith("{") && !string.startsWith("["))) && (!z || !columnName.toLowerCase(locale).matches("(position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)") || string.matches("-?[0-9]+|true|false"))) {
                                if (string.length() > 16000) {
                                    throw new java.lang.IllegalStateException("原生字段过大: " + columnName);
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

    static void a(android.content.Context context) {
        if (f != null) {
            return;
        }
        f = context;
        context.registerReceiver(new dev.duo.workspaceprobe.d.c(), new android.content.IntentFilter(a), null, d, 2);
        i();
        android.util.Log.i("MiDuoWidgets", "SystemUI widget data bridge ready");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(android.content.Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("batteryActive", false);
        boolean booleanExtra2 = intent.getBooleanExtra("weatherActive", false);
        i = intent.getLongExtra("calendarNext", Long.MAX_VALUE);
        try {
            if (booleanExtra != g) {
                if (booleanExtra) {
                    android.content.IntentFilter intentFilter = new android.content.IntentFilter("android.bluetooth.device.action.BATTERY_LEVEL_CHANGED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
                    intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
                    f.registerReceiver(p, intentFilter, null, d, 2);
                } else {
                    f.unregisterReceiver(p);
                }
                g = booleanExtra;
            }
            if (booleanExtra2 != h) {
                if (booleanExtra2) {
                    f.getContentResolver().registerContentObserver(android.net.Uri.parse("content://weather"), true, o);
                } else {
                    f.getContentResolver().unregisterContentObserver(o);
                }
                h = booleanExtra2;
            }
            j = null;
        } catch (java.lang.RuntimeException e2) {
            j = e2.getClass().getSimpleName() + ": " + e2.getMessage();
            android.util.Log.w("MiDuoWidgets", "widget change subscription failed", e2);
        }
    }
}
