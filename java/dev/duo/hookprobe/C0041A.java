package dev.duo.hookprobe;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.CalendarContract;
import android.util.Log;
import java.time.Instant;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.util.ArrayList;

/* renamed from: dev.duo.hookprobe.A */
/* loaded from: classes.dex */
final class C0041A {
    private C0041A() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[Catch: RuntimeException -> 0x01c9, SYNTHETIC, TRY_LEAVE, TryCatch #4 {RuntimeException -> 0x01c9, blocks: (B:77:0x01c8, B:76:0x01c5, B:88:0x01a1, B:72:0x01c0), top: B:14:0x00a2, inners: #0 }] */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v2, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Bundle m745a(Context context) {
        String str;
        String str2;
        Throwable th;
        long j;
        ZoneId zoneId;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        long currentTimeMillis = System.currentTimeMillis();
        bundle2.putLong("now", currentTimeMillis);
        ZoneId systemDefault = ZoneId.systemDefault();
        LocalDate localDate = Instant.ofEpochMilli(currentTimeMillis).atZone(systemDefault).toLocalDate();
        LocalDate plusDays = localDate.plusDays(1L);
        long epochMilli = plusDays.atStartOfDay(systemDefault).toInstant().toEpochMilli();
        String str3 = "next";
        bundle2.putLong("next", epochMilli);
        String str4 = "请允许读取日历";
        String str5 = "error";
        if (context.checkSelfPermission("android.permission.READ_CALENDAR") != 0) {
            bundle2.putString("error", "请允许读取日历");
            return bundle2;
        }
        long epochMilli2 = localDate.atStartOfDay(systemDefault).toInstant().toEpochMilli();
        long epochMilli3 = localDate.plusDays(2L).atStartOfDay(systemDefault).toInstant().toEpochMilli();
        Uri.Builder buildUpon = CalendarContract.Instances.CONTENT_URI.buildUpon();
        ContentUris.appendId(buildUpon, epochMilli2);
        ContentUris.appendId(buildUpon, epochMilli3);
        String str6 = "title";
        String str7 = "end";
        String[] strArr = {"title", "begin", "end", "allDay", "displayColor"};
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        try {
            str2 = context.getContentResolver();
            Cursor query = str2.query(buildUpon.build(), strArr, "visible=1 AND (eventStatus IS NULL OR eventStatus!=2)", null, "begin ASC");
            try {
                if (query == null) {
                    throw new IllegalStateException("日历接口返回空游标");
                }
                while (query.moveToNext()) {
                    try {
                        try {
                            str = str4;
                            str2 = str5;
                            try {
                                j = query.getLong(1);
                                zoneId = systemDefault;
                                bundle = bundle2;
                            } catch (Throwable th2) {
                                th = th2;
                                th = th;
                                str2 = str2;
                                if (query != null) {
                                    throw th;
                                }
                                try {
                                    query.close();
                                    throw th;
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            str = str4;
                            str2 = str5;
                        }
                        try {
                            long j2 = query.getLong(2);
                            boolean z = query.getInt(3) != 0;
                            if (z || j2 > currentTimeMillis) {
                                String str8 = str3;
                                Bundle bundle3 = new Bundle();
                                long j3 = epochMilli;
                                String string = query.getString(0);
                                if (string == null || string.isEmpty()) {
                                    string = "无标题";
                                }
                                bundle3.putString(str6, string);
                                bundle3.putLong("start", j);
                                bundle3.putLong(str7, j2);
                                bundle3.putBoolean("allDay", z);
                                bundle3.putInt("color", query.getInt(4));
                                ZoneId zoneId2 = z ? ZoneOffset.UTC : zoneId;
                                LocalDate localDate2 = Instant.ofEpochMilli(j).atZone(zoneId2).toLocalDate();
                                String str9 = str6;
                                String str10 = str7;
                                LocalDate localDate3 = Instant.ofEpochMilli(Math.max(j, j2 - 1)).atZone(zoneId2).toLocalDate();
                                if (!localDate.isBefore(localDate2) && !localDate.isAfter(localDate3)) {
                                    arrayList.add(bundle3);
                                }
                                if (!plusDays.isBefore(localDate2) && !plusDays.isAfter(localDate3)) {
                                    arrayList2.add(bundle3);
                                }
                                epochMilli = j > currentTimeMillis ? Math.min(j3, j) : j3;
                                if (j2 > currentTimeMillis) {
                                    epochMilli = Math.min(epochMilli, j2);
                                    str6 = str9;
                                    str4 = str;
                                    str5 = str2;
                                    bundle2 = bundle;
                                    systemDefault = zoneId;
                                    str3 = str8;
                                    str7 = str10;
                                } else {
                                    str6 = str9;
                                    str4 = str;
                                    str5 = str2;
                                    bundle2 = bundle;
                                    systemDefault = zoneId;
                                    str3 = str8;
                                    str7 = str10;
                                }
                            } else {
                                str4 = str;
                                str5 = str2;
                                bundle2 = bundle;
                                systemDefault = zoneId;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            bundle2 = bundle;
                            str2 = str2;
                            if (query != null) {
                            }
                        }
                    } catch (RuntimeException e) {
                        e = e;
                        bundle2.putString(str2, e instanceof SecurityException ? str : "日程读取失败");
                        Log.w("MiDuoWidgets", "calendar query failed", e);
                        return bundle2;
                    }
                }
                Bundle bundle4 = bundle2;
                String str11 = str3;
                bundle4.putParcelableArrayList("todayEvents", arrayList);
                bundle4.putParcelableArrayList("tomorrowEvents", arrayList2);
                bundle4.putLong(str11, epochMilli);
                query.close();
                return bundle4;
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (RuntimeException e2) {
            e = e2;
            str = "请允许读取日历";
            str2 = "error";
        }
    }

    /* renamed from: a */
    static Bundle m746a(Context context, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            bundle2.putString("error", "手机电量暂不可用");
        } else {
            int i = -1;
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", 0);
            if (intExtra >= 0 && intExtra2 > 0) {
                i = Math.round((intExtra * 100.0f) / intExtra2);
            }
            bundle2.putInt("phoneLevel", i);
            int intExtra3 = registerReceiver.getIntExtra("status", 1);
            bundle2.putBoolean("charging", registerReceiver.getIntExtra("plugged", 0) != 0 && (intExtra3 == 2 || intExtra3 == 5));
        }
        Bundle bundle3 = bundle.getBundle("batteryDevices");
        if (bundle3 != null && !bundle3.containsKey("error")) {
            ArrayList parcelableArrayList = bundle3.getParcelableArrayList("rows");
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Bundle bundle4 = (Bundle) parcelableArrayList.get(0);
                try {
                    String[][] strArr = {new String[]{"wearableBattery", "wearableLevel"}, new String[]{"headsetBattery", "headsetLevel"}, new String[]{"keyBoardBattery", "keyboardLevel"}, new String[]{"wearableType", "wearableType"}};
                    for (int i2 = 0; i2 < 4; i2++) {
                        String[] strArr2 = strArr[i2];
                        String string = bundle4.getString(strArr2[0]);
                        if (string != null && !string.isEmpty()) {
                            bundle2.putInt(strArr2[1], Integer.parseInt(string));
                        }
                    }
                } catch (NumberFormatException e) {
                    bundle2.putString("deviceError", "设备电量格式不支持");
                    Log.w("MiDuoWidgets", "device battery schema is not numeric", e);
                }
            }
            return bundle2;
        }
        bundle2.putString("deviceError", "设备电量暂不可用");
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00f9 A[Catch: RuntimeException -> 0x0198, TryCatch #0 {RuntimeException -> 0x0198, blocks: (B:11:0x0034, B:13:0x0076, B:17:0x0081, B:19:0x00e1, B:22:0x00e9, B:24:0x00f9, B:29:0x0136, B:35:0x0173, B:39:0x018a, B:45:0x0190), top: B:10:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0181 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Bundle m747a(Bundle bundle) {
        boolean z;
        Bundle bundle2;
        int size;
        int i;
        int i2;
        long j;
        boolean z2;
        Bundle bundle3 = new Bundle();
        Bundle bundle4 = bundle.getBundle("weatherCurrent");
        if (bundle4 != null && !bundle4.containsKey("error")) {
            ArrayList parcelableArrayList = bundle4.getParcelableArrayList("rows");
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                try {
                    Bundle bundle5 = (Bundle) parcelableArrayList.get(0);
                    long currentTimeMillis = System.currentTimeMillis();
                    ZoneId systemDefault = ZoneId.systemDefault();
                    long epochMilli = Instant.ofEpochMilli(currentTimeMillis).atZone(systemDefault).toLocalDate().atStartOfDay(systemDefault).toInstant().toEpochMilli();
                    long parseLong = Long.parseLong(bundle5.getString("sunrise"));
                    long parseLong2 = Long.parseLong(bundle5.getString("sunset"));
                    if (currentTimeMillis >= epochMilli + parseLong && currentTimeMillis < epochMilli + parseLong2) {
                        z = false;
                        bundle3.putBoolean("isNight", z);
                        bundle3.putString("city", bundle5.getString("city_name"));
                        bundle3.putString("cityId", bundle5.getString("city_id"));
                        bundle3.putInt("temperature", m744a(bundle5.getString("temperature")));
                        bundle3.putInt("high", m744a(bundle5.getString("tmphighs")));
                        bundle3.putInt("low", m744a(bundle5.getString("tmplows")));
                        bundle3.putInt("conditionCode", Integer.parseInt(bundle5.getString("weather_type")));
                        bundle3.putString("condition", bundle5.getString("description"));
                        bundle2 = bundle.getBundle("weatherHourly");
                        if (bundle2 != null && !bundle2.containsKey("error")) {
                            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                            ArrayList parcelableArrayList2 = bundle2.getParcelableArrayList("rows");
                            size = parcelableArrayList2.size();
                            i = 0;
                            while (i < size) {
                                Object obj = parcelableArrayList2.get(i);
                                int i3 = i + 1;
                                Bundle bundle6 = (Bundle) obj;
                                OffsetDateTime parse = OffsetDateTime.parse(bundle6.getString("publish_time"));
                                ArrayList arrayList2 = parcelableArrayList2;
                                int i4 = size;
                                long epochMilli2 = parse.toLocalDate().atStartOfDay().toInstant(parse.getOffset()).toEpochMilli() + Long.parseLong(bundle6.getString("date_time"));
                                if (epochMilli2 < currentTimeMillis) {
                                    i2 = i4;
                                    j = currentTimeMillis;
                                } else {
                                    i2 = i4;
                                    Bundle bundle7 = new Bundle();
                                    j = currentTimeMillis;
                                    bundle7.putLong("time", epochMilli2);
                                    bundle7.putInt("temperature", m744a(bundle6.getString("temperature")));
                                    bundle7.putInt("conditionCode", Integer.parseInt(bundle6.getString("weather_type")));
                                    long parseLong3 = Long.parseLong(bundle6.getString("date_time")) % 86400000;
                                    if (parseLong3 >= parseLong && parseLong3 < parseLong2) {
                                        z2 = false;
                                        bundle7.putBoolean("isNight", z2);
                                        arrayList.add(bundle7);
                                        if (arrayList.size() != 5) {
                                            break;
                                        }
                                    }
                                    z2 = true;
                                    bundle7.putBoolean("isNight", z2);
                                    arrayList.add(bundle7);
                                    if (arrayList.size() != 5) {
                                    }
                                }
                                parcelableArrayList2 = arrayList2;
                                i = i3;
                                size = i2;
                                currentTimeMillis = j;
                            }
                            bundle3.putParcelableArrayList("hourly", arrayList);
                            return bundle3;
                        }
                        bundle3.putString("hourlyError", "小时预报读取失败");
                        return bundle3;
                    }
                    z = true;
                    bundle3.putBoolean("isNight", z);
                    bundle3.putString("city", bundle5.getString("city_name"));
                    bundle3.putString("cityId", bundle5.getString("city_id"));
                    bundle3.putInt("temperature", m744a(bundle5.getString("temperature")));
                    bundle3.putInt("high", m744a(bundle5.getString("tmphighs")));
                    bundle3.putInt("low", m744a(bundle5.getString("tmplows")));
                    bundle3.putInt("conditionCode", Integer.parseInt(bundle5.getString("weather_type")));
                    bundle3.putString("condition", bundle5.getString("description"));
                    bundle2 = bundle.getBundle("weatherHourly");
                    if (bundle2 != null) {
                        ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                        ArrayList parcelableArrayList22 = bundle2.getParcelableArrayList("rows");
                        size = parcelableArrayList22.size();
                        i = 0;
                        while (i < size) {
                        }
                        bundle3.putParcelableArrayList("hourly", arrayList3);
                        return bundle3;
                    }
                    bundle3.putString("hourlyError", "小时预报读取失败");
                    return bundle3;
                } catch (RuntimeException e) {
                    bundle3.putString("error", "天气数据格式不支持");
                    Log.w("MiDuoWidgets", "weather schema changed", e);
                    return bundle3;
                }
            }
            bundle3.putString("error", "请先在小米天气添加城市");
            return bundle3;
        }
        bundle3.putString("error", "天气读取失败，请打开小米天气检查");
        return bundle3;
    }

    /* renamed from: a */
    private static int m744a(String str) {
        return Integer.parseInt(str.replace("℃", "").replace("°", "").trim());
    }
}
