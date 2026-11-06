package dev.duo.hookprobe;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;

/* renamed from: dev.duo.hookprobe.z */
/* loaded from: classes.dex */
final class WidgetBitmapPainter {

    /* renamed from: a */
    private static final Typeface f1894a = Typeface.create("sans-serif-light", 0);

    /* renamed from: b */
    private static final Typeface f1895b = Typeface.create("sans-serif", 0);

    /* renamed from: c */
    private static final Typeface f1896c = Typeface.create("sans-serif-medium", 0);

    /* renamed from: dev.duo.hookprobe.z$a */
    class a implements Comparator<Bundle> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Bundle bundle, Bundle bundle2) {
            return Long.compare(bundle.getLong("start"), bundle2.getLong("start"));
        }
    }

    private WidgetBitmapPainter() {
    }

    /* renamed from: a */
    static Bitmap m2046a(String str, boolean z, Bundle bundle) {
        if (!"battery".equals(str) && !"calendar".equals(str) && !"weather".equals(str)) {
            throw new IllegalArgumentException("未知组件类型：" + str);
        }
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        int i = z ? 854 : 400;
        float f = z ? 338.0f : 158.0f;
        float f2 = i;
        float min = Math.min(f2 / f, 2.5316455f);
        Bitmap createBitmap = Bitmap.createBitmap(i, RailCodec.f930m, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate((f2 - (f * min)) / 2.0f, (400.0f - (min * 158.0f)) / 2.0f);
        canvas.scale(min, min);
        TextPaint textPaint = new TextPaint(1);
        Path path = new Path();
        path.addRoundRect(new RectF(0.0f, 0.0f, f, 158.0f), 27.0f, 27.0f, Path.Direction.CW);
        if ("battery".equals(str)) {
            textPaint.setShader(new LinearGradient(0.0f, 0.0f, f * 0.35f, 158.0f, new int[]{1244999737, 1437378721, 1308226795}, new float[]{0.0f, 0.68f, 1.0f}, Shader.TileMode.CLAMP));
        } else if ("calendar".equals(str)) {
            textPaint.setColor(-1);
        } else {
            textPaint.setShader(new LinearGradient(0.0f, 0.0f, f * 0.25f, 158.0f, bundle2.getBoolean("isNight") ? new int[]{-15721671, -14664859, -13215615} : new int[]{-14392153, -12875828, -9525545}, new float[]{0.0f, 0.6f, 1.0f}, Shader.TileMode.CLAMP));
        }
        canvas.drawPath(path, textPaint);
        textPaint.setShader(null);
        canvas.save();
        canvas.clipPath(path);
        if ("battery".equals(str)) {
            m2053a(canvas, textPaint, z, bundle2);
        } else if ("calendar".equals(str)) {
            m2055b(canvas, textPaint, z, bundle2);
        } else {
            m2056c(canvas, textPaint, z, bundle2);
        }
        canvas.restore();
        if ("battery".equals(str)) {
            textPaint.setColor(956301311);
            textPaint.setStyle(Paint.Style.STROKE);
            textPaint.setStrokeWidth(1.0f);
            canvas.drawRoundRect(new RectF(0.5f, 0.5f, f - 0.5f, 157.5f), 26.5f, 26.5f, textPaint);
        }
        return createBitmap;
    }

    /* renamed from: b */
    private static void m2055b(Canvas canvas, TextPaint textPaint, boolean z, Bundle bundle) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(bundle.getLong("now", System.currentTimeMillis()));
        String format = new SimpleDateFormat("EEEE", Locale.SIMPLIFIED_CHINESE).format(calendar.getTime());
        float f = z ? 143.0f : 126.0f;
        Typeface typeface = f1896c;
        m2054b(canvas, textPaint, format, 16.0f, 26.0f, f, 11.0f, -50384, typeface);
        m2054b(canvas, textPaint, String.valueOf(calendar.get(5)), 16.0f, 62.0f, 126.0f, 36.0f, -16777216, f1894a);
        if (z) {
            textPaint.setColor(-1250065);
            textPaint.setStrokeWidth(1.0f);
            canvas.drawLine(179.0f, 16.0f, 179.0f, 142.0f, textPaint);
            calendar.add(5, 1);
            m2054b(canvas, textPaint, "明天", 196.0f, 26.0f, 126.0f, 11.0f, -9671568, typeface);
            m2054b(canvas, textPaint, (calendar.get(2) + 1) + " 月 " + calendar.get(5) + " 日", 196.0f, 59.0f, 126.0f, 22.0f, -16777216, f1895b);
        }
        String string = bundle.getString("error", "");
        if (!string.isEmpty()) {
            m2051a(canvas, textPaint, string, 16.0f, 91.0f, z ? 143.0f : 126.0f, -9671568);
            return;
        }
        m2052a(canvas, textPaint, bundle.getParcelableArrayList("todayEvents"), 16.0f, z ? 143.0f : 126.0f, false);
        if (z) {
            m2052a(canvas, textPaint, bundle.getParcelableArrayList("tomorrowEvents"), 196.0f, 126.0f, true);
        }
    }

    /* renamed from: c */
    private static void m2056c(Canvas canvas, TextPaint textPaint, boolean z, Bundle bundle) {
        float f = z ? 111.0f : 126.0f;
        String string = bundle.getString("city", "");
        String str = string.isEmpty() ? "天气" : string;
        Typeface typeface = f1896c;
        m2054b(canvas, textPaint, str, 16.0f, 31.0f, f, 16.0f, -1, typeface);
        String string2 = bundle.getString("error", "");
        if (!string2.isEmpty() || string.isEmpty() || !bundle.containsKey("temperature")) {
            if (string2.isEmpty()) {
                string2 = "暂无天气数据";
            }
            m2051a(canvas, textPaint, string2, 16.0f, 76.0f, z ? 306.0f : 126.0f, -1);
            return;
        }
        String str2 = bundle.getInt("temperature") + "°";
        Typeface typeface2 = f1894a;
        textPaint.setTypeface(typeface2);
        textPaint.setTextSize(49.0f);
        m2054b(canvas, textPaint, str2, 16.0f, 78.0f, f, Math.min(49.0f, (f * 49.0f) / textPaint.measureText(str2)), -1, typeface2);
        float f2 = f;
        boolean z2 = bundle.getBoolean("isNight");
        int i = bundle.getInt("conditionCode", -1);
        String string3 = bundle.getString("condition", "");
        if (string3.isEmpty()) {
            string3 = "天气未知";
        }
        String str3 = string3;
        if (!z) {
            m2049a(canvas, textPaint, i, z2, 16.0f, 91.0f, 20.0f);
        }
        m2054b(canvas, textPaint, str3, 16.0f, z ? 99.0f : 127.0f, f2, 12.0f, -1, typeface);
        m2054b(canvas, textPaint, "最高 " + (bundle.containsKey("high") ? bundle.getInt("high") + "°" : "—") + "\u3000最低 " + (bundle.containsKey("low") ? bundle.getInt("low") + "°" : "—"), 16.0f, z ? 114.0f : 142.0f, f2, 11.0f, -1, typeface);
        if (z) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("hourly");
            if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
                m2054b(canvas, textPaint, bundle.getString("hourlyError", "暂无小时预报"), 144.0f, 76.0f, 179.0f, 12.0f, -1, f1895b);
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("H时", Locale.SIMPLIFIED_CHINESE);
            int i2 = 0;
            while (i2 < Math.min(5, parcelableArrayList.size())) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i2);
                float f3 = ((i2 + 0.5f) * 35.8f) + 144.0f;
                int i3 = i2;
                SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
                ArrayList arrayList = parcelableArrayList;
                m2050a(canvas, textPaint, bundle2.containsKey("time") ? simpleDateFormat.format(Long.valueOf(bundle2.getLong("time"))) : "—", f3, 38.0f, 33.0f, 11.0f, -1, f1896c);
                m2049a(canvas, textPaint, bundle2.getInt("conditionCode", -1), bundle2.getBoolean("isNight", z2), f3 - 9.5f, 52.0f, 19.0f);
                m2050a(canvas, textPaint, bundle2.containsKey("temperature") ? bundle2.getInt("temperature") + "°" : "—", f3, 96.0f, 33.0f, 14.0f, -1, f1895b);
                i2 = i3 + 1;
                simpleDateFormat = simpleDateFormat2;
                parcelableArrayList = arrayList;
            }
            m2054b(canvas, textPaint, "小时预报", 144.0f, 140.0f, 177.0f, 10.0f, -1, f1895b);
        }
    }

    /* renamed from: b */
    private static void m2054b(Canvas canvas, TextPaint textPaint, String str, float f, float f2, float f3, float f4, int i, Typeface typeface) {
        textPaint.setStyle(Paint.Style.FILL);
        textPaint.setColor(i);
        textPaint.setTypeface(typeface);
        textPaint.setTextSize(f4);
        textPaint.setTextAlign(Paint.Align.LEFT);
        canvas.drawText(TextUtils.ellipsize(str.replace('\n', ' ').replace('\r', ' '), textPaint, f3, TextUtils.TruncateAt.END).toString(), f, f2, textPaint);
    }

    /* renamed from: a */
    private static void m2053a(Canvas canvas, TextPaint textPaint, boolean z, Bundle bundle) {
        String string = bundle.getString("error", "");
        int i = bundle.getInt("phoneLevel", -1);
        if (z) {
            int[] iArr = {i, bundle.getInt("wearableLevel", -1), bundle.getInt("headsetLevel", -1), bundle.getInt("keyboardLevel", -1)};
            int i2 = 0;
            while (i2 < 4) {
                float f = (i2 * 80.666664f) + 13.0f;
                m2047a(canvas, textPaint, f + 3.0f, 34.0f, 64.0f, iArr[i2], i2, i2 == 0 && bundle.getBoolean("charging"));
                if (iArr[i2] >= 0) {
                    m2050a(canvas, textPaint, iArr[i2] + "%", f + 35.0f, 125.0f, 70.0f, 20.0f, -1, f1895b);
                }
                i2++;
            }
            if (string.isEmpty()) {
                string = bundle.getString("deviceError", "");
            }
            String str = string;
            if (str.isEmpty()) {
                return;
            }
            m2054b(canvas, textPaint, str, 16.0f, 147.0f, 306.0f, 11.0f, -1, f1896c);
            return;
        }
        m2047a(canvas, textPaint, 11.0f, 10.0f, 67.0f, i, 0, bundle.getBoolean("charging"));
        if (string.isEmpty()) {
            m2054b(canvas, textPaint, i < 0 ? "—" : i + "%", 12.0f, 140.0f, 134.0f, 44.0f, -1, f1894a);
        } else {
            m2051a(canvas, textPaint, string, 12.0f, 103.0f, 134.0f, -1);
        }
    }

    /* renamed from: a */
    private static void m2047a(Canvas canvas, Paint paint, float f, float f2, float f3, int i, int i2, boolean z) {
        Canvas canvas2;
        Paint paint2;
        canvas.save();
        canvas.translate(f, f2);
        float f4 = f3 / 68.0f;
        canvas.scale(f4, f4);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(6.0f);
        paint.setColor(620756991);
        canvas.drawCircle(34.0f, 34.0f, 27.0f, paint);
        if (i < 0) {
            canvas2 = canvas;
            paint2 = paint;
        } else {
            paint.setColor((i > 20 || z) ? -13512360 : -47814);
            if (i <= 0) {
                canvas2 = canvas;
                paint2 = paint;
            } else {
                canvas2 = canvas;
                paint2 = paint;
                canvas2.drawArc(new RectF(7.0f, 7.0f, 61.0f, 61.0f), -90.0f, Math.min(i, 100) * 3.6f, false, paint2);
            }
            m2048a(canvas2, paint2, i2);
            if (z) {
                paint2.setStyle(Paint.Style.FILL);
                paint2.setColor(-1);
                Path path = new Path();
                path.moveTo(56.0f, 39.0f);
                path.lineTo(50.0f, 49.0f);
                path.lineTo(55.0f, 49.0f);
                path.lineTo(52.0f, 57.0f);
                path.lineTo(61.0f, 45.0f);
                path.lineTo(56.0f, 45.0f);
                path.close();
                canvas2.drawPath(path, paint2);
            }
        }
        canvas2.restore();
        paint2.setStyle(Paint.Style.FILL);
    }

    /* renamed from: a */
    private static void m2048a(Canvas canvas, Paint paint, int i) {
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(1.7f);
        paint.setStrokeJoin(Paint.Join.ROUND);
        if (i == 0) {
            canvas.drawRoundRect(new RectF(27.0f, 20.0f, 41.0f, 48.0f), 3.0f, 3.0f, paint);
            canvas.drawLine(32.0f, 23.0f, 36.0f, 23.0f, paint);
            canvas.drawLine(32.0f, 45.0f, 36.0f, 45.0f, paint);
            return;
        }
        if (i == 1) {
            canvas.drawRoundRect(new RectF(26.0f, 25.0f, 42.0f, 43.0f), 5.0f, 5.0f, paint);
            canvas.drawLine(44.0f, 31.0f, 44.0f, 35.0f, paint);
            canvas.drawLine(34.0f, 29.0f, 34.0f, 34.0f, paint);
            canvas.drawLine(34.0f, 34.0f, 37.0f, 36.0f, paint);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRoundRect(new RectF(30.0f, 20.0f, 38.0f, 25.0f), 1.0f, 1.0f, paint);
            canvas.drawRoundRect(new RectF(30.0f, 43.0f, 38.0f, 48.0f), 1.0f, 1.0f, paint);
            return;
        }
        if (i == 2) {
            paint.setStyle(Paint.Style.FILL);
            canvas.drawOval(new RectF(20.0f, 21.0f, 29.0f, 33.0f), paint);
            canvas.drawRoundRect(new RectF(26.0f, 26.0f, 30.0f, 46.0f), 2.0f, 2.0f, paint);
            canvas.drawOval(new RectF(39.0f, 21.0f, 48.0f, 33.0f), paint);
            canvas.drawRoundRect(new RectF(38.0f, 26.0f, 42.0f, 46.0f), 2.0f, 2.0f, paint);
            return;
        }
        canvas.drawRoundRect(new RectF(19.0f, 25.0f, 49.0f, 43.0f), 3.0f, 3.0f, paint);
        paint.setStrokeWidth(1.4f);
        for (int i2 = 0; i2 < 2; i2++) {
            for (int i3 = 0; i3 < 5; i3++) {
                canvas.drawPoint((i3 * 5) + 24, (i2 * 5) + 30, paint);
            }
        }
        canvas.drawLine(27.0f, 39.0f, 41.0f, 39.0f, paint);
    }

    /* renamed from: a */
    private static void m2052a(Canvas canvas, TextPaint textPaint, ArrayList<Bundle> arrayList, float f, float f2, boolean z) {
        int i;
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        if (arrayList == null) {
            i = 0;
        } else {
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            while (i3 < size) {
                Bundle bundle = arrayList.get(i3);
                i3++;
                Bundle bundle2 = bundle;
                if (bundle2.getBoolean("allDay")) {
                    i4++;
                } else {
                    arrayList2.add(bundle2);
                }
            }
            i = i4;
        }
        Collections.sort(arrayList2, new a());
        float f3 = z ? 74.0f : 80.0f;
        if (i > 0) {
            textPaint.setColor(-16087809);
            float f4 = f + 6.5f;
            canvas.drawCircle(f4, 82.0f, 6.5f, textPaint);
            Path path = new Path();
            for (int i5 = 0; i5 < 10; i5++) {
                double d = ((i5 * 3.141592653589793d) / 5.0d) - 1.5707963267948966d;
                float f5 = i5 % 2 == 0 ? 4.5f : 2.0f;
                float cos = (((float) Math.cos(d)) * f5) + f4;
                float sin = (((float) Math.sin(d)) * f5) + 82.0f;
                if (i5 == 0) {
                    path.moveTo(cos, sin);
                } else {
                    path.lineTo(cos, sin);
                }
            }
            path.close();
            textPaint.setColor(-1);
            canvas.drawPath(path, textPaint);
            m2054b(canvas, textPaint, i + " 项全天日程", f + 17.0f, 86.0f, f2 - 17.0f, 12.0f, -15658735, f1896c);
            f3 = 94.0f;
        }
        if (arrayList2.isEmpty()) {
            m2054b(canvas, textPaint, z ? "明天没有其他日程" : "今天没有其他日程", f, i > 0 ? 112.0f : 98.0f, f2, 12.0f, -7303017, f1895b);
            return;
        }
        Canvas canvas2 = canvas;
        TextPaint textPaint2 = textPaint;
        float f6 = f;
        int i6 = 65.0f + f3 <= 146.0f ? 2 : 1;
        int i7 = (arrayList2.size() <= i6 || i6 != 2) ? i6 : 1;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm", Locale.SIMPLIFIED_CHINESE);
        while (i2 < Math.min(i7, arrayList2.size())) {
            Bundle bundle3 = (Bundle) arrayList2.get(i2);
            textPaint2.setColor((bundle3.getInt("color", z ? -5287202 : -47814) & 16777215) | (-16777216));
            int color = textPaint2.getColor();
            textPaint2.setColor(Color.rgb(255 - ((255 - Color.red(color)) / 12), 255 - ((255 - Color.green(color)) / 12), 255 - ((255 - Color.blue(color)) / 12)));
            float f7 = 30.0f + f3;
            canvas2.drawRoundRect(new RectF(f6, f3, f6 + f2, f7), 3.0f, 3.0f, textPaint2);
            textPaint2.setColor(color);
            canvas2.drawRect(f, f3, f + 2.0f, f7, textPaint2);
            float f8 = f3;
            float f9 = f + 6.0f;
            float f10 = f2 - 10.0f;
            m2054b(canvas, textPaint, bundle3.getString("title", "未命名日程"), f9, f8 + 12.0f, f10, 11.0f, Color.rgb((Color.red(color) * 2) / 3, (Color.green(color) * 2) / 3, (Color.blue(color) * 2) / 3), f1896c);
            textPaint2 = textPaint;
            m2054b(canvas, textPaint2, simpleDateFormat.format(Long.valueOf(bundle3.getLong("start"))) + "–" + simpleDateFormat.format(Long.valueOf(bundle3.getLong("end"))), f9, f8 + 25.0f, f10, 11.0f, color, f1895b);
            i2++;
            f3 = f8 + 35.0f;
            canvas2 = canvas;
            f6 = f;
        }
        float f11 = f3;
        if (arrayList2.size() > i7) {
            m2054b(canvas, textPaint, "还有 " + (arrayList2.size() - i7) + " 项日程", f, f11 + 12.0f, f2, 11.0f, -7303017, f1895b);
        }
    }

    /* renamed from: a */
    private static void m2049a(Canvas canvas, TextPaint textPaint, int i, boolean z, float f, float f2, float f3) {
        float f4;
        float f5;
        Canvas canvas2;
        TextPaint textPaint2;
        Canvas canvas3 = canvas;
        boolean z2 = (i >= 4 && i <= 6) || (i >= 8 && i <= 12) || i == 22 || i == 25;
        boolean z3 = i >= 13 && i <= 17;
        boolean z4 = i == 7;
        boolean z5 = i == 2 || i == 3 || (i >= 18 && i <= 21) || i == 23;
        canvas3.save();
        canvas3.translate(f, f2);
        float f6 = f3 / 24.0f;
        canvas3.scale(f6, f6);
        textPaint.setStyle(Paint.Style.FILL);
        float f7 = 5.0f;
        if (i == 0 || i == 1) {
            canvas3.save();
            if (i == 1) {
                canvas3.translate(-1.0f, -1.0f);
                canvas3.scale(0.78f, 0.78f);
            }
            if (z) {
                textPaint.setColor(-5187);
                Path path = new Path();
                path.moveTo(15.0f, 2.0f);
                path.cubicTo(3.0f, 0.0f, 0.0f, 17.0f, 11.0f, 21.0f);
                path.cubicTo(17.0f, 23.0f, 21.0f, 19.0f, 22.0f, 15.0f);
                path.cubicTo(13.0f, 18.0f, 8.0f, 9.0f, 15.0f, 2.0f);
                path.close();
                canvas3.drawPath(path, textPaint);
                f4 = 9.0f;
                f5 = 5.0f;
            } else {
                textPaint.setColor(-10742);
                canvas3.drawCircle(12.0f, 12.0f, 5.0f, textPaint);
                textPaint.setStrokeWidth(1.8f);
                textPaint.setStrokeCap(Paint.Cap.ROUND);
                int i2 = 0;
                for (int i3 = 8; i2 < i3; i3 = i3) {
                    double d = (i2 * 3.141592653589793d) / 4.0d;
                    float cos = (float) Math.cos(d);
                    float sin = (float) Math.sin(d);
                    canvas3.drawLine((cos * 9.0f) + 12.0f, (sin * 9.0f) + 12.0f, (cos * 11.0f) + 12.0f, (sin * 11.0f) + 12.0f, textPaint);
                    i2++;
                    canvas3 = canvas;
                    f7 = 5.0f;
                }
                f4 = 9.0f;
                f5 = f7;
            }
            canvas.restore();
        } else {
            f4 = 9.0f;
            f5 = 5.0f;
        }
        if (i == 1 || z2 || z3 || z4) {
            canvas2 = canvas;
            textPaint2 = textPaint;
        } else {
            if (!z5) {
                if (i != 0) {
                    m2050a(canvas, textPaint, "?", 12.0f, 20.0f, 24.0f, 22.0f, -1, f1894a);
                }
                canvas.restore();
            }
            canvas2 = canvas;
            textPaint2 = textPaint;
        }
        textPaint2.setColor(-1182726);
        canvas2.drawCircle(7.0f, 12.0f, 4.0f, textPaint2);
        canvas2.drawCircle(12.0f, f4, f5, textPaint2);
        canvas2.drawCircle(18.0f, 12.0f, 4.0f, textPaint2);
        canvas2.drawRoundRect(new RectF(4.0f, 12.0f, 21.0f, 16.0f), 2.0f, 2.0f, textPaint2);
        textPaint2.setStrokeWidth(1.7f);
        textPaint2.setStrokeCap(Paint.Cap.ROUND);
        if (z2) {
            textPaint2.setColor(-7611649);
            int i4 = 0;
            while (i4 < 3) {
                int i5 = i4 * 5;
                canvas2.drawLine(i5 + 7, 18.0f, i5 + 5, 22.0f, textPaint2);
                i4++;
                canvas2 = canvas;
            }
        } else if (z3) {
            textPaint2.setColor(-1);
            textPaint2.setStrokeWidth(1.2f);
            for (int i6 = 0; i6 < 2; i6++) {
                float f8 = (i6 * 8) + 8;
                canvas.drawLine(f8 - 2.0f, 20.0f, f8 + 2.0f, 20.0f, textPaint2);
                float f9 = f8 - 1.0f;
                float f10 = f8 + 1.0f;
                textPaint2 = textPaint;
                canvas.drawLine(f9, 18.0f, f10, 22.0f, textPaint2);
                canvas.drawLine(f9, 22.0f, f10, 18.0f, textPaint2);
            }
        } else if (z4) {
            textPaint2.setColor(-10742);
            Path path2 = new Path();
            path2.moveTo(12.0f, 15.0f);
            path2.lineTo(8.0f, 21.0f);
            path2.lineTo(12.0f, 21.0f);
            path2.lineTo(10.0f, 24.0f);
            path2.lineTo(17.0f, 18.0f);
            path2.lineTo(13.0f, 18.0f);
            path2.lineTo(16.0f, 15.0f);
            path2.close();
            canvas.drawPath(path2, textPaint2);
        } else if (z5) {
            textPaint2.setColor(-3087891);
            canvas.drawLine(3.0f, 19.0f, 21.0f, 19.0f, textPaint2);
            canvas.drawLine(6.0f, 22.0f, 18.0f, 22.0f, textPaint);
        }
        canvas.restore();
    }

    /* renamed from: a */
    private static void m2050a(Canvas canvas, TextPaint textPaint, String str, float f, float f2, float f3, float f4, int i, Typeface typeface) {
        textPaint.setTypeface(typeface);
        textPaint.setTextSize(f4);
        String charSequence = TextUtils.ellipsize(str, textPaint, f3, TextUtils.TruncateAt.END).toString();
        m2054b(canvas, textPaint, charSequence, f - (textPaint.measureText(charSequence) / 2.0f), f2, f3, f4, i, typeface);
    }

    /* renamed from: a */
    private static void m2051a(Canvas canvas, TextPaint textPaint, String str, float f, float f2, float f3, int i) {
        String replace = str.replace('\n', ' ').replace('\r', ' ');
        textPaint.setTypeface(f1895b);
        textPaint.setTextSize(12.0f);
        for (int i2 = 0; i2 < 3 && !replace.isEmpty(); i2++) {
            int breakText = textPaint.breakText(replace, true, f3, null);
            if (breakText > 0 && breakText < replace.length() && Character.isHighSurrogate(replace.charAt(breakText - 1))) {
                breakText--;
            }
            if (i2 == 2) {
                breakText = replace.length();
            }
            m2054b(canvas, textPaint, replace.substring(0, breakText), f, f2 + (i2 * 17), f3, 12.0f, i, f1895b);
            replace = replace.substring(breakText);
        }
    }
}
