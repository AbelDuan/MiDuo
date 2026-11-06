package dev.duo.hookprobe;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;

/* renamed from: dev.duo.hookprobe.e */
/* loaded from: classes.dex */
final class BitmapRounder {
    private BitmapRounder() {
    }

    /* renamed from: a */
    static Bitmap m1593a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(854, 1329, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(0.0f, 0.0f);
        Paint paint = new Paint(3);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        float f = 854;
        float f2 = 1328;
        float m1589a = DeepLinks.m1589a(f, f2, bitmap.getWidth(), bitmap.getHeight());
        Matrix matrix = new Matrix();
        matrix.setScale(m1589a, m1589a);
        matrix.postTranslate((f - (bitmap.getWidth() * m1589a)) / 2.0f, (f2 - (bitmap.getHeight() * m1589a)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawPath(m1594a(DeepLinks.m1591a(f, f2, 56.0f)), paint);
        return createBitmap;
    }

    /* renamed from: a */
    private static Path m1594a(float[] fArr) {
        Path path = new Path();
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
