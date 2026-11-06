package dev.duo.hookprobe;

import android.app.KeyguardManager;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.util.Log;
import io.github.libxposed.service.XposedService;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class ConfigProvider extends ContentProvider {
    private static final int a = 0;
    private static final int b = 2000;

    private Bundle a(int i, String str, String str2, Bundle bundle) {
        try {
            boolean z = i == getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid;
            boolean z2 = i == Process.myUid() || i == 0 || i == b;
            if (!z && !z2) {
                if (str2 == null) {
                    throw new SecurityException("package required");
                }
                String[] packagesForUid = getContext().getPackageManager().getPackagesForUid(i);
                if (packagesForUid == null || !Arrays.asList(packagesForUid).contains(str2)) {
                    throw new SecurityException("own package only");
                }
                if (!"pickState".equals(str)) {
                    throw new SecurityException("picker writes require SystemUI");
                }
            }
            if ("pickState".equals(str)) {
                if (bundle != null && bundle.getBoolean("start")) {
                    if ((!z2 && !z) || str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                        throw new SecurityException("picker start requires owner or SystemUI");
                    }
                    XposedService a2 = L.a(1000L);
                    if (a2 == null) {
                        return a(new Bundle(), "LSPosed service not bound");
                    }
                    o c0021o = new o(a2);
                    if (!c0021o.m() || !c0021o.i(str2)) {
                        return a(new Bundle(), "Duo 已关闭");
                    }
                    F.a(getContext(), str2);
                }
                if (bundle != null && bundle.getBoolean("end")) {
                    if (!z && !z2) {
                        throw new SecurityException("cannot end picker");
                    }
                    F.a(getContext(), bundle.getLong("token"));
                }
                Bundle a3 = F.a(str2);
                if (!z && !z2) {
                    a3.remove("package");
                }
                return a3;
            }
            if (str2 == null || !str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                throw new IllegalArgumentException("invalid package");
            }
            synchronized (dev.duo.hookprobe.F.class) {
                synchronized (o.class) {
                    Bundle bundle2 = new Bundle();
                    Bundle a4 = F.a(str2);
                    if (bundle != null && a4.getBoolean("active") && a4.getLong("token") == bundle.getLong("token")) {
                        if (((PowerManager) getContext().getSystemService(PowerManager.class)).isInteractive() && !((KeyguardManager) getContext().getSystemService(KeyguardManager.class)).isKeyguardLocked()) {
                            String string = bundle.getString("page", "");
                            boolean z3 = bundle.getBoolean("night");
                            if (!string.matches((z3 ? "dark" : "light") + "/[A-Za-z_$][A-Za-z0-9_.$]*\\|")) {
                                return a(bundle2, "invalid page");
                            }
                            int i2 = bundle.getInt("color");
                            if ((i2 >>> 24) != 255) {
                                return a(bundle2, "invalid colour");
                            }
                            XposedService a5 = L.a(1000L);
                            if (a5 == null) {
                                return a(bundle2, "LSPosed service not bound");
                            }
                            o c0021o2 = new o(a5);
                            if (c0021o2.m() && c0021o2.i(str2)) {
                                if (c0021o2.a.getLong(str2 + "/pageColors/_revision", 0L) != bundle.getLong("revision")) {
                                    return a(bundle2, "配置已变化，请重新取色");
                                }
                                if (bundle.getBoolean("default")) {
                                    Integer a6 = c0021o2.a(str2, false);
                                    Integer a7 = c0021o2.a(str2, true);
                                    Integer valueOf = Integer.valueOf(i2);
                                    if (!z3) {
                                        a6 = valueOf;
                                    }
                                    if (z3) {
                                        a7 = valueOf;
                                    }
                                    if (!c0021o2.a(str2, a6, a7)) {
                                        return a(bundle2, "默认色保存失败");
                                    }
                                }
                                Bundle a8 = c0021o2.a(str2, string, z3, i2, bundle.getInt("edge"), bundle.getLong("revision"), bundle.getBoolean("default"));
                                if (a8.getBoolean("bound")) {
                                    try {
                                        String str3 = getContext().getPackageManager().getPackageInfo(str2, 0).versionName;
                                    } catch (PackageManager.NameNotFoundException e) {
                                        Log.w("MiDuoTones", "page colours shared without App version: " + str2);
                                    }
                                        a8.putString("share", new JSONObject().toString());
                                }
                                return a8;
                            }
                            return a(bundle2, "Duo 已关闭");
                        }
                        return a(bundle2, "屏幕已经锁定，取色确认已取消");
                    }
                    return a(bundle2, "取色模式已变化，请重新取色");
                }
            }
        } catch (PackageManager.NameNotFoundException e3) {
            throw new IllegalStateException(e3);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:318:0x06ef A[Catch: all -> 0x0772, TryCatch #1 {all -> 0x0772, blocks: (B:82:0x0141, B:84:0x0147, B:86:0x014e, B:91:0x0167, B:93:0x016d, B:95:0x0173, B:97:0x017a, B:99:0x0180, B:100:0x0187, B:102:0x018e, B:104:0x0184, B:105:0x0193, B:107:0x019d, B:111:0x01ad, B:113:0x01b3, B:115:0x01cd, B:117:0x01d2, B:118:0x01db, B:122:0x01e7, B:124:0x01ed, B:126:0x0207, B:128:0x020c, B:129:0x0215, B:131:0x021d, B:132:0x0229, B:134:0x022f, B:137:0x0241, B:140:0x024a, B:169:0x024e, B:143:0x0258, B:166:0x025c, B:146:0x0266, B:163:0x026a, B:149:0x0274, B:160:0x0278, B:152:0x0282, B:155:0x0286, B:176:0x028c, B:179:0x0298, B:181:0x029e, B:184:0x02a7, B:186:0x02ac, B:188:0x02b2, B:189:0x02bb, B:191:0x02c1, B:192:0x02ca, B:194:0x02d2, B:195:0x02db, B:197:0x02e3, B:198:0x031c, B:200:0x0324, B:201:0x032d, B:203:0x0335, B:204:0x0347, B:206:0x034f, B:208:0x0372, B:210:0x037b, B:211:0x0382, B:213:0x0388, B:215:0x03a4, B:216:0x03ad, B:220:0x03bd, B:222:0x03c3, B:224:0x03cd, B:226:0x03d2, B:227:0x03ef, B:229:0x03f7, B:230:0x042f, B:232:0x0435, B:236:0x0489, B:240:0x0494, B:242:0x04a5, B:247:0x04b3, B:250:0x04ba, B:252:0x04c1, B:255:0x04c8, B:257:0x04d0, B:260:0x04d9, B:262:0x04f2, B:264:0x04fa, B:265:0x0509, B:268:0x0530, B:270:0x0501, B:272:0x0535, B:275:0x053f, B:277:0x0546, B:280:0x0552, B:282:0x0558, B:285:0x055f, B:287:0x0567, B:290:0x0570, B:292:0x05a7, B:294:0x05ae, B:295:0x0575, B:297:0x057c, B:299:0x0583, B:301:0x0589, B:304:0x0590, B:305:0x05b9, B:307:0x05c0, B:308:0x05c8, B:311:0x0607, B:312:0x060a, B:313:0x0755, B:315:0x060e, B:318:0x06ef, B:320:0x06f5, B:322:0x06fa, B:324:0x073c, B:325:0x0617, B:327:0x061f, B:329:0x0637, B:333:0x064c, B:335:0x0653, B:337:0x0663, B:339:0x066b, B:341:0x0672, B:342:0x0644, B:343:0x067b, B:345:0x0685, B:349:0x068d, B:352:0x0694, B:354:0x069c, B:355:0x06af, B:357:0x06b6, B:358:0x06d2, B:360:0x06d9, B:362:0x06a3, B:363:0x06e5, B:366:0x05cc, B:369:0x05d6, B:372:0x05e0, B:375:0x05e8, B:378:0x05f2, B:381:0x05fc, B:384:0x076b), top: B:81:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x073c A[Catch: all -> 0x0772, TryCatch #1 {all -> 0x0772, blocks: (B:82:0x0141, B:84:0x0147, B:86:0x014e, B:91:0x0167, B:93:0x016d, B:95:0x0173, B:97:0x017a, B:99:0x0180, B:100:0x0187, B:102:0x018e, B:104:0x0184, B:105:0x0193, B:107:0x019d, B:111:0x01ad, B:113:0x01b3, B:115:0x01cd, B:117:0x01d2, B:118:0x01db, B:122:0x01e7, B:124:0x01ed, B:126:0x0207, B:128:0x020c, B:129:0x0215, B:131:0x021d, B:132:0x0229, B:134:0x022f, B:137:0x0241, B:140:0x024a, B:169:0x024e, B:143:0x0258, B:166:0x025c, B:146:0x0266, B:163:0x026a, B:149:0x0274, B:160:0x0278, B:152:0x0282, B:155:0x0286, B:176:0x028c, B:179:0x0298, B:181:0x029e, B:184:0x02a7, B:186:0x02ac, B:188:0x02b2, B:189:0x02bb, B:191:0x02c1, B:192:0x02ca, B:194:0x02d2, B:195:0x02db, B:197:0x02e3, B:198:0x031c, B:200:0x0324, B:201:0x032d, B:203:0x0335, B:204:0x0347, B:206:0x034f, B:208:0x0372, B:210:0x037b, B:211:0x0382, B:213:0x0388, B:215:0x03a4, B:216:0x03ad, B:220:0x03bd, B:222:0x03c3, B:224:0x03cd, B:226:0x03d2, B:227:0x03ef, B:229:0x03f7, B:230:0x042f, B:232:0x0435, B:236:0x0489, B:240:0x0494, B:242:0x04a5, B:247:0x04b3, B:250:0x04ba, B:252:0x04c1, B:255:0x04c8, B:257:0x04d0, B:260:0x04d9, B:262:0x04f2, B:264:0x04fa, B:265:0x0509, B:268:0x0530, B:270:0x0501, B:272:0x0535, B:275:0x053f, B:277:0x0546, B:280:0x0552, B:282:0x0558, B:285:0x055f, B:287:0x0567, B:290:0x0570, B:292:0x05a7, B:294:0x05ae, B:295:0x0575, B:297:0x057c, B:299:0x0583, B:301:0x0589, B:304:0x0590, B:305:0x05b9, B:307:0x05c0, B:308:0x05c8, B:311:0x0607, B:312:0x060a, B:313:0x0755, B:315:0x060e, B:318:0x06ef, B:320:0x06f5, B:322:0x06fa, B:324:0x073c, B:325:0x0617, B:327:0x061f, B:329:0x0637, B:333:0x064c, B:335:0x0653, B:337:0x0663, B:339:0x066b, B:341:0x0672, B:342:0x0644, B:343:0x067b, B:345:0x0685, B:349:0x068d, B:352:0x0694, B:354:0x069c, B:355:0x06af, B:357:0x06b6, B:358:0x06d2, B:360:0x06d9, B:362:0x06a3, B:363:0x06e5, B:366:0x05cc, B:369:0x05d6, B:372:0x05e0, B:375:0x05e8, B:378:0x05f2, B:381:0x05fc, B:384:0x076b), top: B:81:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0147 A[Catch: all -> 0x0772, TryCatch #1 {all -> 0x0772, blocks: (B:82:0x0141, B:84:0x0147, B:86:0x014e, B:91:0x0167, B:93:0x016d, B:95:0x0173, B:97:0x017a, B:99:0x0180, B:100:0x0187, B:102:0x018e, B:104:0x0184, B:105:0x0193, B:107:0x019d, B:111:0x01ad, B:113:0x01b3, B:115:0x01cd, B:117:0x01d2, B:118:0x01db, B:122:0x01e7, B:124:0x01ed, B:126:0x0207, B:128:0x020c, B:129:0x0215, B:131:0x021d, B:132:0x0229, B:134:0x022f, B:137:0x0241, B:140:0x024a, B:169:0x024e, B:143:0x0258, B:166:0x025c, B:146:0x0266, B:163:0x026a, B:149:0x0274, B:160:0x0278, B:152:0x0282, B:155:0x0286, B:176:0x028c, B:179:0x0298, B:181:0x029e, B:184:0x02a7, B:186:0x02ac, B:188:0x02b2, B:189:0x02bb, B:191:0x02c1, B:192:0x02ca, B:194:0x02d2, B:195:0x02db, B:197:0x02e3, B:198:0x031c, B:200:0x0324, B:201:0x032d, B:203:0x0335, B:204:0x0347, B:206:0x034f, B:208:0x0372, B:210:0x037b, B:211:0x0382, B:213:0x0388, B:215:0x03a4, B:216:0x03ad, B:220:0x03bd, B:222:0x03c3, B:224:0x03cd, B:226:0x03d2, B:227:0x03ef, B:229:0x03f7, B:230:0x042f, B:232:0x0435, B:236:0x0489, B:240:0x0494, B:242:0x04a5, B:247:0x04b3, B:250:0x04ba, B:252:0x04c1, B:255:0x04c8, B:257:0x04d0, B:260:0x04d9, B:262:0x04f2, B:264:0x04fa, B:265:0x0509, B:268:0x0530, B:270:0x0501, B:272:0x0535, B:275:0x053f, B:277:0x0546, B:280:0x0552, B:282:0x0558, B:285:0x055f, B:287:0x0567, B:290:0x0570, B:292:0x05a7, B:294:0x05ae, B:295:0x0575, B:297:0x057c, B:299:0x0583, B:301:0x0589, B:304:0x0590, B:305:0x05b9, B:307:0x05c0, B:308:0x05c8, B:311:0x0607, B:312:0x060a, B:313:0x0755, B:315:0x060e, B:318:0x06ef, B:320:0x06f5, B:322:0x06fa, B:324:0x073c, B:325:0x0617, B:327:0x061f, B:329:0x0637, B:333:0x064c, B:335:0x0653, B:337:0x0663, B:339:0x066b, B:341:0x0672, B:342:0x0644, B:343:0x067b, B:345:0x0685, B:349:0x068d, B:352:0x0694, B:354:0x069c, B:355:0x06af, B:357:0x06b6, B:358:0x06d2, B:360:0x06d9, B:362:0x06a3, B:363:0x06e5, B:366:0x05cc, B:369:0x05d6, B:372:0x05e0, B:375:0x05e8, B:378:0x05f2, B:381:0x05fc, B:384:0x076b), top: B:81:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x014e A[Catch: all -> 0x0772, TRY_LEAVE, TryCatch #1 {all -> 0x0772, blocks: (B:82:0x0141, B:84:0x0147, B:86:0x014e, B:91:0x0167, B:93:0x016d, B:95:0x0173, B:97:0x017a, B:99:0x0180, B:100:0x0187, B:102:0x018e, B:104:0x0184, B:105:0x0193, B:107:0x019d, B:111:0x01ad, B:113:0x01b3, B:115:0x01cd, B:117:0x01d2, B:118:0x01db, B:122:0x01e7, B:124:0x01ed, B:126:0x0207, B:128:0x020c, B:129:0x0215, B:131:0x021d, B:132:0x0229, B:134:0x022f, B:137:0x0241, B:140:0x024a, B:169:0x024e, B:143:0x0258, B:166:0x025c, B:146:0x0266, B:163:0x026a, B:149:0x0274, B:160:0x0278, B:152:0x0282, B:155:0x0286, B:176:0x028c, B:179:0x0298, B:181:0x029e, B:184:0x02a7, B:186:0x02ac, B:188:0x02b2, B:189:0x02bb, B:191:0x02c1, B:192:0x02ca, B:194:0x02d2, B:195:0x02db, B:197:0x02e3, B:198:0x031c, B:200:0x0324, B:201:0x032d, B:203:0x0335, B:204:0x0347, B:206:0x034f, B:208:0x0372, B:210:0x037b, B:211:0x0382, B:213:0x0388, B:215:0x03a4, B:216:0x03ad, B:220:0x03bd, B:222:0x03c3, B:224:0x03cd, B:226:0x03d2, B:227:0x03ef, B:229:0x03f7, B:230:0x042f, B:232:0x0435, B:236:0x0489, B:240:0x0494, B:242:0x04a5, B:247:0x04b3, B:250:0x04ba, B:252:0x04c1, B:255:0x04c8, B:257:0x04d0, B:260:0x04d9, B:262:0x04f2, B:264:0x04fa, B:265:0x0509, B:268:0x0530, B:270:0x0501, B:272:0x0535, B:275:0x053f, B:277:0x0546, B:280:0x0552, B:282:0x0558, B:285:0x055f, B:287:0x0567, B:290:0x0570, B:292:0x05a7, B:294:0x05ae, B:295:0x0575, B:297:0x057c, B:299:0x0583, B:301:0x0589, B:304:0x0590, B:305:0x05b9, B:307:0x05c0, B:308:0x05c8, B:311:0x0607, B:312:0x060a, B:313:0x0755, B:315:0x060e, B:318:0x06ef, B:320:0x06f5, B:322:0x06fa, B:324:0x073c, B:325:0x0617, B:327:0x061f, B:329:0x0637, B:333:0x064c, B:335:0x0653, B:337:0x0663, B:339:0x066b, B:341:0x0672, B:342:0x0644, B:343:0x067b, B:345:0x0685, B:349:0x068d, B:352:0x0694, B:354:0x069c, B:355:0x06af, B:357:0x06b6, B:358:0x06d2, B:360:0x06d9, B:362:0x06a3, B:363:0x06e5, B:366:0x05cc, B:369:0x05d6, B:372:0x05e0, B:375:0x05e8, B:378:0x05f2, B:381:0x05fc, B:384:0x076b), top: B:81:0x0141 }] */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bundle call(String str, String str2, Bundle bundle) {
        boolean z;
        Bundle bundle2 = new Bundle();
        XposedService a2;
        char c;
        boolean a3;
        int callingUid = Binder.getCallingUid();
        if ("widget396Probe".equals(str)) {
            if (callingUid != 0 && callingUid != b) {
                throw new SecurityException("shell or root only");
            }
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    return V.a(getContext());
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("天气接口验证等待中断", e);
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        if ("foldStart".equals(str)) {
            return q.a(getContext(), callingUid);
        }
        if ("trialTick".equals(str)) {
            return a(callingUid, str2);
        }
        if ("duoState".equals(str)) {
            return a(callingUid);
        }
        if ("pickState".equals(str) || "pickConfirm".equals(str)) {
            return a(callingUid, str, str2, bundle);
        }
        boolean z2 = "pageTones".equals(str) || "keepScreen".equals(str) || "railSidebarApps".equals(str) || "railPanelOrder".equals(str);
        boolean z3 = "railEnabled".equals(str) || "rotationSuggest".equals(str) || "notificationIcons".equals(str) || "searchButton".equals(str) || "pickButton".equals(str) || "foldSplit".equals(str) || "standbyClock".equals(str) || "statusStyles".equals(str) || "railCustom".equals(str) || "iosNc".equals(str) || "workbench".equals(str);
        try {
            if (z3 || z2) {
                if (callingUid == getContext().getPackageManager().getApplicationInfo("com.android.systemui", 0).uid) {
                    z = true;
                    if (callingUid == 0 && callingUid != b && !z) {
                        throw new SecurityException("shell or root only (SystemUI: rail reads, pageTones, keepScreen, railSidebarApps and railPanelOrder only)");
                    }
                    bundle2 = new Bundle();
                    a2 = L.a((!z3 || z2) ? 1000L : 5000L);
                    if (a2 != null) {
                        return a(bundle2, "LSPosed service not bound (module enabled in LSPosed?)");
                    }
                    o c0021o = new o(a2);
                    SharedPreferences sharedPreferences = c0021o.a;
                    if ("keepScreen".equals(str)) {
                        if (bundle != null && bundle.containsKey("set")) {
                            int i = bundle.getInt("set");
                            if (i < 0) {
                                return a(bundle2, "negative timeout");
                            }
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            if (i == 0) {
                                edit.remove("_global/screenOffTimeoutSaved");
                            } else {
                                edit.putInt("_global/screenOffTimeoutSaved", i);
                            }
                            if (!edit.commit()) {
                                return a(bundle2, "commit failed");
                            }
                        }
                        bundle2.putInt("saved", sharedPreferences.getInt("_global/screenOffTimeoutSaved", 0));
                    } else {
                        boolean z4 = z2;
                        if ("railSidebarApps".equals(str)) {
                            if (bundle != null && bundle.containsKey("set")) {
                                if (!sharedPreferences.edit().putString("_global/railSidebarApps", J.b(J.f(bundle.getString("set")))).commit()) {
                                    return a(bundle2, "commit failed");
                                }
                            }
                            bundle2.putString("saved", sharedPreferences.getString("_global/railSidebarApps", ""));
                        } else if ("railPanelOrder".equals(str)) {
                            if (bundle != null && bundle.containsKey("set")) {
                                if (!sharedPreferences.edit().putString("_global/railPanelOrder", J.a(J.e(bundle.getString("set")))).commit()) {
                                    return a(bundle2, "commit failed");
                                }
                            }
                            bundle2.putString("saved", sharedPreferences.getString("_global/railPanelOrder", ""));
                        } else if ("iosNc".equals(str)) {
                            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                                String key = entry.getKey();
                                Object value = entry.getValue();
                                if (key != null && key.startsWith("ios_notification_")) {
                                    if (value instanceof Boolean) {
                                        bundle2.putBoolean(key, ((Boolean) value).booleanValue());
                                    } else if (value instanceof Integer) {
                                        bundle2.putInt(key, ((Integer) value).intValue());
                                    } else if (value instanceof Float) {
                                        bundle2.putFloat(key, ((Float) value).floatValue());
                                    } else if (value instanceof Long) {
                                        bundle2.putLong(key, ((Long) value).longValue());
                                    } else if (value instanceof String) {
                                        bundle2.putString(key, (String) value);
                                    }
                                }
                            }
                        } else if ("standbyClock".equals(str)) {
                            bundle2.putBoolean("on", c0021o.m() && c0021o.z());
                        } else if ("notificationIcons".equals(str)) {
                            bundle2.putBoolean("on", c0021o.n());
                        } else if ("searchButton".equals(str)) {
                            bundle2.putBoolean("on", c0021o.y());
                        } else if ("pickButton".equals(str)) {
                            bundle2.putBoolean("on", c0021o.t());
                        } else if ("railCustom".equals(str)) {
                            bundle2.putString("layout", sharedPreferences.getString("_global/railCustom", J.g));
                            bundle2.putString("sidebarApps", sharedPreferences.getString("_global/railSidebarApps", ""));
                            bundle2.putString("panelOrder", sharedPreferences.getString("_global/railPanelOrder", ""));
                            bundle2.putBoolean("sidebarFreeform", sharedPreferences.getBoolean("_global/railSidebarFreeform", true));
                            bundle2.putBoolean("sidebarKeyEnd", sharedPreferences.getBoolean("_global/railSidebarKeyEnd", false));
                        } else if ("workbench".equals(str)) {
                            bundle2.putBoolean("on", c0021o.B());
                        } else if ("foldSplit".equals(str)) {
                            bundle2.putBoolean("on", c0021o.g());
                            bundle2.putInt("nudge", c0021o.f());
                        } else if ("statusStyles".equals(str)) {
                            bundle2.putBoolean("cellular", c0021o.c());
                            bundle2.putBoolean("thin", c0021o.A());
                            bundle2.putBoolean("percentTop", c0021o.s());
                            int length = dev.duo.hookprobe.P.e0.length;
                            int[] iArr = new int[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                iArr[i2] = c0021o.e(i2);
                            }
                            bundle2.putIntArray("dy", iArr);
                        } else if ("rotationSuggest".equals(str)) {
                            bundle2.putBoolean("portraitRight", c0021o.a(false));
                            bundle2.putBoolean("landscapeRight", c0021o.a(true));
                            if (sharedPreferences.contains("_global/rotationSuggest")) {
                                bundle2.putBoolean("on", c0021o.x());
                            }
                        } else if ("global".equals(str)) {
                            if (bundle != null && bundle.containsKey("px") && !c0021o.b(bundle.getInt("px"))) {
                                return a(bundle2, "commit failed");
                            }
                            bundle2.putInt("globalDefaultPx", c0021o.j());
                            bundle2.putInt("globalDefaultPxInner", c0021o.j("inner"));
                            bundle2.putInt("globalDefaultPxOuter", c0021o.j("outer"));
                        } else {
                            if (!"list".equals(str)) {
                                if (str2 != null && str2.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                                    if (z4) {
                                        if (bundle != null && !bundle.isEmpty()) {
                                            return a(bundle2, "use pickConfirm for confirmed colours");
                                        }
                                        return c0021o.q(str2);
                                    }
                                    if (z3) {
                                        bundle2.putBoolean("enabled", c0021o.m() && c0021o.i(str2));
                                        bundle2.putBoolean("innerNativeBar", c0021o.k(str2));
                                        bundle2.putInt("hiddenTop", P.c(c0021o.a, str2));
                                        boolean a4 = (bundle == null || !bundle.containsKey("railNight")) ? P.a(getContext()) : bundle.getBoolean("railNight");
                                        bundle2.putString("railColor", c0021o.c(str2, a4));
                                        bundle2.putBoolean("railBlack", c0021o.b(str2, a4));
                                        bundle2.putInt("railBackground", P.b(sharedPreferences, str2, a4));
                                        bundle2.putBoolean("railCustomBackground", c0021o.a(str2, a4) != null);
                                    } else if (!"railpalette".equals(str)) {
                                        SharedPreferences.Editor edit2 = sharedPreferences.edit();
                                        switch (str.hashCode()) {
                                            case -1335458389:
                                                if (str.equals("delete")) {
                                                    c = 2;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case -1298848381:
                                                if (str.equals("enable")) {
                                                    c = 4;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 102230:
                                                if (str.equals("get")) {
                                                    c = 0;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 113762:
                                                if (str.equals("set")) {
                                                    c = 1;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 106329993:
                                                if (str.equals("raicolor")) {
                                                    c = 3;
                                                    break;
                                                }
                                                c = 65535;
                                                break;
                                            case 1671308008:
                                                if (str.equals("disable")) {
                                                    c = 5;
                                                    break;
                                                }
                                            default:
                                                c = 65535;
                                                break;
                                        }
                                        switch (c) {
                                            case 0:
                                                edit2 = null;
                                                if (edit2 == null && !edit2.commit()) {
                                                    return a(bundle2, "commit failed");
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                if (!"get".equals(str)) {
                                                    bundle2.putString("apply", "force-stop and reopen " + str2);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (bundle != null && bundle.containsKey("px")) {
                                                    Object obj = bundle.get("px");
                                                    int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(String.valueOf(obj).trim());
                                                    int a5 = P.a(intValue);
                                                    if (a5 != intValue) {
                                                        bundle2.putString("clamped", intValue + " -> " + a5);
                                                    }
                                                    for (String str3 : a(bundle)) {
                                                        edit2.putInt(P.a(str2, str3), a5);
                                                    }
                                                    if (edit2 == null) {
                                                        break;
                                                    }
                                                    bundle2.putString("package", str2);
                                                    bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                    bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                    bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                    bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                    bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                    if (!"get".equals(str)) {
                                                    }
                                                }
                                                return a(bundle2, "set needs --extra px:i:N");
                                            case 2:
                                                if (!c0021o.a(str2, a(bundle))) {
                                                    return a(bundle2, "commit failed");
                                                }
                                                edit2 = null;
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 3:
                                                Object obj2 = bundle == null ? null : bundle.get("color");
                                                if (obj2 == null) {
                                                    return a(bundle2, "raicolor needs --extra color:s:white|black");
                                                }
                                                String trim = String.valueOf(obj2).trim();
                                                if (!"white".equals(trim) && !"black".equals(trim)) {
                                                    return a(bundle2, "color must be white or black");
                                                }
                                                edit2.putString(P.q(str2), trim);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 4:
                                                if (dev.duo.hookprobe.P.i.contains(str2)) {
                                                    return a(bundle2, "该应用固定不启用 Duo：" + str2);
                                                }
                                                edit2.putBoolean(P.f(str2), true);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            case 5:
                                                edit2.putBoolean(P.f(str2), false);
                                                if (edit2 == null) {
                                                }
                                                bundle2.putString("package", str2);
                                                bundle2.putBoolean("enabled", a(sharedPreferences, str2));
                                                bundle2.putInt("topSafePxInner", a(sharedPreferences, str2, "inner"));
                                                bundle2.putInt("topSafePxOuter", a(sharedPreferences, str2, "outer"));
                                                bundle2.putBoolean("custom", P.a(sharedPreferences, str2, "inner"));
                                                bundle2.putString("railColor", P.d(sharedPreferences, str2, P.a(getContext())));
                                                if (!"get".equals(str)) {
                                                }
                                                break;
                                            default:
                                                return a(bundle2, "unknown method " + str);
                                        }
                                    } else {
                                        if (bundle == null) {
                                            return a(bundle2, "railpalette needs light/dark or copyFrom");
                                        }
                                        if (!bundle.containsKey("copyFrom")) {
                                            if (bundle.containsKey("light") && bundle.containsKey("dark")) {
                                                a3 = c0021o.a(str2, dev.duo.hookprobe.P.p(bundle.getString("light")), dev.duo.hookprobe.P.p(bundle.getString("dark")));
                                            }
                                            return a(bundle2, "light and dark required; use - for default");
                                        }
                                        if (!bundle.containsKey("light") && !bundle.containsKey("dark")) {
                                            String string = bundle.getString("copyFrom");
                                            if (string != null && string.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+")) {
                                                a3 = c0021o.a(str2, string);
                                            }
                                            return a(bundle2, "copyFrom must be a package name");
                                        }
                                        return a(bundle2, "copyFrom cannot be combined with light/dark");
                                    }
                                }
                                return a(bundle2, "--arg must be a package name");
                            }
                            StringBuilder sb = new StringBuilder("global default inner=" + c0021o.j("inner") + " outer=" + c0021o.j("outer") + "\n");
                            Iterator<String> it = c0021o.r().iterator();
                            while (it.hasNext()) {
                                String next = it.next();
                                sb.append(next).append(" enabled=").append(a(sharedPreferences, next)).append(" railColor=").append(P.d(sharedPreferences, next, P.a(getContext()))).append(" topSafePxInner=").append(a(sharedPreferences, next, "inner")).append(" topSafePxOuter=").append(a(sharedPreferences, next, "outer")).append(P.a(sharedPreferences, next, "inner") ? "" : "(default)").append('\n');
                            }
                            bundle2.putString("apps", sb.toString().trim());
                        }
                    }
                    return bundle2;
                }
            }
            a2 = L.a((!z3 || z2) ? 1000L : 5000L);
            if (a2 != null) {
            }
        } catch (Throwable th) {
            return a(bundle2, String.valueOf(th));
        }
        z = false;
        if (callingUid == 0) {
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        L.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private Bundle a(int i, String str) {
        if (i == 1000) {
            Bundle bundle = new Bundle();
            try {
                XposedService a2 = L.a(5000L);
                if (a2 == null) {
                    return a(bundle, "LSPosed service not bound");
                }
                SharedPreferences sharedPreferences = new o(a2).a;
                synchronized (Object.class) {
                    int i2 = sharedPreferences.getInt("_global/trialUsedSec", 0);
                    int max = Math.max(i2, Integer.parseInt(str));
                    if (max != i2 && !sharedPreferences.edit().putInt("_global/trialUsedSec", max).commit()) {
                        return a(bundle, "commit failed");
                    }
                    if (max != i2) {
                    }
                    bundle.putInt("trialUsedSec", max);
                    bundle.putString("token", sharedPreferences.getString("_global/licenseToken", null));
                    return bundle;
                }
            } catch (Throwable th) {
                return a(bundle, String.valueOf(th));
            }
        }
        throw new SecurityException("system_server only");
    }

    private Bundle a(int i) {
        if (i == 1000) {
            Bundle bundle = new Bundle();
            XposedService a2 = L.a(5000L);
            if (a2 == null) {
                return a(bundle, "LSPosed service not bound");
            }
            Iterator<? extends Map.Entry<String, ?>> it = new o(a2).a.getAll().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                Object value = next.getValue();
                if (key.endsWith("/enabled") && !key.startsWith("_") && (value instanceof Boolean)) {
                    bundle.putBoolean(key, !dev.duo.hookprobe.P.i.contains(key.substring(0, key.length() + (-8))) && ((Boolean) value).booleanValue());
                } else if (("_global/master".equals(key) || P.j(key) || P.n(key)) && (value instanceof Boolean)) {
                    bundle.putBoolean(key, ((Boolean) value).booleanValue());
                } else if ("_global/licenseToken".equals(key) && (value instanceof String)) {
                    bundle.putString(key, (String) value);
                } else if (P.u(key) && (value instanceof Integer)) {
                    bundle.putInt(key, ((Integer) value).intValue());
                } else if (P.h(key) || "_global/nonDuoOuterTopPx".equals(key)) {
                    if (value instanceof Integer) {
                        bundle.putInt(key, ((Integer) value).intValue());
                    }
                }
            }
            bundle.putBoolean("_global/master", new o(a2).m());
            Iterator<String> it2 = P.j.iterator();
            while (it2.hasNext()) {
                String f = P.f(it2.next());
                if (!bundle.containsKey(f)) {
                    bundle.putBoolean(f, true);
                }
            }
            return bundle;
        }
        throw new SecurityException("system_server only");
    }

    private static boolean a(SharedPreferences sharedPreferences, String str) {
        return !dev.duo.hookprobe.P.i.contains(str) && sharedPreferences.getBoolean(P.f(str), P.e(str));
    }

    private static int a(SharedPreferences sharedPreferences, String str, String str2) {
        return P.b(sharedPreferences, str, str2);
    }

    private static String[] a(Bundle bundle) {
        String string = bundle == null ? null : bundle.getString("side");
        if (!"inner".equals(string) && !"outer".equals(string)) {
            return P.t;
        }
        return new String[]{string};
    }

    private static Bundle a(Bundle bundle, String str) {
        if (bundle.containsKey("applied")) {
            bundle.putString("errors", str);
        }
        bundle.putString("error", str);
        return bundle;
    }
}
