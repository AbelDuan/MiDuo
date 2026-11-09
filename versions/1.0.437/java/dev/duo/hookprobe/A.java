package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class A {
    private A() {
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.os.Bundle a(android.content.Context r28) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.A.a(android.content.Context):android.os.Bundle");
    }

    static android.os.Bundle a(android.content.Context context, android.os.Bundle bundle) {
        android.os.Bundle bundle2 = new android.os.Bundle();
        android.content.Intent registerReceiver = context.registerReceiver(null, new android.content.IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            bundle2.putString("error", "手机电量暂不可用");
        } else {
            int i = -1;
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", 0);
            if (intExtra >= 0 && intExtra2 > 0) {
                i = java.lang.Math.round((intExtra * 100.0f) / intExtra2);
            }
            bundle2.putInt("phoneLevel", i);
            int intExtra3 = registerReceiver.getIntExtra("status", 1);
            bundle2.putBoolean("charging", registerReceiver.getIntExtra("plugged", 0) != 0 && (intExtra3 == 2 || intExtra3 == 5));
        }
        android.os.Bundle bundle3 = bundle.getBundle("batteryDevices");
        if (bundle3 != null && !bundle3.containsKey("error")) {
            java.util.ArrayList parcelableArrayList = bundle3.getParcelableArrayList("rows");
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                android.os.Bundle bundle4 = (android.os.Bundle) parcelableArrayList.get(0);
                try {
                    java.lang.String[][] strArr = {new java.lang.String[]{"wearableBattery", "wearableLevel"}, new java.lang.String[]{"headsetBattery", "headsetLevel"}, new java.lang.String[]{"keyBoardBattery", "keyboardLevel"}, new java.lang.String[]{"wearableType", "wearableType"}};
                    for (int i2 = 0; i2 < 4; i2++) {
                        java.lang.String[] strArr2 = strArr[i2];
                        java.lang.String string = bundle4.getString(strArr2[0]);
                        if (string != null && !string.isEmpty()) {
                            bundle2.putInt(strArr2[1], java.lang.Integer.parseInt(string));
                        }
                    }
                } catch (java.lang.NumberFormatException e) {
                    bundle2.putString("deviceError", "设备电量格式不支持");
                    android.util.Log.w("MiDuoWidgets", "device battery schema is not numeric", e);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.os.Bundle a(android.os.Bundle r24) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.A.a(android.os.Bundle):android.os.Bundle");
    }

    private static int a(java.lang.String str) {
        return java.lang.Integer.parseInt(str.replace("℃", "").replace("°", "").trim());
    }
}
