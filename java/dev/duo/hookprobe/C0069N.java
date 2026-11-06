package dev.duo.hookprobe;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* renamed from: dev.duo.hookprobe.N */
/* loaded from: classes.dex */
public final class C0069N extends Drawable {

    /* renamed from: d */
    public static final int f1123d = -16268960;

    /* renamed from: e */
    public static final int f1124e = -15304705;

    /* renamed from: f */
    private static final float f1125f = 68.0f;

    /* renamed from: a */
    private final Paint f1126a;

    /* renamed from: b */
    private final Path f1127b;

    /* renamed from: c */
    private int f1128c;

    public C0069N(int i) {
        Paint paint = new Paint(1);
        this.f1126a = paint;
        this.f1127b = new Path();
        this.f1128c = 255;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setColor(i);
    }

    /* renamed from: a */
    public static C0069N m1198a(String str) {
        if ("wechat".equals(str)) {
            return new C0069N(f1123d);
        }
        if ("alipay".equals(str)) {
            return new C0069N(f1124e);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1126a.setAlpha(this.f1128c);
        canvas.drawPath(this.f1127b, this.f1126a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        float min = Math.min(rect.width(), rect.height()) / f1125f;
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        float f = 21.0f * min;
        float f2 = 11.0f * min;
        float f3 = 6.0f * min;
        float f4 = 14.0f * min;
        this.f1126a.setStrokeWidth(min * 4.5f);
        this.f1127b.rewind();
        int i = -1;
        while (true) {
            if (i > 1) {
                this.f1127b.moveTo(exactCenterX - f4, exactCenterY);
                this.f1127b.lineTo(exactCenterX + f4, exactCenterY);
                return;
            }
            int i2 = -1;
            for (int i3 = 1; i2 <= i3; i3 = 1) {
                float f5 = i;
                float f6 = (f5 * f) + exactCenterX;
                float f7 = i2;
                float f8 = f - f2;
                this.f1127b.moveTo(f6, exactCenterY + (f7 * f8));
                float f9 = f - f3;
                this.f1127b.lineTo(f6, exactCenterY + (f7 * f9));
                float f10 = (f7 * f) + exactCenterY;
                this.f1127b.quadTo(f6, f10, (f9 * f5) + exactCenterX, f10);
                this.f1127b.lineTo((f5 * f8) + exactCenterX, f10);
                i2 += 2;
            }
            i += 2;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1128c = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
