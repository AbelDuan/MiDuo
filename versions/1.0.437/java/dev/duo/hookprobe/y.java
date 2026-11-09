package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class y {
    private static final int a = 1;
    private static final java.lang.String b = "guide";
    private static final java.lang.String c = "agreedTerms";
    private static final java.lang.String d = "newUserMasterOff";
    private static final java.lang.String[][] e = {new java.lang.String[]{"需要", "小米 18 Fold；已用 KernelSU 取得 Root；已装 LSPosed 2.2.1。其他机型不能打开 MiDuo。\n还没提权、不会装？先看首页的“安装教程”。"}, new java.lang.String[]{"1. 同意本说明", "点下方“我已阅读并同意”。\n成功：说明关闭，看到 MiDuo 首页。\n不同意：MiDuo 直接关闭，不会做任何改动。"}, new java.lang.String[]{"2. 允许 Root", "打开 KernelSU → 超级用户（应用授权）→ 找到 MiDuo → 打开允许。MiDuo 不会自己去拿 Root。\n成功：第 4 步检查里“Root”是绿色。\n不成功：检查里 Root 显示红色时，回 KernelSU 确认 MiDuo 已允许，再回来点一次总开关。"}, new java.lang.String[]{"3. 在 LSPosed 启用", "打开 LSPosed 管理器 → 模块 → MiDuo → 打开“启用模块”，作用域勾上核心五项：系统框架、系统界面、小米桌面、智能助理、系统搜索。主题、微信、抖音、设置、应用商店、壁纸是附加功能，用到再勾。也可以在 MiDuo 首页点“补齐作用域”，在 LSPosed 的通知里批准。\n成功：MiDuo 首页 LSPosed 一栏显示“已连接”。\n不成功：显示“未连接”时，回 LSPosed 确认 MiDuo 已启用；首页如果写着系统框架还没加载 MiDuo，按首页那一行的说明处理。"}, new java.lang.String[]{"4. 打开总开关", "在 MiDuo 首页打开总开关。会先检查机型、Root、LSPosed、作用域、小米桌面版本和智能助理安装状态等，全部通过才打开；智能助理不限定版本号，仍需安装并勾选作用域。同时自动处理 MiDuo 自己的应用列表、日历、通知、桌面快捷方式和锁屏显示权限，逐项显示结果。\n成功：首页显示“MiDuo 运行中”，桌面自动重开一次换成 MiDuo 的布局。\n不成功：红色项按旁边的说明处理后再点一次开关；黄色项只影响对应的小功能，不影响打开。"}, new java.lang.String[]{"5. 确认生效", "桌面重开后，展开内屏看桌面布局，合上用外屏打开一个 App 看右侧栏。设置改动多数在 App 回到前台或下次打开时用上，提示里会写明。\n没变化：先确认第 3 步核心五项都勾了，再看首页有没有提示。"}, new java.lang.String[]{"授权", "有免费试用，到期后在“授权”页购买；换手机时在“授权”页输入授权码。"}, new java.lang.String[]{"注意", "在 LSPosed 停用或卸载 MiDuo 之前，先在首页关掉总开关。"}, new java.lang.String[]{"出问题", "在首页关掉总开关，就回到小米原装（桌面会自动重开一次）。可以在“使用说明”卡片里随时再看本说明。"}, new java.lang.String[]{"感谢", "特别感谢 幻华_official 一路以来的支持与鼓励。也谢谢每一位愿意试用、愿意反馈问题的朋友，你们的每一条意见，都让它变得更好用一点。"}};
    private static final java.lang.String[] f = {"MiDuo 是个人开发的第三方工具，与小米公司无关。", "使用需要 Root 并修改系统行为，可能导致界面异常、桌面布局变化或其他问题，风险由使用者自行承担。", "使用前请备份重要数据。", "因使用本工具造成的数据丢失、设备故障或其他损失，作者不承担责任。"};

    private y() {
    }

    static boolean a(android.content.Context context) {
        return context.getSharedPreferences(b, 0).getInt(c, 0) >= 1;
    }

    static boolean b(android.content.Context context) {
        return context.getSharedPreferences(b, 0).contains(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(android.content.Context context) {
        io.github.libxposed.service.XposedService c2 = dev.duo.hookprobe.L.c();
        if (c2 != null) {
            a(context, new dev.duo.hookprobe.C0026o(c2));
        }
    }

    static void d(android.content.Context context) {
        final android.content.Context applicationContext = context.getApplicationContext();
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.y.c(applicationContext);
            }
        }, "MiDuoSettleMaster").start();
    }

    static synchronized void a(android.content.Context context, dev.duo.hookprobe.C0026o c0026o) {
        synchronized (dev.duo.hookprobe.y.class) {
            android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(b, 0);
            if (!c0026o.a.contains("_global/master") && sharedPreferences.contains(c)) {
                boolean z = sharedPreferences.getBoolean(d, false);
                if (c0026o.h(!z)) {
                    android.util.Log.i("MiDuoGuide", "Master switch set " + (!z ? "on (existing user)" : "off (new user)"));
                    return;
                }
                android.util.Log.e("MiDuoGuide", "Master switch default not saved; retried when LSPosed connects again");
            }
        }
    }

    static void b(android.app.Activity activity) {
        if (a((android.content.Context) activity)) {
            return;
        }
        a(activity, true);
    }

    static void a(android.app.Activity activity) {
        a(activity, false);
    }

    private static void a(final android.app.Activity activity, boolean z) {
        final android.app.Dialog dialog = new android.app.Dialog(activity);
        dialog.requestWindowFeature(1);
        dialog.setCancelable(!z);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        dev.duo.hookprobe.U.a(a2, 28.0f);
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 22.0f);
        a2.setPadding(a3, a3, a3, dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 22.0f, dev.duo.hookprobe.U.b, 800);
        a4.setText(z ? "使用前请阅读" : "使用说明");
        a2.addView(a4);
        android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        for (java.lang.String[] strArr : e) {
            a5.addView(a(activity, strArr[0], strArr[1]), dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 14.0f));
        }
        android.widget.TextView a6 = dev.duo.hookprobe.U.a(activity, 15.0f, dev.duo.hookprobe.U.b, 700);
        a6.setText("免责声明");
        a5.addView(a6, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 22.0f));
        for (java.lang.String str : f) {
            android.widget.TextView a7 = dev.duo.hookprobe.U.a(activity, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
            a7.setText("· " + str);
            a7.setLineSpacing(0.0f, 1.25f);
            a5.addView(a7, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 6.0f));
        }
        android.widget.TextView a8 = dev.duo.hookprobe.U.a(activity, 13.0f, dev.duo.hookprobe.U.d, 500);
        a8.setText("—— lcbbb");
        a8.setGravity(8388613);
        a5.addView(a8, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        android.widget.TextView a9 = dev.duo.hookprobe.U.a(activity, 10.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a9.setText("取色保存后，这个 App 已确认的页面颜色会上传到 MiDuo 服务器，用于给所有用户适配更多 App。上传内容：App 包名和版本、界面名、深浅色、颜色值，以及本机设备标识（和授权、试用用的是同一个，能对应到这台手机）。不含截图和页面内容。");
        a9.setLineSpacing(0.0f, 1.2f);
        a5.addView(a9, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 18.0f));
        android.widget.ScrollView scrollView = new android.widget.ScrollView(activity);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(a5);
        a2.addView(scrollView, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f), activity, 4.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(activity);
        if (z) {
            android.widget.TextView a10 = dev.duo.hookprobe.U.a((android.content.Context) activity, "不同意", false, 44.0f);
            a10.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.y.a(dialog, activity, view);
                }
            });
            c2.addView(a10, new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f));
            android.widget.TextView a11 = dev.duo.hookprobe.U.a((android.content.Context) activity, "我已阅读并同意", true, 44.0f);
            a11.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.y.a(activity, dialog, view);
                }
            });
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 2.0f);
            layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 10.0f);
            c2.addView(a11, layoutParams);
        } else {
            android.widget.TextView a12 = dev.duo.hookprobe.U.a((android.content.Context) activity, "知道了", true, 44.0f);
            a12.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.y$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dialog.dismiss();
                }
            });
            c2.addView(a12, new android.widget.LinearLayout.LayoutParams(-1, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f)));
        }
        a2.addView(c2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 16.0f));
        dialog.setContentView(a2);
        android.view.Window window = dialog.getWindow();
        window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
        window.setLayout(java.lang.Math.min(activity.getResources().getDisplayMetrics().widthPixels - dev.duo.hookprobe.U.a((android.content.Context) activity, 32.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 560.0f)), java.lang.Math.round(r3.heightPixels * 0.82f));
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Dialog dialog, android.app.Activity activity, android.view.View view) {
        dialog.dismiss();
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Activity activity, android.app.Dialog dialog, android.view.View view) {
        android.content.SharedPreferences.Editor edit = activity.getSharedPreferences(b, 0).edit();
        if (!b((android.content.Context) activity)) {
            edit.putBoolean(d, true);
        }
        edit.putInt(c, 1).commit();
        dialog.dismiss();
        d(activity);
        if (activity instanceof dev.duo.hookprobe.MainActivity) {
            ((dev.duo.hookprobe.MainActivity) activity).D();
        }
    }

    private static android.view.View a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a(context);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(context, 15.0f, dev.duo.hookprobe.U.b, 700);
        a3.setText(str);
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(context, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a4.setText(str2);
        a4.setLineSpacing(0.0f, 1.25f);
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), context, 4.0f));
        return a2;
    }
}
