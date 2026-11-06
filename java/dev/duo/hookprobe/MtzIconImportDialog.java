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

/* renamed from: dev.duo.hookprobe.O */
/* loaded from: classes.dex */
final class MtzIconImportDialog {
    private MtzIconImportDialog() {
    }

    /* renamed from: a */
    static LinearLayout m1200a(final Activity activity) {
        LinearLayout m1411a = UiKit.m1411a((Context) activity);
        UiKit.m1418a(m1411a, 24.0f);
        int m1399a = UiKit.m1399a((Context) activity, 18.0f);
        m1411a.setPadding(m1399a, m1399a, m1399a, m1399a);
        TextView m1413a = UiKit.m1413a(activity, 16.0f, UiKit.f1345b, 700);
        m1413a.setText("赞助作者");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(activity, 13.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("赞助后请联系作者，备注“MiDuo”，即可获得授权码。");
        m1413a2.setLineSpacing(0.0f, 1.3f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), activity, 8.0f));
        LinearLayout m1430c = UiKit.m1430c(activity);
        TextView m1415a = UiKit.m1415a((Context) activity, "微信", false, 44.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MtzIconImportDialog.m1203a(activity, "微信赞助", "微信", "wechat.png", "MiDuo-赞助-微信.png");
            }
        });
        m1430c.addView(m1415a, new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 1.0f));
        TextView m1415a2 = UiKit.m1415a((Context) activity, "支付宝", false, 44.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MtzIconImportDialog.m1203a(activity, "支付宝赞助", "支付宝", "alipay.png", "MiDuo-赞助-支付宝.png");
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = UiKit.m1399a((Context) activity, 10.0f);
        m1430c.addView(m1415a2, layoutParams);
        m1411a.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), activity, 14.0f));
        return m1411a;
    }

    /* renamed from: b */
    static LinearLayout m1206b(final Activity activity) {
        LinearLayout m1411a = UiKit.m1411a((Context) activity);
        UiKit.m1418a(m1411a, 24.0f);
        int m1399a = UiKit.m1399a((Context) activity, 18.0f);
        m1411a.setPadding(m1399a, m1399a, m1399a, m1399a);
        TextView m1413a = UiKit.m1413a(activity, 16.0f, UiKit.f1345b, 700);
        m1413a.setText("联系作者");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(activity, 13.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("赞助后领取授权码、反馈问题或版本适配，都可以加作者。");
        m1413a2.setLineSpacing(0.0f, 1.3f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), activity, 8.0f));
        LinearLayout m1430c = UiKit.m1430c(activity);
        TextView m1415a = UiKit.m1415a((Context) activity, "微信", false, 44.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MtzIconImportDialog.m1203a(activity, "添加微信", "微信", "contact-wechat.png", "MiDuo-作者-微信.png");
            }
        });
        m1430c.addView(m1415a, new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 1.0f));
        TextView m1415a2 = UiKit.m1415a((Context) activity, "QQ", false, 44.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MtzIconImportDialog.m1203a(activity, "添加 QQ", "QQ", "contact-qq.png", "MiDuo-作者-QQ.png");
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 1.0f);
        layoutParams.leftMargin = UiKit.m1399a((Context) activity, 10.0f);
        m1430c.addView(m1415a2, layoutParams);
        m1411a.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), activity, 14.0f));
        return m1411a;
    }

    /* renamed from: a */
    private static Bitmap m1199a(Activity activity, String str) {
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
    /* renamed from: a */
    public static void m1203a(final Activity activity, String str, String str2, String str3, final String str4) {
        final Bitmap m1199a = m1199a(activity, str3);
        if (m1199a == null) {
            Toast.makeText(activity, "二维码读取失败", 0).show();
            return;
        }
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(1);
        LinearLayout m1411a = UiKit.m1411a((Context) activity);
        UiKit.m1418a(m1411a, 28.0f);
        int m1399a = UiKit.m1399a((Context) activity, 22.0f);
        m1411a.setPadding(m1399a, m1399a, m1399a, UiKit.m1399a((Context) activity, 18.0f));
        m1411a.setGravity(1);
        TextView m1413a = UiKit.m1413a(activity, 20.0f, UiKit.f1345b, 800);
        m1413a.setText(str);
        m1411a.addView(m1413a);
        ImageView imageView = new ImageView(activity);
        imageView.setImageBitmap(m1199a);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setBackground(UiKit.m1404a(-1, UiKit.m1399a((Context) activity, 16.0f)));
        imageView.setMaxWidth(UiKit.m1399a((Context) activity, 240.0f));
        imageView.setMaxHeight(Math.min(UiKit.m1399a((Context) activity, 360.0f), activity.getResources().getDisplayMetrics().heightPixels / 2));
        m1411a.addView(imageView, UiKit.m1410a(new LinearLayout.LayoutParams(-2, -2), activity, 16.0f));
        TextView m1413a2 = UiKit.m1413a(activity, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setGravity(17);
        m1413a2.setText("保存到相册后，用" + str2 + "“扫一扫”从相册选择这张图");
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), activity, 12.0f));
        LinearLayout m1430c = UiKit.m1430c(activity);
        TextView m1415a = UiKit.m1415a((Context) activity, "关闭", false, 44.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        m1430c.addView(m1415a, new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 1.0f));
        TextView m1415a2 = UiKit.m1415a((Context) activity, "保存到相册", true, 44.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.O$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MtzIconImportDialog.m1201a(activity, m1199a, str4, view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, UiKit.m1399a((Context) activity, 44.0f), 2.0f);
        layoutParams.leftMargin = UiKit.m1399a((Context) activity, 10.0f);
        m1430c.addView(m1415a2, layoutParams);
        m1411a.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), activity, 16.0f));
        dialog.setContentView(m1411a);
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setLayout(Math.min(activity.getResources().getDisplayMetrics().widthPixels - UiKit.m1399a((Context) activity, 32.0f), UiKit.m1399a((Context) activity, 360.0f)), -2);
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1201a(Activity activity, Bitmap bitmap, String str, View view) {
        Toast.makeText(activity, m1205a(activity, bitmap, str) ? "已保存到相册" : "保存失败", 0).show();
    }

    /* renamed from: a */
    private static boolean m1205a(Activity activity, Bitmap bitmap, String str) {
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
