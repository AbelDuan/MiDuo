package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class T {
    private static final java.lang.String[][] a = {new java.lang.String[]{"视频教程", "抖音", "https://v.douyin.com/FV5BWkBZQL8/"}, new java.lang.String[]{"提权工具", "夸克网盘", "https://pan.quark.cn/s/0dc8026b1f60"}, new java.lang.String[]{"模块下载", "夸克网盘", "https://pan.quark.cn/s/8f65e53c7e5c"}};
    private static final java.lang.String[][] b = {new java.lang.String[]{"准备：5 个软件", "下载网盘的5个软件和3个插件\n五个软件：\n①提权工具 lhasa26（网盘已更新支持全系统版本的快速提权工具）\n②Shizuku\n③KernelSU\n④MiDuo（安装后先不要打开）\n⑤XRS（玄戒O3压制软件）\n以上五个按顺序安装，\n前四个软件：每个软件安装后记得右上角三个点，授权应用列表，在权限管理→其它权限→获取应用列表→仅在使用中允许。\n第五个软件（XRS）是安装后，长按桌面图标→点“感叹号”→权限管理→其它权限→获取应用列表→仅在使用中允许。"}, new java.lang.String[]{"1. 打开 Shizuku 配对", "此时需要打开开发者模式：\n方法：打开 手机设置 → 我的设备 → 全部参数与信息\n找到 HyperOS版本（OS版本），连续快速点7次，输入锁屏密码，弹出提示：您现在处于开发者模式！ 就成功了\n找开发者选项入口：\n设置 → 更多设置 → 开发者选项\n进入开发者模式，往下滑，找到并打开“USB安装”→打开\n“USB调试(安全设置)”→打开\n“停用 adb 授权超时功能”→打开\n再在上边找到并开启“USB调试”→无线调试→输入配对码，此时会弹出6个数字，记住(不要关闭界面)，此时从屏幕顶部下滑通知中心，看Shizuku 的通知是否显示找到设备，是的话→长按这个通知，会弹出输入配对码框，输入刚记住的6位数字，配对，提示配对成功→打开Shizuku →点启动。\n如果通知中心的Shizuku 找不到设备，一直显示搜索。仔细核对之前步骤，清除Shizuku 数据，重启手机，再来一次。\n以上成功后才能继续往下！"}, new java.lang.String[]{"2. 提权", "打开lhasa26，开始授权Shizuku→弹窗允许→ 一键临时root。\n等待中…\n提权成功后会自动弹出KernelSU，\n显示工作中［越狱模式］\n至此root成功。"}, new java.lang.String[]{"3. 安模块", "三个模块：\n①Zygisk\n②热重启\n③LSPosed\n在KernelSU 里面→模块→“+号”→找到你事先下载好的3个模块，一定要按顺序导入。\n导入成功后，KernelSU →主页→右上角点击→软重启。\n软重启后，在KernelSU先看LSP是否是绿色的显示已激活。\n如果是，继续。\n从LSP里模块，找到MiDuo，启用模块，勾选12个必备应用程序。\n在KernelSU里→超级用户→ LSP 和 MiDuo 和 XRS调度控制(打开超级用户)，如果找不到LSP就不用管。\n操作完软重启。\n打开MiDuo APP，看看是否可以打开开关，\n成功打开，教程结束。\n如果显示“下次开机才加载”→ 去KernelSU →点击右上角→软重启。\n软重启后再次打开 MiDuo APP，看看是否可以打开开关：\n成功打开，教程结束。\n失败(一般不会)，从头分析，检查步骤。"}};

    private T() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.app.Dialog] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.view.View, android.widget.ScrollView] */
    /* JADX WARN: Type inference failed for: r9v10, types: [android.view.View, android.widget.TextView] */
    static void a(final android.app.Activity activity) {
        final ?? dialog = new android.app.Dialog(activity);
        boolean z = true;
        dialog.requestWindowFeature(1);
        ?? a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        dev.duo.hookprobe.U.a((android.view.View) a2, 28.0f);
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 22.0f);
        a2.setPadding(a3, a3, a3, dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 22.0f, dev.duo.hookprobe.U.b, 800);
        a4.setText("安装教程");
        a2.addView(a4);
        ?? c = dev.duo.hookprobe.U.c(activity);
        int i = 0;
        while (true) {
            java.lang.String[][] strArr = a;
            if (i >= strArr.length) {
                break;
            }
            final java.lang.String[] strArr2 = strArr[i];
            ?? a5 = dev.duo.hookprobe.U.a(activity, "", i == 0 ? z : false, 52.0f);
            boolean z2 = z;
            android.text.SpannableString spannableString = new android.text.SpannableString(strArr2[0] + "\n" + strArr2[z2 ? 1 : 0]);
            spannableString.setSpan(new android.text.style.RelativeSizeSpan(0.78f), strArr2[0].length() + 1, spannableString.length(), 0);
            a5.setSingleLine(false);
            a5.setText(spannableString);
            a5.setTextSize(14.0f);
            a5.setLineSpacing(0.0f, 1.1f);
            a5.setPadding(dev.duo.hookprobe.U.a((android.content.Context) activity, 4.0f), 0, dev.duo.hookprobe.U.a((android.content.Context) activity, 4.0f), 0);
            a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.T$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.T.a(activity, strArr2, view);
                }
            });
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 52.0f), 1.0f);
            if (i > 0) {
                layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 8.0f);
            }
            c.addView(a5, layoutParams);
            i++;
            z = z2 ? 1 : 0;
        }
        boolean z3 = z;
        a2.addView(c, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 14.0f));
        ?? a6 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        android.widget.TextView a7 = dev.duo.hookprobe.U.a(activity, 17.0f, dev.duo.hookprobe.U.b, 800);
        a7.setText("小米18 Fold 装 MiDuo 教程");
        a6.addView(a7);
        java.lang.String[][] strArr3 = b;
        int length = strArr3.length;
        int i2 = 0;
        while (i2 < length) {
            java.lang.String[] strArr4 = strArr3[i2];
            android.widget.TextView a8 = dev.duo.hookprobe.U.a(activity, 15.0f, dev.duo.hookprobe.U.b, 700);
            a8.setText(strArr4[0]);
            a6.addView(a8, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 16.0f));
            android.widget.TextView a9 = dev.duo.hookprobe.U.a(activity, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
            a9.setText(strArr4[z3]);
            a9.setLineSpacing(0.0f, 1.3f);
            a9.setTextIsSelectable(z3);
            a6.addView(a9, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 6.0f));
            i2++;
            z3 = 1;
        }
        ?? scrollView = new android.widget.ScrollView(activity);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(a6);
        a2.addView(scrollView, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f), activity, 14.0f));
        android.widget.TextView a10 = dev.duo.hookprobe.U.a((android.content.Context) activity, "知道了", true, 44.0f);
        a10.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.T$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        a2.addView(a10, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f)), activity, 16.0f));
        dialog.setContentView(a2);
        android.view.Window window = dialog.getWindow();
        window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
        window.setLayout(java.lang.Math.min(activity.getResources().getDisplayMetrics().widthPixels - dev.duo.hookprobe.U.a((android.content.Context) activity, 32.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 560.0f)), java.lang.Math.round(r3.heightPixels * 0.82f));
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Activity activity, java.lang.String[] strArr, android.view.View view) {
        a(activity, strArr[2]);
    }

    private static void a(android.app.Activity activity, java.lang.String str) {
        try {
            activity.startActivity(new android.content.Intent("android.intent.action.VIEW", android.net.Uri.parse(str)));
        } catch (android.content.ActivityNotFoundException e) {
            android.widget.Toast.makeText(activity, "没有能打开链接的应用：" + str, 1).show();
        }
    }
}
