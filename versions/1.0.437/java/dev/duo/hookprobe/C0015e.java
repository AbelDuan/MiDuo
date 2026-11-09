package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0015e {
    private C0015e() {
    }

    static android.graphics.Bitmap a(android.graphics.Bitmap bitmap) {
        android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(854, 1329, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(createBitmap);
        canvas.translate(0.0f, 0.0f);
        android.graphics.Paint paint = new android.graphics.Paint(3);
        android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.CLAMP;
        android.graphics.BitmapShader bitmapShader = new android.graphics.BitmapShader(bitmap, tileMode, tileMode);
        float f = 854;
        float f2 = 1328;
        float a = dev.duo.hookprobe.C0014d.a(f, f2, bitmap.getWidth(), bitmap.getHeight());
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.setScale(a, a);
        matrix.postTranslate((f - (bitmap.getWidth() * a)) / 2.0f, (f2 - (bitmap.getHeight() * a)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawPath(a(dev.duo.hookprobe.C0014d.a(f, f2, 56.0f)), paint);
        return createBitmap;
    }

    private static android.graphics.Path a(float[] fArr) {
        android.graphics.Path path = new android.graphics.Path();
        int i = 0;
        while (i < fArr.length) {
            int i2 = (int) fArr[i];
            if (i2 == 0) {
                path.moveTo(fArr[i + 1], fArr[i + 2]);
                i += 3;
            } else if (i2 == 1) {
                path.lineTo(fArr[i + 1], fArr[i + 2]);
                i += 3;
            } else if (i2 != 3) {
                path.close();
                i++;
            } else {
                path.cubicTo(fArr[i + 1], fArr[i + 2], fArr[i + 3], fArr[i + 4], fArr[i + 5], fArr[i + 6]);
                i += 7;
            }
        }
        return path;
    }
}
