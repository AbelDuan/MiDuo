package dev.duo.hookprobe;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import io.github.libxposed.service.XposedService;

/* renamed from: dev.duo.hookprobe.y */
/* loaded from: classes.dex */
final class C0123y {

    /* renamed from: a */
    private static final int f1888a = 1;

    /* renamed from: b */
    private static final String f1889b = "guide";

    /* renamed from: c */
    private static final String f1890c = "agreedTerms";

    /* renamed from: d */
    private static final String f1891d = "newUserMasterOff";

    /* renamed from: e */
    private static final String[][] f1892e = {new String[]{"需要", "小米 18 Fold；已用 KernelSU 取得 Root；已装 LSPosed 2.2.1。其他机型不能打开 MiDuo。"}, new String[]{"1. 同意本说明", "点下方“我已阅读并同意”。\n成功：说明关闭，看到 MiDuo 首页。\n不同意：MiDuo 直接关闭，不会做任何改动。"}, new String[]{"2. 允许 Root", "打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许。MiDuo 不会自己去拿 Root。\n成功：第 4 步检查里“Root”是绿色。\n不成功：检查里 Root 显示红色时，回 KernelSU 确认 MiDuo 已允许，再回来点一次总开关。"}, new String[]{"3. 在 LSPosed 启用", "打开 LSPosed 管理器 → 模块 → MiDuo → 打开“启用模块”，作用域勾上核心五项：系统框架、系统界面、小米桌面、智能助理、系统搜索。主题、微信、抖音、设置、应用商店、壁纸是附加功能，用到再勾。也可以在 MiDuo 首页点“补齐作用域”，在 LSPosed 的通知里批准。\n成功：MiDuo 首页 LSPosed 一栏显示“已连接”。\n不成功：显示“未连接”时，回 LSPosed 确认 MiDuo 已启用；首页如果写着系统框架还没加载 MiDuo，按首页那一行的说明处理。"}, new String[]{"4. 打开总开关", "在 MiDuo 首页打开总开关。会先检查机型、Root、LSPosed、作用域、小米桌面版本和智能助理安装状态等，全部通过才打开；智能助理不限定版本号，仍需安装并勾选作用域。同时自动处理 MiDuo 自己的应用列表、日历、通知、桌面快捷方式和锁屏显示权限，逐项显示结果。\n成功：首页显示“MiDuo 运行中”，桌面自动重开一次换成 MiDuo 的布局。\n不成功：红色项按旁边的说明处理后再点一次开关；黄色项只影响对应的小功能，不影响打开。"}, new String[]{"5. 确认生效", "桌面重开后，展开内屏看桌面布局，合上用外屏打开一个 App 看右侧栏。设置改动多数在 App 回到前台或下次打开时用上，提示里会写明。\n没变化：先确认第 3 步核心五项都勾了，再看首页有没有提示。"}, new String[]{"授权", "有免费试用，到期后在“授权”页购买；换手机时在“授权”页输入授权码。"}, new String[]{"注意", "在 LSPosed 停用或卸载 MiDuo 之前，先在首页关掉总开关。"}, new String[]{"出问题", "在首页关掉总开关，就回到小米原装（桌面会自动重开一次）。可以在“使用说明”卡片里随时再看本说明。"}, new String[]{"感谢", "特别感谢 幻华_official 一路以来的支持与鼓励。也谢谢每一位愿意试用、愿意反馈问题的朋友，你们的每一条意见，都让它变得更好用一点。"}};

    /* renamed from: f */
    private static final String[] f1893f = {"MiDuo 是个人开发的第三方工具，与小米公司无关。", "使用需要 Root 并修改系统行为，可能导致界面异常、桌面布局变化或其他问题，风险由使用者自行承担。", "使用前请备份重要数据。", "因使用本工具造成的数据丢失、设备故障或其他损失，作者不承担责任。"};

    private C0123y() {
    }

    /* renamed from: a */
    static boolean m2041a(Context context) {
        return context.getSharedPreferences(f1889b, 0).getInt(f1890c, 0) >= 1;
    }

