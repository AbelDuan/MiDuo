package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class N extends android.graphics.drawable.Drawable {
    public static final int d = -16268960;
    public static final int e = -15304705;
    private static final float f = 68.0f;
    private final android.graphics.Paint a;
    private final android.graphics.Path b;
    private int c;

    public N(int i) {
        android.graphics.Paint paint = new android.graphics.Paint(1);
        this.a = paint;
        this.b = new android.graphics.Path();
        this.c = 255;
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        paint.setColor(i);
    }

    public static dev.duo.hookprobe.N a(java.lang.String str) {
        if ("wechat".equals(str)) {
            return new dev.duo.hookprobe.N(d);
        }
        if ("alipay".equals(str)) {
            return new dev.duo.hookprobe.N(e);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        this.a.setAlpha(this.c);
        canvas.drawPath(this.b, this.a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(android.graphics.Rect rect) {
        float min = java.lang.Math.min(rect.width(), rect.height()) / f;
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        float f2 = 21.0f * min;
        float f3 = 11.0f * min;
        float f4 = 6.0f * min;
        float f5 = 14.0f * min;
        this.a.setStrokeWidth(min * 4.5f);
        this.b.rewind();
        int i = -1;
        while (true) {
            if (i > 1) {
                this.b.moveTo(exactCenterX - f5, exactCenterY);
                this.b.lineTo(exactCenterX + f5, exactCenterY);
                return;
            }
            int i2 = -1;
            for (int i3 = 1; i2 <= i3; i3 = 1) {
                float f6 = i;
                float f7 = (f6 * f2) + exactCenterX;
                float f8 = i2;
                float f9 = f2 - f3;
                this.b.moveTo(f7, exactCenterY + (f8 * f9));
                float f10 = f2 - f4;
                this.b.lineTo(f7, exactCenterY + (f8 * f10));
                float f11 = (f8 * f2) + exactCenterY;
                this.b.quadTo(f7, f11, (f10 * f6) + exactCenterX, f11);
                this.b.lineTo((f6 * f9) + exactCenterX, f11);
                i2 += 2;
            }
            i += 2;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.c = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
    }
}
