package dev.duo.hookprobe;

import android.app.Activity;
import android.app.Dialog;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class O {
    private O() {
    }

    static LinearLayout a(final Activity activity) {
        LinearLayout a = T.a((Context) activity);
        T.a(a, 24.0f);
        int a2 = T.a((Context) activity, 18.0f);
        a.setPadding(a2, a2, a2, a2);
        TextView a3 = T.a(activity, 16.0f, T.b_v, 700);
        a3.setText("赞助作者");
        a.addView(a3);
        TextView a4 = T.a(activity, 13.0f, T.d, J.m);
        a4.setText("赞助后请联系作者，备注“MiDuo”，即可获得授权码。");
        a4.setLineSpacing(0.0f, 1.3f);
        a.addView(a4, T.a(T.a(), activity, 8.0f));
        LinearLayout c = T.c(activity);
        TextView a5 = T.a((Context) activity, "微信", false, 44.0f);
        a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                O.a(activity, "微信赞助", "微信", "wechat.png", "MiDuo-赞助-微信.png");
            }
        });
        c.addView(a5, new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 1.0f));
        TextView a6 = T.a((Context) activity, "支付宝", false, 44.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                O.a(activity, "支付宝赞助", "支付宝", "alipay.png", "MiDuo-赞助-支付宝.png");
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = T.a((Context) activity, 10.0f);
        c.addView(a6, layoutParams);
        a.addView(c, T.a(T.a(), activity, 14.0f));
        return a;
    }

    static LinearLayout b(final Activity activity) {
        LinearLayout a = T.a((Context) activity);
        T.a(a, 24.0f);
        int a2 = T.a((Context) activity, 18.0f);
        a.setPadding(a2, a2, a2, a2);
        TextView a3 = T.a(activity, 16.0f, T.b_v, 700);
        a3.setText("联系作者");
        a.addView(a3);
        TextView a4 = T.a(activity, 13.0f, T.d, J.m);
        a4.setText("赞助后领取授权码、反馈问题或版本适配，都可以加作者。");
        a4.setLineSpacing(0.0f, 1.3f);
        a.addView(a4, T.a(T.a(), activity, 8.0f));
        LinearLayout c = T.c(activity);
        TextView a5 = T.a((Context) activity, "微信", false, 44.0f);
        a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                O.a(activity, "添加微信", "微信", "contact-wechat.png", "MiDuo-作者-微信.png");
            }
        });
        c.addView(a5, new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 1.0f));
        TextView a6 = T.a((Context) activity, "QQ", false, 44.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                O.a(activity, "添加 QQ", "QQ", "contact-qq.png", "MiDuo-作者-QQ.png");
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = T.a((Context) activity, 10.0f);
        c.addView(a6, layoutParams);
        a.addView(c, T.a(T.a(), activity, 14.0f));
        return a;
    }

    private static Bitmap a(Activity activity, String str) {
        try {
            InputStream open = activity.getAssets().open("sponsor/" + str);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(open);
                if (open != null) {
                    open.close();
                }
                return decodeStream;
            } finally {
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(final Activity activity, String str, String str2, String str3, final String str4) {
        final Bitmap a = a(activity, str3);
        if (a == null) {
            Toast.makeText(activity, "二维码读取失败", 0).show();
            return;
        }
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(1);
        LinearLayout a2 = T.a((Context) activity);
        T.a(a2, 28.0f);
        int a3 = T.a((Context) activity, 22.0f);
        a2.setPadding(a3, a3, a3, T.a((Context) activity, 18.0f));
        a2.setGravity(1);
        TextView a4 = T.a(activity, 20.0f, T.b_v, 800);
        a4.setText(str);
        a2.addView(a4);
        ImageView imageView = new ImageView(activity);
        imageView.setImageBitmap(a);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setBackground(T.a(-1, T.a((Context) activity, 16.0f)));
        imageView.setMaxWidth(T.a((Context) activity, 240.0f));
        imageView.setMaxHeight(Math.min(T.a((Context) activity, 360.0f), activity.getResources().getDisplayMetrics().heightPixels / 2));
        a2.addView(imageView, T.a(new LinearLayout.LayoutParams(-2, -2), activity, 16.0f));
        TextView a5 = T.a(activity, 12.0f, T.d, J.m);
        a5.setGravity(17);
        a5.setText("保存到相册后，用" + str2 + "“扫一扫”从相册选择这张图");
        a2.addView(a5, T.a(T.a(), activity, 12.0f));
        LinearLayout c = T.c(activity);
        TextView a6 = T.a((Context) activity, "关闭", false, 44.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        c.addView(a6, new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 1.0f));
        TextView a7 = T.a((Context) activity, "保存到相册", true, 44.0f);
        a7.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                O.a(activity, a, str4, view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, T.a((Context) activity, 44.0f), 2.0f);
        layoutParams.leftMargin = T.a((Context) activity, 10.0f);
        c.addView(a7, layoutParams);
        a2.addView(c, T.a(T.a(), activity, 16.0f));
        dialog.setContentView(a2);
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(Math.min(activity.getResources().getDisplayMetrics().widthPixels - T.a((Context) activity, 32.0f), T.a((Context) activity, 360.0f)), -2);
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity, Bitmap bitmap, String str, View view) {
        Toast.makeText(activity, a(activity, bitmap, str) ? "已保存到相册" : "保存失败", 0).show();
    }

    private static boolean a(Activity activity, Bitmap bitmap, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", "image/png");
        contentValues.put("relative_path", "Pictures/MiDuo");
        Uri insert = activity.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (insert == null) {
            return false;
        }
        try {
            OutputStream openOutputStream = activity.getContentResolver().openOutputStream(insert);
            if (openOutputStream != null) {
                try {
                    if (bitmap.compress(Bitmap.CompressFormat.PNG, 100, openOutputStream)) {
                        openOutputStream.close();
                        return true;
                    }
                } finally {
                }
            }
            if (openOutputStream != null) {
                openOutputStream.close();
            }
        } catch (IOException e) {
        }
        activity.getContentResolver().delete(insert, null, null);
        return false;
    }
}
