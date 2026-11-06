package dev.duo.hookprobe;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;

/* renamed from: dev.duo.hookprobe.e, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class e {
    private e() {
    }

    static Bitmap a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(854, 1329, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(0.0f, 0.0f);
        Paint paint = new Paint(3);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        float f = 854;
        float f2 = 1328;
        float a = d.a(f, f2, bitmap.getWidth(), bitmap.getHeight());
        Matrix matrix = new Matrix();
        matrix.setScale(a, a);
        matrix.postTranslate((f - (bitmap.getWidth() * a)) / 2.0f, (f2 - (bitmap.getHeight() * a)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawPath(a(d.a(f, f2, 56.0f)), paint);
        return createBitmap;
    }

    private static Path a(float[] fArr) {
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
