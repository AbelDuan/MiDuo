package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class z {
    private static final android.graphics.Typeface a = android.graphics.Typeface.create("sans-serif-light", 0);
    private static final android.graphics.Typeface b = android.graphics.Typeface.create("sans-serif", 0);
    private static final android.graphics.Typeface c = android.graphics.Typeface.create("sans-serif-medium", 0);

    class a implements java.util.Comparator<android.os.Bundle> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(android.os.Bundle bundle, android.os.Bundle bundle2) {
            return java.lang.Long.compare(bundle.getLong("start"), bundle2.getLong("start"));
        }
    }

    private z() {
    }

    static android.graphics.Bitmap a(java.lang.String str, boolean z, android.os.Bundle bundle) {
        if (!"battery".equals(str) && !"calendar".equals(str) && !"weather".equals(str)) {
            throw new java.lang.IllegalArgumentException("未知组件类型：" + str);
        }
        android.os.Bundle bundle2 = bundle == null ? new android.os.Bundle() : bundle;
        int i = z ? 854 : 400;
        float f = z ? 338.0f : 158.0f;
        float f2 = i;
        float min = java.lang.Math.min(f2 / f, 2.5316455f);
        android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(i, dev.duo.hookprobe.J.m, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(createBitmap);
        canvas.translate((f2 - (f * min)) / 2.0f, (400.0f - (min * 158.0f)) / 2.0f);
        canvas.scale(min, min);
        android.text.TextPaint textPaint = new android.text.TextPaint(1);
        android.graphics.Path path = new android.graphics.Path();
        path.addRoundRect(new android.graphics.RectF(0.0f, 0.0f, f, 158.0f), 27.0f, 27.0f, android.graphics.Path.Direction.CW);
        if ("battery".equals(str)) {
            textPaint.setShader(new android.graphics.LinearGradient(0.0f, 0.0f, f * 0.35f, 158.0f, new int[]{1244999737, 1437378721, 1308226795}, new float[]{0.0f, 0.68f, 1.0f}, android.graphics.Shader.TileMode.CLAMP));
        } else if ("calendar".equals(str)) {
            textPaint.setColor(-1);
        } else {
            textPaint.setShader(new android.graphics.LinearGradient(0.0f, 0.0f, f * 0.25f, 158.0f, bundle2.getBoolean("isNight") ? new int[]{-15721671, -14664859, -13215615} : new int[]{-14392153, -12875828, -9525545}, new float[]{0.0f, 0.6f, 1.0f}, android.graphics.Shader.TileMode.CLAMP));
        }
        canvas.drawPath(path, textPaint);
        textPaint.setShader(null);
        canvas.save();
        canvas.clipPath(path);
        if ("battery".equals(str)) {
            a(canvas, textPaint, z, bundle2);
        } else if ("calendar".equals(str)) {
            b(canvas, textPaint, z, bundle2);
        } else {
            c(canvas, textPaint, z, bundle2);
        }
        canvas.restore();
        if ("battery".equals(str)) {
            textPaint.setColor(956301311);
            textPaint.setStyle(android.graphics.Paint.Style.STROKE);
            textPaint.setStrokeWidth(1.0f);
            canvas.drawRoundRect(new android.graphics.RectF(0.5f, 0.5f, f - 0.5f, 157.5f), 26.5f, 26.5f, textPaint);
        }
        return createBitmap;
    }

    private static void b(android.graphics.Canvas canvas, android.text.TextPaint textPaint, boolean z, android.os.Bundle bundle) {
        java.util.Calendar calendar = java.util.Calendar.getInstance();
        calendar.setTimeInMillis(bundle.getLong("now", java.lang.System.currentTimeMillis()));
        java.lang.String format = new java.text.SimpleDateFormat("EEEE", java.util.Locale.SIMPLIFIED_CHINESE).format(calendar.getTime());
        float f = z ? 143.0f : 126.0f;
        android.graphics.Typeface typeface = c;
        b(canvas, textPaint, format, 16.0f, 26.0f, f, 11.0f, -50384, typeface);
        b(canvas, textPaint, java.lang.String.valueOf(calendar.get(5)), 16.0f, 62.0f, 126.0f, 36.0f, -16777216, a);
        if (z) {
            textPaint.setColor(-1250065);
            textPaint.setStrokeWidth(1.0f);
            canvas.drawLine(179.0f, 16.0f, 179.0f, 142.0f, textPaint);
            calendar.add(5, 1);
            b(canvas, textPaint, "明天", 196.0f, 26.0f, 126.0f, 11.0f, -9671568, typeface);
            b(canvas, textPaint, (calendar.get(2) + 1) + " 月 " + calendar.get(5) + " 日", 196.0f, 59.0f, 126.0f, 22.0f, -16777216, b);
        }
        java.lang.String string = bundle.getString("error", "");
        if (!string.isEmpty()) {
            a(canvas, textPaint, string, 16.0f, 91.0f, z ? 143.0f : 126.0f, -9671568);
            return;
        }
        a(canvas, textPaint, bundle.getParcelableArrayList("todayEvents"), 16.0f, z ? 143.0f : 126.0f, false);
        if (z) {
            a(canvas, textPaint, bundle.getParcelableArrayList("tomorrowEvents"), 196.0f, 126.0f, true);
        }
    }

    private static void c(android.graphics.Canvas canvas, android.text.TextPaint textPaint, boolean z, android.os.Bundle bundle) {
        float f = z ? 111.0f : 126.0f;
        java.lang.String string = bundle.getString("city", "");
        java.lang.String str = string.isEmpty() ? "天气" : string;
        android.graphics.Typeface typeface = c;
        b(canvas, textPaint, str, 16.0f, 31.0f, f, 16.0f, -1, typeface);
        java.lang.String string2 = bundle.getString("error", "");
        if (!string2.isEmpty() || string.isEmpty() || !bundle.containsKey("temperature")) {
            if (string2.isEmpty()) {
                string2 = "暂无天气数据";
            }
            a(canvas, textPaint, string2, 16.0f, 76.0f, z ? 306.0f : 126.0f, -1);
            return;
        }
        java.lang.String str2 = bundle.getInt("temperature") + "°";
        android.graphics.Typeface typeface2 = a;
        textPaint.setTypeface(typeface2);
        textPaint.setTextSize(49.0f);
        b(canvas, textPaint, str2, 16.0f, 78.0f, f, java.lang.Math.min(49.0f, (f * 49.0f) / textPaint.measureText(str2)), -1, typeface2);
        float f2 = f;
        boolean z2 = bundle.getBoolean("isNight");
        int i = bundle.getInt("conditionCode", -1);
        java.lang.String string3 = bundle.getString("condition", "");
        if (string3.isEmpty()) {
            string3 = "天气未知";
        }
        java.lang.String str3 = string3;
        if (!z) {
            a(canvas, textPaint, i, z2, 16.0f, 91.0f, 20.0f);
        }
        b(canvas, textPaint, str3, 16.0f, z ? 99.0f : 127.0f, f2, 12.0f, -1, typeface);
        b(canvas, textPaint, "最高 " + (bundle.containsKey("high") ? bundle.getInt("high") + "°" : "—") + "\u3000最低 " + (bundle.containsKey("low") ? bundle.getInt("low") + "°" : "—"), 16.0f, z ? 114.0f : 142.0f, f2, 11.0f, -1, typeface);
        if (z) {
            java.util.ArrayList parcelableArrayList = bundle.getParcelableArrayList("hourly");
            if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
                b(canvas, textPaint, bundle.getString("hourlyError", "暂无小时预报"), 144.0f, 76.0f, 179.0f, 12.0f, -1, b);
                return;
            }
            java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("H时", java.util.Locale.SIMPLIFIED_CHINESE);
            int i2 = 0;
            while (i2 < java.lang.Math.min(5, parcelableArrayList.size())) {
                android.os.Bundle bundle2 = (android.os.Bundle) parcelableArrayList.get(i2);
                float f3 = ((i2 + 0.5f) * 35.8f) + 144.0f;
                int i3 = i2;
                java.text.SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
                java.util.ArrayList arrayList = parcelableArrayList;
                a(canvas, textPaint, bundle2.containsKey("time") ? simpleDateFormat.format(java.lang.Long.valueOf(bundle2.getLong("time"))) : "—", f3, 38.0f, 33.0f, 11.0f, -1, c);
                a(canvas, textPaint, bundle2.getInt("conditionCode", -1), bundle2.getBoolean("isNight", z2), f3 - 9.5f, 52.0f, 19.0f);
                a(canvas, textPaint, bundle2.containsKey("temperature") ? bundle2.getInt("temperature") + "°" : "—", f3, 96.0f, 33.0f, 14.0f, -1, b);
                i2 = i3 + 1;
                simpleDateFormat = simpleDateFormat2;
                parcelableArrayList = arrayList;
            }
            b(canvas, textPaint, "小时预报", 144.0f, 140.0f, 177.0f, 10.0f, -1, b);
        }
    }

    private static void b(android.graphics.Canvas canvas, android.text.TextPaint textPaint, java.lang.String str, float f, float f2, float f3, float f4, int i, android.graphics.Typeface typeface) {
        textPaint.setStyle(android.graphics.Paint.Style.FILL);
        textPaint.setColor(i);
        textPaint.setTypeface(typeface);
        textPaint.setTextSize(f4);
        textPaint.setTextAlign(android.graphics.Paint.Align.LEFT);
        canvas.drawText(android.text.TextUtils.ellipsize(str.replace('\n', ' ').replace('\r', ' '), textPaint, f3, android.text.TextUtils.TruncateAt.END).toString(), f, f2, textPaint);
    }

    private static void a(android.graphics.Canvas canvas, android.text.TextPaint textPaint, boolean z, android.os.Bundle bundle) {
        java.lang.String string = bundle.getString("error", "");
        int i = bundle.getInt("phoneLevel", -1);
        if (z) {
            int[] iArr = {i, bundle.getInt("wearableLevel", -1), bundle.getInt("headsetLevel", -1), bundle.getInt("keyboardLevel", -1)};
            int i2 = 0;
            while (i2 < 4) {
                float f = (i2 * 80.666664f) + 13.0f;
                a(canvas, textPaint, f + 3.0f, 34.0f, 64.0f, iArr[i2], i2, i2 == 0 && bundle.getBoolean("charging"));
                if (iArr[i2] >= 0) {
                    a(canvas, textPaint, iArr[i2] + "%", f + 35.0f, 125.0f, 70.0f, 20.0f, -1, b);
                }
                i2++;
            }
            if (string.isEmpty()) {
                string = bundle.getString("deviceError", "");
            }
            java.lang.String str = string;
            if (str.isEmpty()) {
                return;
            }
            b(canvas, textPaint, str, 16.0f, 147.0f, 306.0f, 11.0f, -1, c);
            return;
        }
        a(canvas, textPaint, 11.0f, 10.0f, 67.0f, i, 0, bundle.getBoolean("charging"));
        if (string.isEmpty()) {
            b(canvas, textPaint, i < 0 ? "—" : i + "%", 12.0f, 140.0f, 134.0f, 44.0f, -1, a);
        } else {
            a(canvas, textPaint, string, 12.0f, 103.0f, 134.0f, -1);
        }
    }

    private static void a(android.graphics.Canvas canvas, android.graphics.Paint paint, float f, float f2, float f3, int i, int i2, boolean z) {
        android.graphics.Canvas canvas2;
        android.graphics.Paint paint2;
        canvas.save();
        canvas.translate(f, f2);
        float f4 = f3 / 68.0f;
        canvas.scale(f4, f4);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
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
                canvas2.drawArc(new android.graphics.RectF(7.0f, 7.0f, 61.0f, 61.0f), -90.0f, java.lang.Math.min(i, 100) * 3.6f, false, paint2);
            }
            a(canvas2, paint2, i2);
            if (z) {
                paint2.setStyle(android.graphics.Paint.Style.FILL);
                paint2.setColor(-1);
                android.graphics.Path path = new android.graphics.Path();
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
        paint2.setStyle(android.graphics.Paint.Style.FILL);
    }

    private static void a(android.graphics.Canvas canvas, android.graphics.Paint paint, int i) {
        paint.setColor(-1);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(1.7f);
        paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        if (i == 0) {
            canvas.drawRoundRect(new android.graphics.RectF(27.0f, 20.0f, 41.0f, 48.0f), 3.0f, 3.0f, paint);
            canvas.drawLine(32.0f, 23.0f, 36.0f, 23.0f, paint);
            canvas.drawLine(32.0f, 45.0f, 36.0f, 45.0f, paint);
            return;
        }
        if (i == 1) {
            canvas.drawRoundRect(new android.graphics.RectF(26.0f, 25.0f, 42.0f, 43.0f), 5.0f, 5.0f, paint);
            canvas.drawLine(44.0f, 31.0f, 44.0f, 35.0f, paint);
            canvas.drawLine(34.0f, 29.0f, 34.0f, 34.0f, paint);
            canvas.drawLine(34.0f, 34.0f, 37.0f, 36.0f, paint);
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawRoundRect(new android.graphics.RectF(30.0f, 20.0f, 38.0f, 25.0f), 1.0f, 1.0f, paint);
            canvas.drawRoundRect(new android.graphics.RectF(30.0f, 43.0f, 38.0f, 48.0f), 1.0f, 1.0f, paint);
            return;
        }
        if (i == 2) {
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawOval(new android.graphics.RectF(20.0f, 21.0f, 29.0f, 33.0f), paint);
            canvas.drawRoundRect(new android.graphics.RectF(26.0f, 26.0f, 30.0f, 46.0f), 2.0f, 2.0f, paint);
            canvas.drawOval(new android.graphics.RectF(39.0f, 21.0f, 48.0f, 33.0f), paint);
            canvas.drawRoundRect(new android.graphics.RectF(38.0f, 26.0f, 42.0f, 46.0f), 2.0f, 2.0f, paint);
            return;
        }
        canvas.drawRoundRect(new android.graphics.RectF(19.0f, 25.0f, 49.0f, 43.0f), 3.0f, 3.0f, paint);
        paint.setStrokeWidth(1.4f);
        for (int i2 = 0; i2 < 2; i2++) {
            for (int i3 = 0; i3 < 5; i3++) {
                canvas.drawPoint((i3 * 5) + 24, (i2 * 5) + 30, paint);
            }
        }
        canvas.drawLine(27.0f, 39.0f, 41.0f, 39.0f, paint);
    }

    private static void a(android.graphics.Canvas canvas, android.text.TextPaint textPaint, java.util.ArrayList<android.os.Bundle> arrayList, float f, float f2, boolean z) {
        int i;
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        int i2 = 0;
        if (arrayList == null) {
            i = 0;
        } else {
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            while (i3 < size) {
                android.os.Bundle bundle = arrayList.get(i3);
                i3++;
                android.os.Bundle bundle2 = bundle;
                if (bundle2.getBoolean("allDay")) {
                    i4++;
                } else {
                    arrayList2.add(bundle2);
                }
            }
            i = i4;
        }
        java.util.Collections.sort(arrayList2, new dev.duo.hookprobe.z.a());
        float f3 = z ? 74.0f : 80.0f;
        if (i > 0) {
            textPaint.setColor(-16087809);
            float f4 = f + 6.5f;
            canvas.drawCircle(f4, 82.0f, 6.5f, textPaint);
            android.graphics.Path path = new android.graphics.Path();
            for (int i5 = 0; i5 < 10; i5++) {
                double d = ((i5 * 3.141592653589793d) / 5.0d) - 1.5707963267948966d;
                float f5 = i5 % 2 == 0 ? 4.5f : 2.0f;
                float cos = (((float) java.lang.Math.cos(d)) * f5) + f4;
                float sin = (((float) java.lang.Math.sin(d)) * f5) + 82.0f;
                if (i5 == 0) {
                    path.moveTo(cos, sin);
                } else {
                    path.lineTo(cos, sin);
                }
            }
            path.close();
            textPaint.setColor(-1);
            canvas.drawPath(path, textPaint);
            b(canvas, textPaint, i + " 项全天日程", f + 17.0f, 86.0f, f2 - 17.0f, 12.0f, -15658735, c);
            f3 = 94.0f;
        }
        if (arrayList2.isEmpty()) {
            b(canvas, textPaint, z ? "明天没有其他日程" : "今天没有其他日程", f, i > 0 ? 112.0f : 98.0f, f2, 12.0f, -7303017, b);
            return;
        }
        android.graphics.Canvas canvas2 = canvas;
        android.text.TextPaint textPaint2 = textPaint;
        float f6 = f;
        int i6 = 65.0f + f3 <= 146.0f ? 2 : 1;
        int i7 = (arrayList2.size() <= i6 || i6 != 2) ? i6 : 1;
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("HH:mm", java.util.Locale.SIMPLIFIED_CHINESE);
        while (i2 < java.lang.Math.min(i7, arrayList2.size())) {
            android.os.Bundle bundle3 = (android.os.Bundle) arrayList2.get(i2);
            textPaint2.setColor((bundle3.getInt("color", z ? -5287202 : -47814) & 16777215) | (-16777216));
            int color = textPaint2.getColor();
            textPaint2.setColor(android.graphics.Color.rgb(255 - ((255 - android.graphics.Color.red(color)) / 12), 255 - ((255 - android.graphics.Color.green(color)) / 12), 255 - ((255 - android.graphics.Color.blue(color)) / 12)));
            float f7 = 30.0f + f3;
            canvas2.drawRoundRect(new android.graphics.RectF(f6, f3, f6 + f2, f7), 3.0f, 3.0f, textPaint2);
            textPaint2.setColor(color);
            canvas2.drawRect(f, f3, f + 2.0f, f7, textPaint2);
            float f8 = f3;
            float f9 = f + 6.0f;
            float f10 = f2 - 10.0f;
            b(canvas, textPaint, bundle3.getString("title", "未命名日程"), f9, f8 + 12.0f, f10, 11.0f, android.graphics.Color.rgb((android.graphics.Color.red(color) * 2) / 3, (android.graphics.Color.green(color) * 2) / 3, (android.graphics.Color.blue(color) * 2) / 3), c);
            textPaint2 = textPaint;
            b(canvas, textPaint2, simpleDateFormat.format(java.lang.Long.valueOf(bundle3.getLong("start"))) + "–" + simpleDateFormat.format(java.lang.Long.valueOf(bundle3.getLong("end"))), f9, f8 + 25.0f, f10, 11.0f, color, b);
            i2++;
            f3 = f8 + 35.0f;
            canvas2 = canvas;
            f6 = f;
        }
        float f11 = f3;
        if (arrayList2.size() > i7) {
            b(canvas, textPaint, "还有 " + (arrayList2.size() - i7) + " 项日程", f, f11 + 12.0f, f2, 11.0f, -7303017, b);
        }
    }

    private static void a(android.graphics.Canvas canvas, android.text.TextPaint textPaint, int i, boolean z, float f, float f2, float f3) {
        float f4;
        float f5;
        android.graphics.Canvas canvas2;
        android.text.TextPaint textPaint2;
        android.graphics.Canvas canvas3 = canvas;
        boolean z2 = (i >= 4 && i <= 6) || (i >= 8 && i <= 12) || i == 22 || i == 25;
        boolean z3 = i >= 13 && i <= 17;
        boolean z4 = i == 7;
        boolean z5 = i == 2 || i == 3 || (i >= 18 && i <= 21) || i == 23;
        canvas3.save();
        canvas3.translate(f, f2);
        float f6 = f3 / 24.0f;
        canvas3.scale(f6, f6);
        textPaint.setStyle(android.graphics.Paint.Style.FILL);
        float f7 = 5.0f;
        if (i == 0 || i == 1) {
            canvas3.save();
            if (i == 1) {
                canvas3.translate(-1.0f, -1.0f);
                canvas3.scale(0.78f, 0.78f);
            }
            if (z) {
                textPaint.setColor(-5187);
                android.graphics.Path path = new android.graphics.Path();
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
                textPaint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
                int i2 = 0;
                for (int i3 = 8; i2 < i3; i3 = i3) {
                    double d = (i2 * 3.141592653589793d) / 4.0d;
                    float cos = (float) java.lang.Math.cos(d);
                    float sin = (float) java.lang.Math.sin(d);
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
                    a(canvas, textPaint, "?", 12.0f, 20.0f, 24.0f, 22.0f, -1, a);
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
        canvas2.drawRoundRect(new android.graphics.RectF(4.0f, 12.0f, 21.0f, 16.0f), 2.0f, 2.0f, textPaint2);
        textPaint2.setStrokeWidth(1.7f);
        textPaint2.setStrokeCap(android.graphics.Paint.Cap.ROUND);
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
            android.graphics.Path path2 = new android.graphics.Path();
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

    private static void a(android.graphics.Canvas canvas, android.text.TextPaint textPaint, java.lang.String str, float f, float f2, float f3, float f4, int i, android.graphics.Typeface typeface) {
        textPaint.setTypeface(typeface);
        textPaint.setTextSize(f4);
        java.lang.String charSequence = android.text.TextUtils.ellipsize(str, textPaint, f3, android.text.TextUtils.TruncateAt.END).toString();
        b(canvas, textPaint, charSequence, f - (textPaint.measureText(charSequence) / 2.0f), f2, f3, f4, i, typeface);
    }

    private static void a(android.graphics.Canvas canvas, android.text.TextPaint textPaint, java.lang.String str, float f, float f2, float f3, int i) {
        java.lang.String replace = str.replace('\n', ' ').replace('\r', ' ');
        textPaint.setTypeface(b);
        textPaint.setTextSize(12.0f);
        for (int i2 = 0; i2 < 3 && !replace.isEmpty(); i2++) {
            int breakText = textPaint.breakText(replace, true, f3, null);
            if (breakText > 0 && breakText < replace.length() && java.lang.Character.isHighSurrogate(replace.charAt(breakText - 1))) {
                breakText--;
            }
            if (i2 == 2) {
                breakText = replace.length();
            }
            b(canvas, textPaint, replace.substring(0, breakText), f, f2 + (i2 * 17), f3, 12.0f, i, b);
            replace = replace.substring(breakText);
        }
    }
}