    /* renamed from: b */
    static boolean m2043b(Context context) {
        return context.getSharedPreferences(f1889b, 0).contains(f1890c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m2044c(Context context) {
        XposedService m975c = C0056L.m975c();
        if (m975c != null) {
            m2040a(context, new C0113o(m975c));
        }
    }

    /* renamed from: d */
    static void m2045d(Context context) {
        final Context applicationContext = context.getApplicationContext();
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0123y.m2044c(applicationContext);
            }
        }, "MiDuoSettleMaster").start();
    }

    /* renamed from: a */
    static synchronized void m2040a(Context context, C0113o c0113o) {
        synchronized (C0123y.class) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f1889b, 0);
            if (!c0113o.f1684a.contains("_global/master") && sharedPreferences.contains(f1890c)) {
                boolean z = sharedPreferences.getBoolean(f1891d, false);
                if (c0113o.m1825h(!z)) {
                    Log.i("MiDuoGuide", "Master switch set " + (!z ? "on (existing user)" : "off (new user)"));
                    return;
                }
                Log.e("MiDuoGuide", "Master switch default not saved; retried when LSPosed connects again");
            }
        }
    }

    /* renamed from: b */
    static void m2042b(Activity activity) {
        if (m2041a((Context) activity)) {
            return;
        }
        m2037a(activity, true);
    }

    /* renamed from: a */
    static void m2035a(Activity activity) {
        m2037a(activity, false);
    }

    /* renamed from: a */
    private static void m2037a(final Activity activity, boolean z) {
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(1);
        dialog.setCancelable(!z);
        LinearLayout m1411a = C0087T.m1411a((Context) activity);
        C0087T.m1418a(m1411a, 28.0f);
        int m1399a = C0087T.m1399a((Context) activity, 22.0f);
        m1411a.setPadding(m1399a, m1399a, m1399a, C0087T.m1399a((Context) activity, 18.0f));
        TextView m1413a = C0087T.m1413a(activity, 22.0f, C0087T.f1345b, 800);
        m1413a.setText(z ? "使用前请阅读" : "使用说明");
        m1411a.addView(m1413a);
        LinearLayout m1411a2 = C0087T.m1411a((Context) activity);
        for (String[] strArr : f1892e) {
            m1411a2.addView(m2034a(activity, strArr[0], strArr[1]), C0087T.m1410a(C0087T.m1408a(), activity, 14.0f));
        }
        TextView m1413a2 = C0087T.m1413a(activity, 15.0f, C0087T.f1345b, 700);
        m1413a2.setText("免责声明");
        m1411a2.addView(m1413a2, C0087T.m1410a(C0087T.m1408a(), activity, 22.0f));
        for (String str : f1893f) {
            TextView m1413a3 = C0087T.m1413a(activity, 14.0f, C0087T.f1347c, C0054J.f930m);
            m1413a3.setText("· " + str);
            m1413a3.setLineSpacing(0.0f, 1.25f);
            m1411a2.addView(m1413a3, C0087T.m1410a(C0087T.m1408a(), activity, 6.0f));
        }
        TextView m1413a4 = C0087T.m1413a(activity, 13.0f, C0087T.f1349d, 500);
        m1413a4.setText("—— lcbbb");
        m1413a4.setGravity(8388613);
        m1411a2.addView(m1413a4, C0087T.m1410a(C0087T.m1408a(), activity, 12.0f));
        TextView m1413a5 = C0087T.m1413a(activity, 10.0f, C0087T.f1349d, C0054J.f930m);
        m1413a5.setText("取色保存后，这个 App 已确认的页面颜色会上传到 MiDuo 服务器，用于给所有用户适配更多 App。上传内容：App 包名和版本、界面名、深浅色、颜色值，以及本机设备标识（和授权、试用用的是同一个，能对应到这台手机）。不含截图和页面内容。");
        m1413a5.setLineSpacing(0.0f, 1.2f);
        m1411a2.addView(m1413a5, C0087T.m1410a(C0087T.m1408a(), activity, 18.0f));
        ScrollView scrollView = new ScrollView(activity);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(m1411a2);
        m1411a.addView(scrollView, C0087T.m1410a(new LinearLayout.LayoutParams(-1, 0, 1.0f), activity, 4.0f));
        LinearLayout m1430c = C0087T.m1430c(activity);
        if (z) {
            TextView m1415a = C0087T.m1415a((Context) activity, "不同意", false, 44.0f);
            m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0123y.m2038a(dialog, activity, view);
                }
            });
            m1430c.addView(m1415a, new LinearLayout.LayoutParams(0, C0087T.m1399a((Context) activity, 44.0f), 1.0f));
            TextView m1415a2 = C0087T.m1415a((Context) activity, "我已阅读并同意", true, 44.0f);
            m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0123y.m2036a(activity, dialog, view);
                }
            });
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, C0087T.m1399a((Context) activity, 44.0f), 2.0f);
            layoutParams.leftMargin = C0087T.m1399a((Context) activity, 10.0f);
            m1430c.addView(m1415a2, layoutParams);
        } else {
            TextView m1415a3 = C0087T.m1415a((Context) activity, "知道了", true, 44.0f);
            m1415a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.dismiss();
                }
            });
            m1430c.addView(m1415a3, new LinearLayout.LayoutParams(-1, C0087T.m1399a((Context) activity, 44.0f)));
        }
        m1411a.addView(m1430c, C0087T.m1410a(C0087T.m1408a(), activity, 16.0f));
        dialog.setContentView(m1411a);
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(Math.min(activity.getResources().getDisplayMetrics().widthPixels - C0087T.m1399a((Context) activity, 32.0f), C0087T.m1399a((Context) activity, 560.0f)), Math.round(r3.heightPixels * 0.82f));
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m2038a(Dialog dialog, Activity activity, View view) {
        dialog.dismiss();
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m2036a(Activity activity, Dialog dialog, View view) {
        SharedPreferences.Editor edit = activity.getSharedPreferences(f1889b, 0).edit();
        if (!m2043b((Context) activity)) {
            edit.putBoolean(f1891d, true);
        }
        edit.putInt(f1890c, 1).commit();
        dialog.dismiss();
        m2045d(activity);
        if (activity instanceof MainActivity) {
            ((MainActivity) activity).m1186D();
        }
    }

    /* renamed from: a */
    private static View m2034a(Context context, String str, String str2) {
        LinearLayout m1411a = C0087T.m1411a(context);
        TextView m1413a = C0087T.m1413a(context, 15.0f, C0087T.f1345b, 700);
        m1413a.setText(str);
        m1411a.addView(m1413a);
        TextView m1413a2 = C0087T.m1413a(context, 14.0f, C0087T.f1347c, C0054J.f930m);
        m1413a2.setText(str2);
        m1413a2.setLineSpacing(0.0f, 1.25f);
        m1411a.addView(m1413a2, C0087T.m1410a(C0087T.m1408a(), context, 4.0f));
        return m1411a;
    }
}
