package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class O {
    private static final java.lang.String[] a = {"xy3227604139", "Wztf050402"};

    private O() {
    }

    static android.widget.LinearLayout a(final android.app.Activity activity) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        dev.duo.hookprobe.U.a(a2, 24.0f);
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f);
        a2.setPadding(a3, a3, a3, a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 16.0f, dev.duo.hookprobe.U.b, 700);
        a4.setText("赞助作者");
        a2.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(activity, 13.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("赞助后请联系作者，备注“MiDuo”，即可获得授权码。");
        a5.setLineSpacing(0.0f, 1.3f);
        a2.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 8.0f));
        android.widget.LinearLayout c = dev.duo.hookprobe.U.c(activity);
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) activity, "微信", false, 44.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.a(activity, "微信赞助", "微信", "wechat.png", "MiDuo-赞助-微信.png");
            }
        });
        c.addView(a6, new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f));
        android.widget.TextView a7 = dev.duo.hookprobe.U.a((android.content.Context) activity, "支付宝", false, 44.0f);
        a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.a(activity, "支付宝赞助", "支付宝", "alipay.png", "MiDuo-赞助-支付宝.png");
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 10.0f);
        c.addView(a7, layoutParams);
        a2.addView(c, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 14.0f));
        return a2;
    }

    private static java.lang.String d(android.app.Activity activity) {
        android.content.SharedPreferences sharedPreferences = activity.getSharedPreferences("sponsor", 0);
        java.lang.String string = sharedPreferences.getString("teacher", null);
        java.lang.String[] strArr = a;
        if (java.util.Arrays.asList(strArr).contains(string)) {
            return string;
        }
        java.lang.String str = strArr[new java.util.Random().nextInt(strArr.length)];
        sharedPreferences.edit().putString("teacher", str).apply();
        return str;
    }

    private static void e(final android.app.Activity activity) {
        final java.lang.String d = d(activity);
        final android.app.Dialog dialog = new android.app.Dialog(activity);
        android.widget.LinearLayout a2 = a(activity, dialog, "教学服务（10 元）");
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(activity, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a3.setLineSpacing(0.0f, 1.35f);
        a3.setText("一对一教你安装和设置 MiDuo，收费 10 元。");
        a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 20.0f, dev.duo.hookprobe.U.b, 700);
        a4.setGravity(17);
        a4.setText("微信：" + d);
        a4.setTextIsSelectable(true);
        a4.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.g, dev.duo.hookprobe.U.a((android.content.Context) activity, 16.0f)));
        a4.setPadding(dev.duo.hookprobe.U.a((android.content.Context) activity, 12.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 12.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 12.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 12.0f));
        a2.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        android.widget.LinearLayout c = dev.duo.hookprobe.U.c(activity);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a((android.content.Context) activity, "关闭", false, 44.0f);
        a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        c.addView(a5, new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) activity, "复制微信号", true, 44.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.a(activity, d, view);
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 2.0f);
        layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 10.0f);
        c.addView(a6, layoutParams);
        a2.addView(c, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 16.0f));
        android.widget.TextView a7 = dev.duo.hookprobe.U.a(activity, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a7.setGravity(17);
        a7.setText("复制后打开微信，在“添加朋友”里粘贴搜索，备注“MiDuo 教学”");
        a2.addView(a7, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        a(activity, dialog, a2);
    }

    static android.widget.LinearLayout b(final android.app.Activity activity) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        dev.duo.hookprobe.U.a(a2, 24.0f);
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f);
        a2.setPadding(a3, a3, a3, a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 16.0f, dev.duo.hookprobe.U.b, 700);
        a4.setText("联系作者");
        a2.addView(a4);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a(activity, 13.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a5.setText("赞助后领取授权码、反馈问题或版本适配，都可以加作者。");
        a5.setLineSpacing(0.0f, 1.3f);
        a2.addView(a5, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 8.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) activity, "联系作者", false, 44.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.c(activity);
            }
        });
        a2.addView(a6, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f)), activity, 14.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final android.app.Activity activity) {
        final android.app.Dialog dialog = new android.app.Dialog(activity);
        android.widget.LinearLayout a2 = a(activity, dialog, "联系作者");
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(activity, 14.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a3.setLineSpacing(0.0f, 1.35f);
        a3.setText("作者正忙着开发，暂不提供教学服务。\n请先试用，决定赞助后再联系作者领取授权码。\n新手需要有人教你装的，可以点下方“教学服务”。");
        a2.addView(a3, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        android.widget.LinearLayout c = dev.duo.hookprobe.U.c(activity);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a((android.content.Context) activity, "教学服务", false, 44.0f);
        a4.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.a(dialog, activity, view);
            }
        });
        c.addView(a4, new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f));
        android.widget.TextView a5 = dev.duo.hookprobe.U.a((android.content.Context) activity, "继续联系作者", true, 44.0f);
        a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.b(dialog, activity, view);
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 10.0f);
        c.addView(a5, layoutParams);
        a2.addView(c, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 16.0f));
        android.view.View a6 = dev.duo.hookprobe.U.a((android.content.Context) activity, "关闭", false, 44.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        a2.addView(a6, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f)), activity, 10.0f));
        a(activity, dialog, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(android.app.Dialog dialog, android.app.Activity activity, android.view.View view) {
        dialog.dismiss();
        a(activity, "添加微信", "微信", "contact-wechat.png", "MiDuo-作者-微信.png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Dialog dialog, android.app.Activity activity, android.view.View view) {
        dialog.dismiss();
        e(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Activity activity, java.lang.String str, android.view.View view) {
        ((android.content.ClipboardManager) activity.getSystemService(android.content.ClipboardManager.class)).setPrimaryClip(android.content.ClipData.newPlainText("MiDuo 教学微信", str));
        android.widget.Toast.makeText(activity, "已复制微信号", 0).show();
    }

    private static android.widget.LinearLayout a(android.app.Activity activity, android.app.Dialog dialog, java.lang.String str) {
        dialog.requestWindowFeature(1);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) activity);
        dev.duo.hookprobe.U.a(a2, 28.0f);
        int a3 = dev.duo.hookprobe.U.a((android.content.Context) activity, 22.0f);
        a2.setPadding(a3, a3, a3, dev.duo.hookprobe.U.a((android.content.Context) activity, 18.0f));
        a2.setGravity(1);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 20.0f, dev.duo.hookprobe.U.b, 800);
        a4.setText(str);
        a2.addView(a4);
        return a2;
    }

    private static void a(android.app.Activity activity, android.app.Dialog dialog, android.widget.LinearLayout linearLayout) {
        dialog.setContentView(linearLayout);
        android.view.Window window = dialog.getWindow();
        window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
        window.setLayout(java.lang.Math.min(activity.getResources().getDisplayMetrics().widthPixels - dev.duo.hookprobe.U.a((android.content.Context) activity, 32.0f), dev.duo.hookprobe.U.a((android.content.Context) activity, 360.0f)), -2);
        dialog.show();
    }

    private static android.graphics.Bitmap a(android.app.Activity activity, java.lang.String str) {
        try {
            java.io.InputStream open = activity.getAssets().open("sponsor/" + str);
            try {
                android.graphics.Bitmap decodeStream = android.graphics.BitmapFactory.decodeStream(open);
                if (open != null) {
                    open.close();
                }
                return decodeStream;
            } finally {
            }
        } catch (java.io.IOException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(final android.app.Activity activity, java.lang.String str, java.lang.String str2, java.lang.String str3, final java.lang.String str4) {
        final android.graphics.Bitmap a2 = a(activity, str3);
        if (a2 == null) {
            android.widget.Toast.makeText(activity, "二维码读取失败", 0).show();
            return;
        }
        final android.app.Dialog dialog = new android.app.Dialog(activity);
        android.widget.LinearLayout a3 = a(activity, dialog, str);
        android.widget.ImageView imageView = new android.widget.ImageView(activity);
        imageView.setImageBitmap(a2);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        imageView.setBackground(dev.duo.hookprobe.U.a(-1, dev.duo.hookprobe.U.a((android.content.Context) activity, 16.0f)));
        imageView.setMaxWidth(dev.duo.hookprobe.U.a((android.content.Context) activity, 240.0f));
        imageView.setMaxHeight(java.lang.Math.min(dev.duo.hookprobe.U.a((android.content.Context) activity, 360.0f), activity.getResources().getDisplayMetrics().heightPixels / 2));
        a3.addView(imageView, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-2, -2), activity, 16.0f));
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(activity, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setGravity(17);
        a4.setText("保存到相册后，用" + str2 + "“扫一扫”从相册选择这张图");
        a3.addView(a4, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 12.0f));
        android.widget.LinearLayout c = dev.duo.hookprobe.U.c(activity);
        android.widget.TextView a5 = dev.duo.hookprobe.U.a((android.content.Context) activity, "关闭", false, 44.0f);
        a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dialog.dismiss();
            }
        });
        c.addView(a5, new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 1.0f));
        android.widget.TextView a6 = dev.duo.hookprobe.U.a((android.content.Context) activity, "保存到相册", true, 44.0f);
        a6.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.O.a(activity, a2, str4, view);
            }
        });
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, dev.duo.hookprobe.U.a((android.content.Context) activity, 44.0f), 2.0f);
        layoutParams.leftMargin = dev.duo.hookprobe.U.a((android.content.Context) activity, 10.0f);
        c.addView(a6, layoutParams);
        a3.addView(c, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), activity, 16.0f));
        a(activity, dialog, a3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(android.app.Activity activity, android.graphics.Bitmap bitmap, java.lang.String str, android.view.View view) {
        android.widget.Toast.makeText(activity, a(activity, bitmap, str) ? "已保存到相册" : "保存失败", 0).show();
    }

    private static boolean a(android.app.Activity activity, android.graphics.Bitmap bitmap, java.lang.String str) {
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", "image/png");
        contentValues.put("relative_path", "Pictures/MiDuo");
        android.net.Uri insert = activity.getContentResolver().insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (insert == null) {
            return false;
        }
        try {
            java.io.OutputStream openOutputStream = activity.getContentResolver().openOutputStream(insert);
            if (openOutputStream != null) {
                try {
                    if (bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, openOutputStream)) {
                        openOutputStream.close();
                        return true;
                    }
                } finally {
                }
            }
            if (openOutputStream != null) {
                openOutputStream.close();
            }
        } catch (java.io.IOException e) {
        }
        activity.getContentResolver().delete(insert, null, null);
        return false;
    }
}
